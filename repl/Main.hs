module Main where

import Control.Monad
import System.IO
import System.Console.Haskeline
import qualified Data.Text as T
import Text.Parsec (runParser, ParseError)
import Cb.Parser.Parser (ParserState(..), testParser)
import Cb.Syntax.Term
import Cb.Parser.Term

main :: IO ()
main = runInputT defaultSettings loop
loop :: InputT IO ()
loop = do
    input <- getInputLine "cb> "
    case input of
      Nothing -> return ()
      Just (':':cmd) -> outputStrLn $ show cmd
      Just input -> do
        outputStrLn $ "Input was: " ++ input
        outputStrLn $ process (T.pack input)
    loop

-- process :: T.Text -> String
process t = show $ runParser letExp (ParserState []) "REPL" t
