module Cb.Var where

data Literal = IntLiteral
             | DoubleLiteral
             | StringLiteral
             | CharLiteral
             deriving (Show, Eq)

type Id = Var
data Var = Id String Type
         deriving (Show, Eq)