module Cb.Syntax.Id where

import Cb.Syntax.Type

data Id = Id String Type
         deriving (Show) -- Eq)
