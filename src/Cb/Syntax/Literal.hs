{-# LANGUAGE DeriveDataTypeable #-}
module Cb.Syntax.Literal 
  ( Literal(..)
  ) where

import Data.Int
import Data.Text (Text)
import Data.Data
import Data.Typeable
import GHC.Generics

data Literal
  = Int    !Int32
  | Long   !Int64
  | Byte   !Int8
  | Short  !Int16
  | String Text
  | Char   !Char
  | Float  !Float
  | Double !Double
  deriving (Eq, Ord, Show, Read, Data, Typeable) --, Generic)

