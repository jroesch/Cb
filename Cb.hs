{-# LANGUAGE FlexibleInstances #-}
module Main where
    
import Lexer
import Parser
import Generatable
import System.IO   
import Control.Monad (liftM)
import System.Environment (getArgs)
    

main = do args <- getArgs
          let fname = args !! 0
              typ   = args !! 1
              trans | typ == "-lex"   = mshow . lexFile 
                    | typ == "-parse" = mshow . parseFile 
                    | otherwise = \x -> return "failed."
          res <- trans fname
          putStrLn res

mshow :: (Show a) => IO a -> IO String 
mshow = liftM show

lexFile :: FilePath -> IO [Token]
lexFile f = do handle <- openFile f ReadMode
               contents <- hGetContents handle
               return $ lexIt contents 
               
--tryCode :: String -> String
tryCode = parse . lexIt

parseFile :: FilePath -> IO [TopDecl]
parseFile f = do handle <- openFile f ReadMode
                 contents <- hGetContents handle
                 return $ case tryCode contents of
                            Ok code  -> code
                            Failed s -> error s