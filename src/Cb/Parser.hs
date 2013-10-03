{-# LANGUAGE OverloadedStrings #-}
module Cb.Parser where
  
import Cb.CbSyn
import Control.Monad.State.Strict
import Data.Text.Internal (Text)
import Text.Parsec as P hiding (Parser)
import Text.Parsec (try)
import Text.Parsec.Text ()
import Data.Word
import Data.Functor.Identity
import Control.Monad.Trans.Class
import Text.Parsec.Token as T
import Text.Parsec.Language
import Control.Applicative ((<*), (*>), (<*>))
import Debug.Trace

data ParserState = ParserState { layoutContexts :: [Int] }

pushContext :: Int -> ParserState -> Parser ()
pushContext i (ParserState layoutContexts) = putState $ ParserState $ i:layoutContexts

popContext :: Parser Int
popContext = do
  st @ (ParserState (c:cs)) <- getState
  putState $ ParserState cs
  return c

{- popContext :: Parser Int
popContext  i (ParserState top:layoutContexts) = ParserState $ layoutContexts

currenContext :: ParserState -> ParserState -}

getContext :: Parser Int
getContext = do
  ParserState (c:_) <- getState
  return c

type Parser a = P.ParsecT Text ParserState Identity a

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

identifier :: Parser String
identifier = T.identifier cflat

operator :: Parser String
operator = T.operator cflat

integer :: Parser CbLit
integer = T.integer cflat >>= return . CbInteger

float :: Parser CbLit
float = T.float cflat >>= return . CbDouble

testParser p i = case P.runParser p (ParserState []) "TESTING" i of
  Right a -> a
  Left  e -> error $ show e

skipSpaces :: Parser ()
skipSpaces = optional $ skipMany1 space

isHSpace :: Char -> Bool
isHSpace c = c == ' ' || c == '\t'

skipHSpaces :: Parser ()
skipHSpaces = optional $ skipMany1 (satisfy isHSpace)

expression :: Parser CbExpr
expression = letExp <|> ((Cb.Parser.integer <|> Cb.Parser.float) >>= return . CbLit)

typeName :: Parser String 
typeName = do
  skipHSpaces
  s <- upper
  rs <- many1 alphaNum
  return $ s:rs

tpe :: Parser CbType
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
    Just wb -> return Placeholder

letExp :: Parser CbExpr
letExp = do
  string "let"
  xs <- withLayout binding
  maybeE <- optionMaybe $ string "in" *> expression  
  return $ CbLet xs $ case maybeE of {
      Nothing -> CbUnit;
      Just v -> v;
  }

whereBinding :: Parser CbSyn
whereBinding = do
  string "where"
  r <- withLayout binding
  return CbWhere

binding :: Parser CbBind
binding = do
  id <- (Cb.Parser.identifier)
  char '=' <* skipHSpaces
  e <- expression
  return $ FunBind id e

inLayout :: Parser Bool
inLayout = do
  ParserState xs <- getState
  return $ case xs of
    []     -> False
    (0:xs) -> False
    _      -> True 

-- type Layout = ()
-- type LayoutParser a = Layout -> Parser a
withLayout :: Parser a -> Parser [a]
withLayout parser = do
  skipHSpaces
  (eatChar '{' *> disableLayout <|> enableLayout)
  xs <- sepEndBy (ensureIdentation *> parser) sep
  inL <- inLayout
  (if not inL
    then eatChar '}'
    else skipHSpaces) <* endLayout
  return xs where 
    sep = do
      ctx <- getContext
      if ctx == 0
        then skipSpaces >> (char ';') >> skipSpaces
        else skipSpaces
        
disableLayout = do
  skipHSpaces
  ps <- getState
  pushContext 0 ps

enableLayout = do
  skipHSpaces
  spos <- getPosition
  ps <- getState
  pushContext (sourceColumn spos) ps

ensureIdentation = do
  spos <- getPosition
  -- trace (show spos) $ return ()
  ctx <- getContext
  -- trace (show [sourceColumn spos, ctx]) $ return ()
  if (ctx /= 0 && (sourceColumn spos) /= ctx)
    then {- trace "indentation fail" $ -} return ()
    else return ()

endLayout = popContext

eatChar :: Char -> Parser ()
eatChar c = (char c >> skipHSpaces)








