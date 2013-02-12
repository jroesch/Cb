{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer

-- parser produced by Happy Version 1.18.10

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

action_0 (17) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 (5) = happyGoto action_9
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 _ = happyFail

action_1 (17) = happyShift action_5
action_1 (18) = happyShift action_6
action_1 (19) = happyShift action_7
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 _ = happyFail

action_2 (17) = happyShift action_5
action_2 (18) = happyShift action_6
action_2 (19) = happyShift action_7
action_2 (4) = happyGoto action_10
action_2 (5) = happyGoto action_9
action_2 (6) = happyGoto action_3
action_2 (7) = happyGoto action_4
action_2 _ = happyFail

action_3 _ = happyReduce_4

action_4 _ = happyReduce_3

action_5 (27) = happyShift action_12
action_5 (15) = happyGoto action_14
action_5 _ = happyFail

action_6 (27) = happyShift action_13
action_6 _ = happyFail

action_7 (27) = happyShift action_12
action_7 (15) = happyGoto action_11
action_7 _ = happyFail

action_8 (41) = happyAccept
action_8 _ = happyFail

action_9 (17) = happyShift action_5
action_9 (18) = happyShift action_6
action_9 (19) = happyShift action_7
action_9 (4) = happyGoto action_10
action_9 (5) = happyGoto action_9
action_9 (6) = happyGoto action_3
action_9 (7) = happyGoto action_4
action_9 _ = happyReduce_2

action_10 _ = happyReduce_1

action_11 (32) = happyShift action_20
action_11 _ = happyFail

action_12 (29) = happyShift action_18
action_12 (39) = happyShift action_19
action_12 _ = happyReduce_30

action_13 (31) = happyShift action_16
action_13 (35) = happyShift action_17
action_13 _ = happyFail

action_14 (37) = happyShift action_15
action_14 _ = happyFail

action_15 (21) = happyShift action_25
action_15 (27) = happyShift action_26
action_15 (9) = happyGoto action_28
action_15 (13) = happyGoto action_29
action_15 _ = happyFail

action_16 (27) = happyShift action_12
action_16 (15) = happyGoto action_27
action_16 _ = happyFail

action_17 (21) = happyShift action_25
action_17 (27) = happyShift action_26
action_17 (8) = happyGoto action_23
action_17 (13) = happyGoto action_24
action_17 _ = happyFail

action_18 _ = happyReduce_29

action_19 (27) = happyShift action_22
action_19 _ = happyFail

action_20 (27) = happyShift action_12
action_20 (15) = happyGoto action_21
action_20 _ = happyFail

action_21 _ = happyReduce_6

action_22 (40) = happyShift action_38
action_22 _ = happyFail

action_23 (36) = happyShift action_37
action_23 _ = happyFail

action_24 (30) = happyShift action_36
action_24 _ = happyReduce_10

action_25 (27) = happyShift action_35
action_25 _ = happyFail

action_26 (31) = happyShift action_34
action_26 _ = happyFail

action_27 (37) = happyShift action_33
action_27 (10) = happyGoto action_32
action_27 _ = happyFail

action_28 (38) = happyShift action_31
action_28 _ = happyFail

action_29 (34) = happyShift action_30
action_29 _ = happyFail

action_30 (21) = happyShift action_25
action_30 (27) = happyShift action_26
action_30 (9) = happyGoto action_55
action_30 (13) = happyGoto action_29
action_30 _ = happyReduce_12

action_31 _ = happyReduce_5

action_32 _ = happyReduce_8

action_33 (20) = happyShift action_47
action_33 (22) = happyShift action_48
action_33 (24) = happyShift action_49
action_33 (25) = happyShift action_50
action_33 (26) = happyShift action_51
action_33 (27) = happyShift action_52
action_33 (28) = happyShift action_53
action_33 (38) = happyShift action_54
action_33 (11) = happyGoto action_43
action_33 (12) = happyGoto action_44
action_33 (14) = happyGoto action_45
action_33 (16) = happyGoto action_46
action_33 _ = happyFail

action_34 (27) = happyShift action_12
action_34 (15) = happyGoto action_42
action_34 _ = happyFail

action_35 (31) = happyShift action_41
action_35 _ = happyFail

action_36 (21) = happyShift action_25
action_36 (27) = happyShift action_26
action_36 (8) = happyGoto action_40
action_36 (13) = happyGoto action_24
action_36 _ = happyFail

action_37 (31) = happyShift action_39
action_37 _ = happyFail

action_38 _ = happyReduce_28

action_39 (27) = happyShift action_12
action_39 (15) = happyGoto action_64
action_39 _ = happyFail

action_40 _ = happyReduce_9

action_41 (27) = happyShift action_12
action_41 (15) = happyGoto action_63
action_41 _ = happyFail

action_42 _ = happyReduce_24

action_43 (38) = happyShift action_62
action_43 _ = happyFail

action_44 (34) = happyShift action_61
action_44 _ = happyFail

action_45 (33) = happyShift action_60
action_45 _ = happyReduce_22

action_46 _ = happyReduce_23

action_47 (21) = happyShift action_25
action_47 (27) = happyShift action_26
action_47 (13) = happyGoto action_59
action_47 _ = happyFail

action_48 (35) = happyShift action_58
action_48 _ = happyFail

action_49 (20) = happyShift action_47
action_49 (22) = happyShift action_48
action_49 (24) = happyShift action_49
action_49 (25) = happyShift action_50
action_49 (26) = happyShift action_51
action_49 (27) = happyShift action_52
action_49 (28) = happyShift action_53
action_49 (12) = happyGoto action_57
action_49 (14) = happyGoto action_45
action_49 (16) = happyGoto action_46
action_49 _ = happyFail

action_50 _ = happyReduce_31

action_51 _ = happyReduce_32

action_52 (29) = happyShift action_56
action_52 _ = happyReduce_26

action_53 _ = happyReduce_33

action_54 _ = happyReduce_14

action_55 _ = happyReduce_11

action_56 _ = happyReduce_27

action_57 _ = happyReduce_21

action_58 (20) = happyShift action_47
action_58 (22) = happyShift action_48
action_58 (24) = happyShift action_49
action_58 (25) = happyShift action_50
action_58 (26) = happyShift action_51
action_58 (27) = happyShift action_52
action_58 (28) = happyShift action_53
action_58 (12) = happyGoto action_69
action_58 (14) = happyGoto action_45
action_58 (16) = happyGoto action_46
action_58 _ = happyFail

action_59 (32) = happyShift action_68
action_59 _ = happyFail

action_60 (20) = happyShift action_47
action_60 (22) = happyShift action_48
action_60 (24) = happyShift action_49
action_60 (25) = happyShift action_50
action_60 (26) = happyShift action_51
action_60 (27) = happyShift action_52
action_60 (28) = happyShift action_53
action_60 (12) = happyGoto action_67
action_60 (14) = happyGoto action_45
action_60 (16) = happyGoto action_46
action_60 _ = happyFail

action_61 (20) = happyShift action_47
action_61 (22) = happyShift action_48
action_61 (24) = happyShift action_49
action_61 (25) = happyShift action_50
action_61 (26) = happyShift action_51
action_61 (27) = happyShift action_52
action_61 (28) = happyShift action_53
action_61 (11) = happyGoto action_66
action_61 (12) = happyGoto action_44
action_61 (14) = happyGoto action_45
action_61 (16) = happyGoto action_46
action_61 _ = happyReduce_16

action_62 _ = happyReduce_13

action_63 _ = happyReduce_25

action_64 (37) = happyShift action_33
action_64 (10) = happyGoto action_65
action_64 _ = happyFail

action_65 _ = happyReduce_7

action_66 _ = happyReduce_15

action_67 _ = happyReduce_20

action_68 (20) = happyShift action_47
action_68 (22) = happyShift action_48
action_68 (24) = happyShift action_49
action_68 (25) = happyShift action_50
action_68 (26) = happyShift action_51
action_68 (27) = happyShift action_52
action_68 (28) = happyShift action_53
action_68 (12) = happyGoto action_71
action_68 (14) = happyGoto action_45
action_68 (16) = happyGoto action_46
action_68 _ = happyFail

action_69 (36) = happyShift action_70
action_69 _ = happyFail

action_70 (37) = happyShift action_72
action_70 _ = happyFail

action_71 _ = happyReduce_19

action_72 (20) = happyShift action_47
action_72 (22) = happyShift action_48
action_72 (24) = happyShift action_49
action_72 (25) = happyShift action_50
action_72 (26) = happyShift action_51
action_72 (27) = happyShift action_52
action_72 (28) = happyShift action_53
action_72 (12) = happyGoto action_73
action_72 (14) = happyGoto action_45
action_72 (16) = happyGoto action_46
action_72 _ = happyFail

action_73 (38) = happyShift action_74
action_73 _ = happyFail

action_74 (23) = happyShift action_75
action_74 _ = happyReduce_18

action_75 (37) = happyShift action_76
action_75 _ = happyFail

action_76 (20) = happyShift action_47
action_76 (22) = happyShift action_48
action_76 (24) = happyShift action_49
action_76 (25) = happyShift action_50
action_76 (26) = happyShift action_51
action_76 (27) = happyShift action_52
action_76 (28) = happyShift action_53
action_76 (12) = happyGoto action_77
action_76 (14) = happyGoto action_45
action_76 (16) = happyGoto action_46
action_76 _ = happyFail

action_77 (38) = happyShift action_78
action_77 _ = happyFail

action_78 _ = happyReduce_17

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1:happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (TDFn   happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (TDData happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happyReduce 5 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Data happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Data (TypeAlias happy_var_2 happy_var_4) []
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 8 7 happyReduction_7
happyReduction_7 ((HappyAbsSyn10  happy_var_8) `HappyStk`
	(HappyAbsSyn15  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (NAry happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 5 7 happyReduction_8
happyReduction_8 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (NullAry happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  8 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 : happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  9 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 : happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  9 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  10 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  10 happyReduction_14
happyReduction_14 _
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_15 = happySpecReduce_3  11 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1:happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  11 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 11 12 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (EIf happy_var_3 happy_var_6 (Just happy_var_10)
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 7 12 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (EIf happy_var_3 happy_var_6 Nothing
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 12 happyReduction_19
happyReduction_19 ((HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (EVar (Var happy_var_2 happy_var_4)
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  12 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn12
		 (EVarUp happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  12 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (EReturn happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn12
		 (EVarId  happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn12
		 (EV  happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (TIdent  happy_var_1))
	 =  HappyAbsSyn13
		 (Decl happy_var_1 happy_var_3 Immutable
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 13 happyReduction_25
happyReduction_25 ((HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Decl happy_var_2 happy_var_4 Mutable
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  14 happyReduction_26
happyReduction_26 (HappyTerminal (TIdent  happy_var_1))
	 =  HappyAbsSyn14
		 (VarId happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  14 happyReduction_27
happyReduction_27 _
	(HappyTerminal (TIdent  happy_var_1))
	 =  HappyAbsSyn14
		 (VarId happy_var_1
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 15 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyTerminal (TIdent  happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent  happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ParamType happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_2  15 happyReduction_29
happyReduction_29 _
	(HappyTerminal (TIdent  happy_var_1))
	 =  HappyAbsSyn15
		 (PrimType  happy_var_1
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  15 happyReduction_30
happyReduction_30 (HappyTerminal (TIdent  happy_var_1))
	 =  HappyAbsSyn15
		 (Type      happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  16 happyReduction_31
happyReduction_31 (HappyTerminal (TInt    happy_var_1))
	 =  HappyAbsSyn16
		 (VInt    happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  16 happyReduction_32
happyReduction_32 (HappyTerminal (TDouble happy_var_1))
	 =  HappyAbsSyn16
		 (VDouble happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  16 happyReduction_33
happyReduction_33 (HappyTerminal (TString happy_var_1))
	 =  HappyAbsSyn16
		 (VString happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 41 41 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TData -> cont 17;
	TFn -> cont 18;
	TType -> cont 19;
	TLet -> cont 20;
	TMut -> cont 21;
	TIf -> cont 22;
	TElse -> cont 23;
	TReturn -> cont 24;
	TInt    happy_dollar_dollar -> cont 25;
	TDouble happy_dollar_dollar -> cont 26;
	TIdent  happy_dollar_dollar -> cont 27;
	TString happy_dollar_dollar -> cont 28;
	TMagicHash -> cont 29;
	TComma -> cont 30;
	TColon -> cont 31;
	TEq -> cont 32;
	TLArr -> cont 33;
	TSemiColon -> cont 34;
	TParenO -> cont 35;
	TParenC -> cont 36;
	TCurlyBraceO -> cont 37;
	TCurlyBraceC -> cont 38;
	TSqBracketO -> cont 39;
	TSqBracketC -> cont 40;
	_ -> happyError' (tk:tks)
	}

happyError_ 41 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => E a -> (a -> E b) -> E b
happyThen = (thenE)
happyReturn :: () => a -> E a
happyReturn = (returnE)
happyThen1 m k tks = (thenE) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> E a
happyReturn1 = \a tks -> (returnE) a
happyError' :: () => [(Token)] -> E a
happyError' = parseError

parse tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- NEED BETTER ERRORS!!!
data E a = Ok a | Failed String deriving (Show, Eq)

thenE :: E a -> (a -> E b) -> E b
m `thenE` k =
   case m of
       Ok a -> k a
       Failed e -> Failed e
   
returnE :: a -> E a
returnE a = Ok a

failE :: String -> E a
failE err = Failed err

catchE :: E a -> (String -> E a) -> E a
catchE m k =
   case m of
      Ok a -> Ok a
      Failed e -> k e

parseError tokens = failE "Parse Error"

type TyName = String 
type TyVar  = String 

type TransUnit = [TopDecl]

data TopDecl = TDFn   Fn 
             | TDData Data
             deriving (Show, Eq)

data Fn = NAry String [Decl] Type Block
        | NullAry String Type Block 
        deriving (Show, Eq)

data Type = Type TyName 
          | PrimType TyName 
          | ParamType TyName TyVar
          | TypeAlias Type Type
          deriving (Show, Eq)
          
data Data = Data Type [Decl] deriving (Show, Eq) 

type Block = [Expr]

data Expr  = EIf Expr Expr (Maybe Expr)
           | EV Value
           | EData Data
           | EVar  Var
           | EVarId VarId
           | EVarUp VarId Expr 
           | EReturn Expr
           deriving (Show, Eq)
 
data VarId = VarId String 
           deriving (Show, Eq)
          
data Var = Var Decl Expr 
         deriving (Show, Eq)
    
data Decl = Decl String Type Mut 
             deriving (Show, Eq)

data Mut = Mutable 
         | Immutable 
         deriving (Show, Eq)
         
data Value = VInt Int 
           | VDouble Double 
           | VString String 
           | VBool   Bool 
           deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates/GenericTemplate.hs" #-}








{-# LINE 51 "templates/GenericTemplate.hs" #-}

{-# LINE 61 "templates/GenericTemplate.hs" #-}

{-# LINE 70 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 312 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
