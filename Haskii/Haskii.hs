{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE Safe #-}

-- |
-- Module      : Haskii
-- Description : Haskell Ascii Art
-- Copyright   : (c) Maxime Augier, 2018
-- License     : BSD3
-- Maintainer  : max@xolus.net
-- Stability   : experimental
--
-- The main, backend-agnostig Haskii module
module Haskii
  ( -- * The Render monad
    Render (),
    move,
    drawAt,
    fromChunks,
    toChunks,
    oneOf,

    -- * Performing rendering
    renderChunks,
    printChunks,

    -- * Drawing primitives
    moveDown,
    moveLeft,
    moveRight,
    moveUp,
    block,
    centered,
    line,
    transparent,
    transparentWith,
    shadow,

    -- * Various kinds of boxes
    BoundingBox,
    edge,
    box,
    styledBox,
    edged,
    boxed,
    boundingBox,
    atBoundingBox,
    cutout,
    (<||>),
    (<-->),
    (<~>),
  )
where

import Control.Applicative
import Control.Monad.Writer
import qualified Data.IntMap as IM
import Data.List.NonEmpty (nonEmpty)
import Data.Maybe (fromMaybe)
import Data.Semigroup (Max (..), Min (..), sconcat)
import Data.String
import Haskii.Internal.RangeMap (pad)
import Haskii.Types
import Prelude hiding (length)

-- | Move the cursor location by a relative location
move ::
  -- | A (y,x) pair. y is the vertical axis (pointing down), x the horizontal one (pointing right)
  (Int, Int) ->
  Render ()
move (y, x) = Render (tell (Sum y, Sum x))

-- | Shortcuts for moving along a single axis
moveDown, moveRight, moveLeft, moveUp :: Int -> Render ()
moveDown y = move (y, 0)
moveRight x = move (0, x)
moveLeft = moveRight . negate
moveUp = moveDown . negate

-- | Equivalent to
--
-- > move (y,x) >> return t
drawAt :: (Int, Int) -> t -> Render t
drawAt (y, x) t = Render (writer (t, (Sum y, Sum x)))

-- | Combine several objects for rendering. Equivalent to:
--
-- > foldMap return
--
-- Examples:
--
-- >>> renderChunks $ oneOf [1,2,3,4] >>= (\x -> move(x,x)) >>  return "hello"
-- [[" ","hello"],["  ","hello"],["   ","hello"],["    ","hello"]]
--
-- >>> printChunks $ oneOf [1,2,3,4] >>= (\x -> move(x,x)) >>  return "hello"
--  hello
--   hello
--    hello
--     hello
oneOf :: [t] -> Render t
oneOf = foldMap return

-- | Draw a path across several points.
-- The given coordinates are always relative to the current position.
-- It can only draw horizontal, vertical, or diagonal lines. It is up to the caller
-- to ensure that contiguous points in the list are properly aligned.
--
-- >>> printChunks $ line [(0,0),(5,5),(5,10),(3,10),(3,0)]
-- +
--  \
--   \
-- +---------+
--     \     |
--      +----+
line :: IsString t => [(Int, Int)] -> Render t
line [] = mempty
line [p] = "+" <$ move p
line ((y, x) : (r@((y', x') : _))) = (move (y, x) >> ("+" <|> drawSegment (y' - y) (x' - x))) <|> line r

drawSegment :: IsString t => Int -> Int -> Render t
drawSegment 0 0 = mempty
drawSegment 0 x
  | x > 0 = drawAt (0, 1) . fromString $ replicate (x -1) '-'
  | x < 0 = moveRight x >> drawSegment 0 (- x)
drawSegment y 0
  | y > 0 = oneOf [1 .. (y -1)] >>= moveDown >> "|"
  | y < 0 = moveDown y >> drawSegment (- y) 0
drawSegment x y
  | y < 0 = move (x, y) >> drawSegment (- x) (- y)
  | x == y = oneOf [1 .. (y -1)] >>= (\y0 -> move (y0, y0)) >> "\\"
  | x == - y = oneOf [1 .. (y -1)] >>= (\y0 -> move (y0, - y0)) >> "/"
  | otherwise = error $ show (x, y) ++ " is not a supported direction for line segments"

-- | Makes a multiline block, going one step down after each line.
--
-- >>> printChunks $ (move (2,2) >> block ["Hello","Haskell","World","!"])
-- <BLANKLINE>
-- <BLANKLINE>
--   Hello
--   Haskell
--   World
--   !
block :: [t] -> Render t
block xs = mconcat [drawAt (line0, 0) x | (line0, x) <- zip [0 ..] xs]

-- | For a single text of chunk of a known length, center it around the current location
--
-- >>> printChunks $ moveRight 8 >> block [ "Hello", "Haskell", "World!", ":)"] >>= centered
--       Hello
--      Haskell
--       World!
--         :)
centered :: Sliceable t => Render t -> Render t
centered t = let ((y1, x1), (y2, x2)) = boundingBox t in move ((y1 - y2) `div` 2, (x1 - x2) `div` 2) >> t

