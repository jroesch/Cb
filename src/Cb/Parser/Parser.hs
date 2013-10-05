{-# LANGUAGE OverloadedStrings #-}
module Cb.Parser.Parser where

import Control.Monad.State.Strict
import Data.Text.Internal (Text)
import Text.Parsec as P hiding (Parser)
import Text.Parsec (try)
import Text.Parsec.Text ()
import Data.Word
import Data.Functor.Identity
import Control.Monad.Trans.Class
import Control.Applicative ((<*), (*>), (<*>))
import Debug.Trace

data ParserState = ParserState { layoutContexts :: [Int] }
type Parser a = P.ParsecT Text ParserState Identity a

testParser p i = case P.runParser p (ParserState []) "TESTING" i of
  Right a -> a
  Left  e -> error $ show e

skipSpaces :: Parser ()
skipSpaces = optional $ skipMany1 space

isHSpace :: Char -> Bool
isHSpace c = c == ' ' || c == '\t'

skipHSpaces :: Parser ()
skipHSpaces = optional $ skipMany1 (satisfy isHSpace)

eatChar :: Char -> Parser ()
eatChar c = (char c >> skipHSpaces)






