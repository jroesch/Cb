module Cb.Parser.Layout where

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
import Cb.Parser.Parser

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

pushContext :: Int -> ParserState -> Parser ()
pushContext i (ParserState layoutContexts) = putState $ ParserState $ i:layoutContexts

popContext :: Parser Int
popContext = do
  st @ (ParserState (c:cs)) <- getState
  putState $ ParserState cs
  return c

getContext :: Parser Int
getContext = do
  ParserState (c:_) <- getState
  return c

enableLayout = do
  skipHSpaces
  spos <- getPosition
  ps <- getState
  pushContext (sourceColumn spos) ps

disableLayout = do
  skipHSpaces
  ps <- getState
  pushContext 0 ps

inLayout :: Parser Bool
inLayout = do
  ParserState xs <- getState
  return $ case xs of
    []     -> False
    (0:xs) -> False
    _      -> True 

ensureIdentation = do
  spos <- getPosition
  -- trace (show spos) $ return ()
  ctx <- getContext
  -- trace (show [sourceColumn spos, ctx]) $ return ()
  if (ctx /= 0 && (sourceColumn spos) /= ctx)
    then {- trace "indentation fail" $ -} return ()
    else return ()

endLayout = popContext


