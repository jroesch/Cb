{
module Parser where

import Lexer 
}

%monad { E } { thenE } { returnE }

%name parse
%tokentype { Token }
%error     { parseError }


%token
    data   { TData        }
    fn     { TFn          }
    type   { TType        }
    let    { TLet         }
    mut    { TMut         }
    if     { TIf          }
    else   { TElse        }
    return { TReturn      }
    Int    { TInt    $$   }
    Double { TDouble $$   }
    id     { TIdent  $$   }
    String { TString $$   }
    '#'    { TMagicHash   }
    ','    { TComma       }
    ':'    { TColon       }
    '='    { TEq          }
    rarr   { TLArr        }
    ';'    { TSemiColon   }
    '('    { TParenO      }
    ')'    { TParenC      }    
    '{'    { TCurlyBraceO }
    '}'    { TCurlyBraceC }
    '['    { TSqBracketO  }
    ']'    { TSqBracketC  }
    
%%

-- Required Braces right now to reduce learning curve in using Happy 
-- if with else doesn't work right now
TransUnit : TopDecl TransUnit   { $1:$2 }
          | TopDecl             { [$1]  }
          
TopDecl : Fn   { TDFn   $1  }
        | Data { TDData $1  }
      
Data  : data Type '{' DeclList '}'              { Data $2 $4 }
      | type Type '=' Type                      { Data (TypeAlias $2 $4) [] }

Fn    : fn id '(' ParamList ')' ':' Type Block  { NAry $2 $4 $7 $8 }
      | fn id ':' Type Block                    { NullAry $2 $4 $5}
      
ParamList : Decl ',' ParamList  { $1 : $3 }
          | Decl                { [$1]    }
        
DeclList : Decl ';' DeclList { $1 : $3 }
         | Decl ';'          { [$1]    }  

Block : '{' ExprList '}'    { $2         }
      | '{' '}'             { []         }

ExprList : Expr ';' ExprList   { $1:$3 }
         | Expr ';'            { [$1]  }
         
Expr  : if '(' Expr ')' '{' Expr '}' else '{' Expr '}'   { EIf $3 $6 (Just $10) }
      | if '(' Expr ')' '{' Expr '}'                     { EIf $3 $6 Nothing    }
      | let Decl '=' Expr                                { EVar (Var $2 $4)     }
      | VarId rarr Expr                                  { EVarUp $1 $3         }  
      | return Expr                                      { EReturn $2           }
      | VarId                                            { EVarId  $1           }
      | Value                                            { EV  $1               }
          
Decl : id ':' Type     { Decl $1 $3 Immutable }
     | mut id ':' Type { Decl $2 $4 Mutable   }
     
VarId : id                                               { VarId $1 }
      | id '#'                                           { VarId $1 }

Type  : id '[' id ']' { ParamType $1 $3 } 
      | id '#'        { PrimType  $1    }
      | id            { Type      $1    }
      
      
Value : Int       { VInt    $1 }
      | Double    { VDouble $1 }
      | String    { VString $1 }
         
      
{
-- NEED BETTER ERRORS!!!
data E a = Ok a | Failed String deriving (Show, Eq)

thenE :: E a -> (a -> E b) -> E b
m `thenE` k =
   case m of
       Ok a -> k a
       Failed e -> Failed e
   
returnE :: a -> E a
returnE a = Ok a

failE :: String -> E a
failE err = Failed err

catchE :: E a -> (String -> E a) -> E a
catchE m k =
   case m of
      Ok a -> Ok a
      Failed e -> k e

parseError tokens = failE "Parse Error"

type TyName = String 
type TyVar  = String 

type TransUnit = [TopDecl]

data TopDecl = TDFn   Fn 
             | TDData Data
             deriving (Show, Eq)

data Fn = NAry String [Decl] Type Block
        | NullAry String Type Block 
        deriving (Show, Eq)

data Type = Type TyName 
          | PrimType TyName 
          | ParamType TyName TyVar
          | TypeAlias Type Type
          deriving (Show, Eq)
          
data Data = Data Type [Decl] deriving (Show, Eq) 

type Block = [Expr]

data Expr  = EIf Expr Expr (Maybe Expr)
           | EV Value
           | EData Data
           | EVar  Var
           | EVarId VarId
           | EVarUp VarId Expr 
           | EReturn Expr
           deriving (Show, Eq)
 
data VarId = VarId String 
           deriving (Show, Eq)
          
data Var = Var Decl Expr 
         deriving (Show, Eq)
    
data Decl = Decl String Type Mut 
             deriving (Show, Eq)

data Mut = Mutable 
         | Immutable 
         deriving (Show, Eq)
         
data Value = VInt Int 
           | VDouble Double 
           | VString String 
           | VBool   Bool 
           deriving (Show, Eq)

}