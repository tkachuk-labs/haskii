{-# OPTIONS_GHC -Wno-missing-export-lists #-}

-- |
--
-- Module      : Haskii.Internal.Pair
-- Description : Pair functor
-- Copyright   : (c) Maxime Augier, 2018
-- License     : BSD3
-- Maintainer  : max@xolus.net
-- Stability   : experimental
--
-- This exists only so that we can use the lens in `Rainbow` to implement
-- transparency without breaking color support
module Haskii.Internal.Pair where

import Universum

newtype Pair a = Pair {getPair :: (a, a)}

instance Functor Pair where
  fmap f (Pair (a, a')) = Pair (f a, f a')
