{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Haskii.Figlet.FLF
-- Description : Parser for FIGlet Fonts
-- Copyright   : (c) Maxime Augier, 2018
-- License     : BSD3
-- Maintainer  : max@xolus.net
-- Stability   : experimental
--
-- Loads and parses a FIGLet font.
module Haskii.Figlet.FLF
  ( load,
  )
where

import Control.Applicative
import Control.Arrow (first, second)
import Control.Monad (forM, guard, replicateM, replicateM_)
import Data.Attoparsec.Text as A
  ( (<?>),
    Parser,
    anyChar,
    char,
    decimal,
    endOfLine,
    hexadecimal,
    isEndOfLine,
    parseOnly,
    signed,
    skipSpace,
    skipWhile,
    takeTill,
    takeWhile1,
  )
import Data.Bits
import Data.Char (chr, ord)
import qualified Data.Map as M
import Data.Maybe (fromMaybe, isNothing)
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.IO as T
import Haskii.Figlet.Types
import Universum hiding (first, second)
import Prelude (span)

hdrInt :: Parser Int
hdrInt = skipSpace >> decimal

octal :: Parser Int
octal = T.foldl' step 0 `fmap` takeWhile1 isOctal
  where
    step a c = a * 8 + fromIntegral (ord c - ord '0')
    isOctal c = c >= '0' && c <= '7'

charCode :: Parser Int
charCode =
  signed
    ( ("0x" >> hexadecimal)
        <|> ("0" >> octal)
        <|> (decimal)
    )

skipLine :: Parser ()
skipLine = skipWhile (not . isEndOfLine) >> endOfLine

oldLayoutP :: Parser Mode
oldLayoutP = do
  skipSpace
  v <- signed decimal :: Parser Int
  return $ case v of
    -1 -> FullSize
    0 -> Kerning
    n ->
      Smushing
        [ rule | (c, rule) <- zip [1 ..] [EqualCharacter .. BigX], testBit n c
        ]

fullLayoutP :: Parser (Mode, Mode)
fullLayoutP = do
  skipSpace
  _ <- decimal :: Parser Int
  return (FullSize, FullSize) -- TODO Implement this

packLine :: [Maybe Char] -> (Text, Int)
packLine xs =
  let (front, rest) = span isNothing xs
      middle = T.pack . map (fromMaybe ' ') . reverse . dropWhile isNothing . reverse
   in (middle rest, length front)

readCharBlock :: Int -> Int -> Parser [Text]
readCharBlock height maxlen =
  do
    head0 <- (takeTill isEndOfLine <* endOfLine) <?> "first line"
    (first0, stop) <- case T.unsnoc head0 of
      Nothing -> fail "Empty line inside character"
      Just ok -> return ok
    guard (T.length first0 <= maxlen)
      <?> "Character too wide"
    let line = (A.takeTill (stop ==)) <* (char stop >> endOfLine)
    middle <-
      replicateM (height -2) line
        <?> "middle section"
    last0 <-
      (A.takeTill (stop ==) <* (char stop >> char stop >> endOfLine))
        <?> "final line"
    return $ first0 : middle ++ [last0]

translateCharBlock :: Char -> [Text] -> FigletChar
translateCharBlock hardblank = map (packLine . map (switchHardBlank hardblank) . T.unpack)

tagged :: Parser t -> Parser (Int, t)
tagged p = do
  code <- charCode
  skipLine
  cdata <- p
  return (code, cdata)

switchHardBlank :: Char -> Char -> Maybe Char
switchHardBlank _ ' ' = Nothing
switchHardBlank hb c
  | hb == c = Just ' '
  | otherwise = Just c

mandatoryChars :: String
mandatoryChars = map chr $ [32 .. 126] ++ [196, 214, 220, 228, 246, 252, 223]

flf :: Parser FLF
flf = do
  -- Header starts here
  _ <- ("flf2a" <|> "tlf2a") <?> "FLF magic"
  hb <- anyChar
  height <- hdrInt
  guard (height > 0)
    <?> "Invalid height value (must be > 0)"
  baseline0 <- hdrInt
  guard (baseline0 > 0 && baseline0 <= height)
    <?> "invalid baseline0 value (must be > 0, less than height)"
  maxlen <- hdrInt
  oldl <- oldLayoutP
  comments <- hdrInt
  direction <- optional hdrInt
  layout <- optional fullLayoutP
  cdtCount <- optional hdrInt
  skipLine
  -- skip comments section
  replicateM_ comments skipLine <?> "comment section"
  let rdc = readCharBlock height maxlen <?> "character"
  cdata <- forM mandatoryChars $ \c ->
    ((\r -> (c, r)) <$> rdc)
      <?> "Load character " ++ show c
  extra <- map (first chr) . filter ((> 0) . fst) <$> (many $ tagged rdc) <?> "extra characters"
  return $
    FLF
      baseline0
      oldl
      direction
      layout
      cdtCount
      (M.fromList . map (second (translateCharBlock hb)) $ cdata ++ extra)

-- | Loads a font from an .flf file
load :: FilePath -> IO (Either String FLF)
load = (parseOnly flf <$>) . T.readFile
