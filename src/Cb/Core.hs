module Cb.Core where

data Expr b 
  = Var   Id
  | Lit   Literal
  | App   (Expr b) (Arg b)
  | Lam   b (Expr b)
  | Let   (Bind b) (Expr b)
  -- | Case  (Expr b) b Type [Alt b]       -- See #case_invariant#
  -- | Cast  (Expr b) Coercion
  -- | Tick  (Tickish Id) (Expr b)
  | Type  Type
  -- | Coercion Coercion
  deriving (Data, Typeable)

type Arg b = Expr b
type Alt b = (AltCon, [b], Expr b)

-- data AltCon = DataAlt DataCon | LitAlt  Literal | DEFAULT

data Bind b = NonRec b (Expr b) | Rec [(b, (Expr b))]

compileExpr :: Expr b -> Text
compileExpr e = undefined