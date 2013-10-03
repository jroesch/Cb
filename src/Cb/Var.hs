module Cb.Var where

data Literal = Literal ()

type Id = Var
data Var = TyVar
         | Id String Type
         deriving (Show, Eq)