shadow :: (t -> t) -> t -> Render t
shadow style contents = (drawAt (-1, -1) $ style contents) <> return contents

type BoundingBox = ((Int, Int), (Int, Int))

-- | Computes the bounding box of a Render
--
-- >>> boundingBox $ move (100, 100) >> block ["Hello","World"]
-- ((100,100),(102,105))
boundingBox :: Sliceable t => Render t -> BoundingBox
boundingBox = fromMaybe ((0, 0), (0, 0)) . fmap boundaries . nonEmpty . toChunks
  where
    boundaries chunks =
      let (Min ymin, Min xmin, Max ymax, Max xmax) =
            sconcat . fmap (\(t, (y, x)) -> (Min y, Min x, Max (y + 1), Max (x + length t))) $ chunks
       in ((ymin, xmin), (ymax, xmax))

-- | Draw different types of configurable shapes at a boundingbox
atBoundingBox :: (Sliceable t) => (BoundingBox -> Render t) -> Render t -> Render t
atBoundingBox f t = t <> f (boundingBox t)

-- | Juxtapose two renders horizontally, such that their bounding boxes are touching
(<||>) :: Sliceable t => Render t -> Render t -> Render t
a <||> b = a <> (move (0, snd . snd . boundingBox $ a) >> b)

-- | Juxtapose two renders vertically
(<-->) :: Sliceable t => Render t -> Render t -> Render t
a <--> b = a <> (move (fst . snd . boundingBox $ a, 0) >> b)

-- | Kern two renders
(<~>) :: Sliceable t => Render t -> Render t -> Render t
a <~> b = a <> (move (0, x) >> b)
  where
    leftBorder = IM.fromListWith (<>) [(y, Max (x0 + length t)) | (t, (y, x0)) <- toChunks a]
    rightBorder = IM.fromListWith (<>) [(y, Min x0) | (_, (y, x0)) <- toChunks b]
    Max x = mconcat . map snd . IM.toList $ IM.intersectionWith (\(Max l) (Min r) -> Max (l - r)) leftBorder rightBorder

-- | Draw a hollow square
edge :: (IsString t) => BoundingBox -> Render t
edge ((y1, x1), (y2, x2)) = line [(y1 -1, x1 -1), (y1 -1, x2), (y2, x2), (y2, x1 -1), (y1 -1, x1 -1)]

-- | Draw a solid box
box :: (IsString t) => BoundingBox -> Render t
box = styledBox ["+-+", "| |", "+-+"]

