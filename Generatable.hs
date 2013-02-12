{-# LANGUAGE FlexibleInstances #-}
module Generatable where 
    
import Parser
import Data.List (intersperse)

class Generatable a where
    genCode :: a -> String 

type Name = String
type Params = String

fn :: Name -> Params -> String -> String -> String
fn n ps rtype body = 
    rtype ++ " " ++ n ++ " (" ++ ps ++ ") " ++ body

primify :: String -> String
primify t = take ((length t) - 1) t
instance Generatable Data where
    genCode _ = "DataType"
    
instance Generatable Fn where
    genCode (NAry n ps rtype body) 
        = fn (genCode n) (genCode ps) (genCode rtype) (genCode body)
    genCode (NullAry n rtype body) = "null function!"
 
instance Generatable Decl where
    genCode (Decl id typ _) =
         (genCode typ) ++ " " ++ id
         
instance Generatable (([]) Decl) where
    genCode = foldl (++) "" . intersperse ", " . map genCode   
    
instance Generatable Type where
    genCode (Type      tyname) = tyname 
    genCode (PrimType  tyname) = primify tyname 
    genCode (ParamType _ _) = "(Can't handle this yet)"
     
instance Generatable String where
    genCode = id
    
instance Generatable Block where
    genCode exps = "{\n" ++ (foldl (++) "" $ (flip (++)) [";\n"]  $ intersperse ";\n" $ map genCode exps) ++ "}\n"

instance Generatable Expr where 
    genCode (EReturn expr) = "return " ++ (genCode expr) 
    genCode _ = "Expr\n"
    
