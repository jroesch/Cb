module Cb.Parser.LanguageDef (cflat) where

import Cb.Parser.Parser
import Text.Parsec
import Text.Parsec.Token
import Text.Parsec.Language
import Data.Functor.Identity
import Data.Text (Text)

cbStyle :: GenLanguageDef Text ParserState Identity
cbStyle = emptyDef
   { commentStart   = "{-"
   , commentEnd     = "-}"
   , commentLine    = "--"
   , nestedComments = True
   , identStart     = letter
   , identLetter  = alphaNum <|> oneOf "_'"
   , opStart  = opLetter cbStyle
   , opLetter   = oneOf ":!#$%&*+./<=>?@\\^|-~"
   , reservedOpNames= []
   , reservedNames  = []
   , caseSensitive  = True
   }

-- | The language definition for the language Cb.
cflatDef :: GenLanguageDef Text ParserState Identity
cflatDef = cbStyle
    { reservedOpNames= [":","..","=","\\","|","<-","->","@","~","=>"]
    , reservedNames  = ["let","in","case","of","if","then","else",
                        "data","type",
                        "class","default","deriving","do","import",
                        "infix","infixl","infixr","instance","module",
                        "newtype","where",
                        "primitive", "foreign","import","export",
                        "forall"
                        -- "as","qualified","hiding"
                      ]
    }

cflat :: GenTokenParser Text ParserState Identity
cflat = makeTokenParser cflatDef

