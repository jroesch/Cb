{-# LANGUAGE DeriveFunctor #-}
module Cb.Syntax.Term where

import Cb.Syntax.Literal
import Cb.Syntax.Binding
import Data.Foldable
import Data.Traversable
import GHC.Generics

data SimpleTerm
    = Lit Literal
    | Tuple Int
    deriving (Eq, Show) -- , Generic)

unit :: SimpleTerm
unit = Tuple 0

data BindingType t
  = Explicit t
  | Implicit
  deriving (Eq, Show) -- Functor, Foldable, Traversable, Generic

data Term t a
  = Var a
  | App !(Term t a) !(Term t a)
  | SimpleTerm !SimpleTerm
  -- | Sig !(Term t a) t
  -- | Lam [Pattern t] !(Scope PatPath (Term t) a)
  -- | Case !(Term t a) [Alt t (Term t) a]
  -- | Let [Binding t a] !(Scope Int (Term t) a)
  | Let [Binding t a]
  -- | Loc !Rendering !(Term t a) -- ^ informational link to the location the term came from
  -- | Remember !Int !(Term t a) -- ^ Used to provide hole support.
  deriving (Show) -- Functor, Foldable, Traversable)
