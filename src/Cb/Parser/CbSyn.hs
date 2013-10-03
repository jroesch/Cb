module Cb.CbSyn where

{- data CbSyn = CbLet2 [CbBind]
           | CbId String
           | CbEq
           | CbWhere
           | CbExp
           deriving (Show, Eq) -}

data CbModule = CbModule [CbDecl] deriving (Show, Eq)

data CbBind = FunBind CbId CbExpr 
            -- | PatBind
            deriving (Show, Eq)

data CbDecl = Decl 
  deriving (Show, Eq)

data CbExpr = CbVar
            | CbLam
            | CbApp
            | OpApp
            | NegApp
            | CbPar
            | SectionL
            | SectionR
            | CbTuple
            | CbCase
            | CbIf
            | CbLet [CbBind] CbExpr
            | CbDo
            | Sequence
            | CbUnit
            | CbLit CbLit
            deriving (Show, Eq)

data CbLit = CbInteger Integer 
           | CbDouble Double
           deriving (Show, Eq)

type CbPat = ()
type CbId = String
data CbType = CbType