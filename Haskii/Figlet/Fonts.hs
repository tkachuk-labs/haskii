{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Haskii.Figlet.Fonts where

import qualified Haskii.Figlet.TH as TH

$(TH.mkFLFs)
