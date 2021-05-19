{-# LANGUAGE TemplateHaskell #-}

module Haskii.Figlet.TH
  ( mkFLFs,
  )
where

import Data.List.Extra (nubOrdOn)
import qualified Data.Text as T
import qualified Haskii.Figlet.FLF as FLF
import Haskii.Figlet.Types (FLF)
import Language.Haskell.TH.Syntax
import System.Directory (removeFile)
import System.Directory.Tree
  ( AnchoredDirTree (..),
    DirTree (..),
    readDirectory,
  )
import qualified System.FilePath.Posix as F
import qualified Text.Casing as T
import Universum hiding (lift)

data FLFData
  = FLFData Name FLF
  deriving (Show)

dir :: String
dir = "figlet-fonts"

parseFLFs :: IO [Maybe FLFData]
parseFLFs = do
  dt0 <- readDirectory $ "./" <> dir
  dt1 <- case dirTree dt0 of
    Dir {name = x, contents = xs} | x == dir -> pure xs
    e -> nuke e
  mapM
    ( \case
        File {name = x} -> parseFLFData x
        e -> nuke e
    )
    dt1
  where
    nuke e = fail $ "Unexpected DirTree " <> show e

parseFLFData :: String -> IO (Maybe FLFData)
parseFLFData file0 =
  this `catch` \(e :: SomeException) -> do
    putStrLn $ fileName <> " ==> removing because " <> show e
    removeFile fileName
    pure Nothing
  where
    fileName = F.joinPath ["./", dir, file0]
    this = do
      res <- FLF.load fileName
      case res of
        Left e -> do
          putStrLn $ fileName <> " ==> removing because " <> e
          removeFile fileName
          pure Nothing
        Right x ->
          pure . Just $
            FLFData
              ( mkName . T.camel
                  . T.unpack
                  . T.replace " " "-"
                  . T.pack
                  . F.dropExtension
                  $ file0
              )
              x

mkFLFs :: Q [Dec]
mkFLFs = do
  flfs <- liftIO parseFLFs
  concat
    <$> mapM
      ( \(FLFData label flf) ->
          [d|
            $(pure $ VarP label) = $(lift flf)
            |]
      )
      ( nubOrdOn (\(FLFData x _) -> x) $
          catMaybes flfs
      )