-- | Draw a solid box, with a given arbirary style
--
-- >>> printChunks $ styledBox ["/-+","|.|","+-/"] ((2,2),(6,6))
-- <BLANKLINE>
--  /----+
--  |....|
--  |....|
--  |....|
--  |....|
--  +----/
styledBox :: (IsString t) => [String] -> BoundingBox -> Render t
styledBox
  [[a, b, c], [d, e, f], [g, h, i]]
  ((y1, x1), (y2, x2)) =
    mconcat
      ( [(drawAt (y1 -1, x1') bar)]
          ++ [drawAt (y, x1') mid | y <- [y1 .. (y2 -1)]]
          ++ [(drawAt (y2, x1') low)]
      )
    where
      x1' = x1 - 1
      bar = fromString $ a : replicate (x2 - x1) b ++ [c]
      mid = fromString $ d : replicate (x2 - x1) e ++ [f]
      low = fromString $ g : replicate (x2 - x1) h ++ [i]
styledBox x y =
  error $ "StyledBox error " <> show x <> " and " <> show y

-- | Draw a render with a solid edge around.
--
--
-- >>> printChunks $ edged ((move (4,7) >> edged (edged (return "Haskell"))) <> (move (2,2) >> edged (return "Hello")))
-- +---------------+
-- |+-----+        |
-- ||Hello|-------+|
-- |+-----+------+||
-- |    ||Haskell|||
-- |    |+-------+||
-- |    +---------+|
-- +---------------+
edged :: (IsString t, Sliceable t) => Render t -> Render t
edged t = atBoundingBox edge t <> t

-- | Draw a solid box under the render
--
-- >>> printChunks $ line [(0,0),(12,12)] <> boxed  ( drawAt (8,2) "Hello" <> drawAt (3,6) "World")
-- +
--  \
--  +---------+
--  |    World|
--  |         |
--  |         |
--  |         |
--  |         |
--  |Hello    |
--  +---------+
--           \
--            \
--             +
boxed :: (IsString t, Sliceable t) => Render t -> Render t
boxed t = atBoundingBox box t <> t

-- | Split a chunk in order to remove transparent parts matching a predicate.
--
-- >>> printChunks $ pure "__________________________" <> transparent "    Hello World ! !  :)"
-- ____Hello_World_!_!__:)___
transparent :: (Transparent t, Blank (Elem t)) => t -> Render t
transparent = transparentWith isBlank

-- | Same as `transparent`, but with an arbitrary predicate on the element type
transparentWith :: Transparent t => (Elem t -> Bool) -> t -> Render t
transparentWith pred0 = fromChunks . map snd . filter fst . tagTrans pred0

tagTrans :: Transparent t => (Elem t -> Bool) -> t -> [(Bool, (t, (Int, Int)))]
tagTrans pred0 = tagTrans' 0
  where
    tagTrans' a xs =
      let (blanks, rest) = breakTransparent (not . pred0) xs
          (nonBlanks, rest') = breakTransparent pred0 rest
          skip = length blanks
          nbl = length nonBlanks
          blankChunk = (False, (blanks, (0, a)))
          nonBlankChunk = (True, (nonBlanks, (0, a + skip)))
          rec = tagTrans' (a + skip + nbl) rest'
       in case (skip > 0, nbl > 0) of
            (False, False) -> []
            (True, False) -> blankChunk : rec
            (False, True) -> nonBlankChunk : rec
            (True, True) -> blankChunk : nonBlankChunk : rec

-- | Cut out the transparent pieces off the edge
cutout :: Transparent t => (Elem t -> Bool) -> t -> Render t
cutout pred0 = fromChunks . map snd . trimEdges . tagTrans pred0
  where
    trimEdges = reverse . dropWhile (not . fst) . reverse . dropWhile (not . fst)

-- | Actually performs the rendering, by slicing and padding the chunks in the Render
-- to output lists of contiguous chunks
--
-- >>> renderChunks $ (drawAt (3,3) "------------") <> (drawAt (3,5) "Hello") <> (drawAt (1,1) "test")
-- [[" ","test"],[],["   ","--","Hello","-----"]]
renderChunks :: Paddable t => Render t -> [[t]]
renderChunks object = paddedScreen 0 lineBuffer
  where
    inputLines = [(y, [(x, r)]) | (r, (Sum y, Sum x)) <- (runWriterT . runRender) object]
    lineBuffer = IM.toList . IM.map pad . IM.fromListWith (++) $ inputLines
    paddedScreen _ [] = []
    paddedScreen y ((y', l) : rest) = replicate (y' - y) [] ++ (l : paddedScreen (y' + 1) rest)

-- | A shortcut to write a Render String directly to stdout
printChunks :: Render String -> IO ()
printChunks = mapM_ (putStrLn . concat) . renderChunks
{-
 -  Koch's curve demo
 -
 -  fractal n mix = return x <|> (choice [(-n,0),(0,n),(n,0),(0,-n)] >>= move >> return (mix x) )
 -  colorPrint8 $ move (20,20) >> fractal 1 (fore red) "*" >>= fractal 3 (fore green) >>= fractal 9 (fore blue)
 -
 -}
