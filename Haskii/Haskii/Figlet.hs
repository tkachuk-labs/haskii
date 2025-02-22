-- |
-- Module      : Haskii.Figlet
-- Description : FIGlet Renderer
-- Copyright   : (c) Maxime Augier, 2018
-- License     : BSD3
-- Maintainer  : max@xolus.net
-- Stability   : experimental
--
-- A native Haskell implementation that can read .flf files
-- and generate Figlet text inside a Render monad
module Haskii.Figlet
  ( CharMap,
    Mode (..),
    FigletChar,
    SmushRule,
    horizontalRules,
    load,
    figLetter,
    figString,
  )
where

import Control.Monad (guard)
import qualified Data.Map as M
import Data.Monoid (mempty)
import Data.Text (Text)
import Haskii
import Haskii.Figlet.FLF
import Haskii.Figlet.Types
import Haskii.Text ()
import Universum

-- | Draw a single character at a given location.
-- The height of the character is adjusted according to the
-- baseline information contained in the font. The current
-- positon determines the baseline of the character, not its
-- upper left corner.
figLetter :: FLF -> Char -> Render Text
figLetter font char = case M.lookup char $ charData font of
  Nothing -> mempty
  Just ts -> move (- baseline font, 0)
    >> oneOf (zip [0 ..] ts)
    >>= \(y, (t, x)) ->
      drawAt (y, x) t
        >>= transparent

-- | Draw a string. For now we only support Full Width rendering.
figString :: FLF -> String -> Render Text
figString font = fig'
  where
    fl = figLetter font
    fig' [] = mempty
    fig' (c : cs) = fl c <||> fig' cs

horizontalRules :: [ApplySmush]
horizontalRules =
  [ equalCharacter,
    underscore,
    hierarchy,
    opposite,
    bigX,
    horizontal
  ]

equalCharacter :: ApplySmush
equalCharacter a b
  | a == b = Just a
  | otherwise = Nothing

underscore :: ApplySmush
underscore '-' x
  | x `elem` ("|/\\[]{}()<>" :: String) = Just x
  | otherwise = Nothing
underscore _ _ = error "underscore error"

hierarchy :: ApplySmush
hierarchy a b = do
  a' :: Integer <- classmap a
  b' <- classmap b
  guard (a' /= b')
  return $ if a' > b' then a else b
  where
    classmap '|' = Just 1
    classmap '/' = Just 2
    classmap '\\' = Just 2
    classmap '[' = Just 3
    classmap ']' = Just 3
    classmap '{' = Just 4
    classmap '}' = Just 4
    classmap '(' = Just 5
    classmap ')' = Just 5
    classmap '<' = Just 6
    classmap '>' = Just 6
    classmap _ = Nothing

opposite :: ApplySmush
opposite a b | a > b = opposite b a
opposite '[' ']' = Just '|'
opposite '{' '}' = Just '|'
opposite '(' ')' = Just '|'
opposite '_' '-' = Nothing
opposite _ _ = error "opposite error"

bigX :: ApplySmush
bigX '/' '\\' = Just '|'
bigX '\\' '/' = Just 'Y'
bigX '>' '<' = Just 'X'
bigX _ _ = error "bigX error"

horizontal :: ApplySmush
horizontal '-' '_' = Just '='
horizontal '_' '-' = Just '='
horizontal _ _ = Nothing
