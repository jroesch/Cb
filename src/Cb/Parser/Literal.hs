module Cb.Parser.Literal
  ( identifier 
  , integer
  , float
  ) where

import Cb.Parser.Parser
import qualified Cb.Parser.LanguageDef as L
import Cb.Syntax.Literal
import qualified Text.Parsec.Token as T

identifier :: Parser String
identifier = T.identifier L.cflat

-- operator :: Parser String
-- operator = L.operator L.cflat

-- need to support overloaded literals 
integer :: Parser Literal
integer = T.integer L.cflat >>= return . Int . fromIntegral

float :: Parser Literal
float = T.float L.cflat >>= return . Double



