module Cb.Parser.Term where

import Cb.Parser.Parser
import Cb.Parser.Literal
import Cb.Parser.Layout (withLayout)
import Cb.Syntax.Term as Term
import Cb.Syntax.Binding
import Cb.Syntax.Literal
import Text.Parsec
import Data.Text (Text)
import Control.Applicative ((<$>), (<*), (*>), (<*>))

type Tm = Term Ann Text

type Ann = () -- Annot (Maybe Text) Text
type Typ = () -- Type (Maybe Text) Text

term :: Parser Tm
term = literal

literal :: Parser Tm
literal = SimpleTerm . Lit 
  -- <$> identifier 
  <$> (integer 
  <|> float)

{- typeName :: Parser String 
typeName = do
  skipHSpaces
  s <- upper
  rs <- many1 alphaNum
  return $ s:rs

tpe :: Parser Term
tpe = do
  id <- Cb.Parser.identifier
  char ':'
  str <- typeName
  return CbType

decl :: Parser CbDecl
decl = do
  id <- Cb.Parser.identifier
  char '=' <* skipHSpaces
  e <- expression
  skipSpaces
  owb <- optionMaybe whereBinding
  case owb of
    Nothing -> return Placeholder
    Just wb -> return Placeholder -}

letExp :: Parser Tm
letExp = do
  string "let"
  xs <- withLayout binding
  maybeE <- optionMaybe $ string "in" *> term  
  return $ Term.Let [Binding ()] 
  
{- case maybeE of {
      Nothing -> [Binding ()]; -- SimpleTerm Term.unit;
      Just v -> [Binding ()]; -- v;
  } -}

{- whereBinding :: Parser CbSyn
whereBinding = do
  string "where"
  r <- withLayout binding
  return CbWhere -}

binding :: Parser (Binding Ann Text)
binding = do
  id <- identifier
  char '=' <* skipHSpaces
  e <- term
  return $ Binding ()

