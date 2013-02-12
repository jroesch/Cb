{
module Lexer (lexIt, Token(..)) where
    
import System.IO
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$graphic = $printable # $white
@ident  = [a-zA-Z_]+[a-zA-Z0-9_]*
@string = \" ($graphic # \")* \" 

tokens :-
  
  $white+                ;
  "--".*                 ;
  data                   { \s -> TData            }
  type                   { \s -> TType            }
  if                     { \s -> TIf              }
  true                   { \s -> TTrue            }
  false                  { \s -> TFalse           }
  else                   { \s -> TElse            }
  let                    { \s -> TLet             }
  mut                    { \s -> TMut             }
  fn                     { \s -> TFn              }
  return                 { \s -> TReturn          }
  @ident                 { \s -> TIdent s         }
  "-"*$digit+            { \s -> TInt (read s)    }
  "-"*$digit+"."$digit+  { \s -> TDouble (read s) }
  @string                { \s -> TString s        }
  "["                    { \s -> TSqBracketO      }
  "]"                    { \s -> TSqBracketC      }
  ","                    { \s -> TComma           }
  "{"                    { \s -> TCurlyBraceO     }
  "}"                    { \s -> TCurlyBraceC     }
  ":"                    { \s -> TColon           }
  ";"                    { \s -> TSemiColon       }
  "("                    { \s -> TParenO          }
  ")"                    { \s -> TParenC          }
  "="                    { \s -> TEq              }
  "<-"                   { \s -> TLArr            }
  "#"                    { \a -> TMagicHash       }
  -- ">"                
  -- "<"
{
  
data Token = TData
           | TType
           | TInt Int
           | TDouble Double
           | TString String
           | TSqBracketO
           | TSqBracketC 
           | TIdent String
           | TComma 
           | TCurlyBraceO
           | TCurlyBraceC
           | TColon 
           | TSemiColon 
           | TParenO
           | TParenC
           | TIf
           | TElse 
           | TTrue 
           | TFalse
           | TEq
           | TLArr
           | TLet
           | TMut
           | TFn
           | TReturn 
           | TMagicHash
           deriving (Show, Eq)
             
  
lexIt = alexScanTokens

}