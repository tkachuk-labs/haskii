{- This file was auto-generated by the haskii-exe program. -}
{-# LANGUAGE NoImplicitPrelude #-}

module Haskii.Figlet.Font.Pawp (
        getFLF
    ) where
import Universum
import Haskii.Figlet.Types
import Data.Map
getFLF :: FLF
getFLF = FLF {baseline = 6, oldLayout = Smushing [], printDirection = Nothing, fullLayout = Nothing, codetagCount = Nothing, charData = fromList [(' ',[("   ",0),("   ",0),("   ",0),("   ",0),("   ",0),("   ",0),("   ",0),("   ",0),("   ",0)]),('!',[("_",1),("(_)",0),("(_)",0),("(_)",0),("(_)",0),("_",1),("(_)",0),("",3),("",3)]),('"',[("         ",0),("  _   _  ",0),(" (_) (_) ",0),(" (_) (_) ",0),("         ",0),("         ",0),("         ",0),("         ",0),("         ",0)]),('#',[("",13),("_   _",4),("__(_)_(_)__",1),("(___________)",0),("__(_)_(_)__",1),("(___________)",0),("(_) (_)",3),("",13),("",13)]),('$',[("_",4),("_( )",2),("(_)(_)",1),("(_)_ (_)",0),("_(_) _",1),("( )  ( )",0),("(_)(_)",1),("(_)",3),("",8)]),('%',[("",11),("_       _",1),("(_)    _(_)",0),("_(_)",5),("_(_)",3),("_(_)    _",1),("(_)     (_)",0),("",11),("",11)]),('&',[("",10),("_____",1),("(_____)",0),("(_)_(_) _",0),("(____)(_)",1),("( _)__(_)",0),("(____)(_)",1),("",10),("",10)]),('\'',[("   ",0),(" _ ",0),("( )",0),("() ",0),("   ",0),("   ",0),("   ",0),("   ",0),("   ",0)]),('(',[("",5),("__",2),("(__)",1),("(__)",0),("(_)",0),("(__)",0),("(__)",1),("",5),("",5)]),(')',[("",5),("__",1),("(__)",0),("(__)",1),("(_)",2),("(__)",1),("(__)",0),("",5),("",5)]),('*',[("",13),("_       _",2),("(_)_   _(_)",1),("__(_)_(_)__",1),("(___________)",0),("_(_) (_)_",2),("(_)     (_)",1),("",13),("",13)]),('+',[("",9),("",9),("_",4),("__(_)__",1),("(_______)",0),("(_)",3),("",9),("",9),("",9)]),(',',[("   ",0),("   ",0),("   ",0),("   ",0),("   ",0),(" _ ",0),("( )",0),("() ",0),("   ",0)]),('-',[("",8),("",8),("",8),("______",1),("(______)",0),("",8),("",8),("",8),("",8)]),('.',[("   ",0),("   ",0),("   ",0),("   ",0),("   ",0),(" _ ",0),("(_)",0),("   ",0),("   ",0)]),('/',[("",11),("_",9),("_(_)",7),("_(_)",5),("_(_)",3),("_(_)",1),("(_)",0),("",11),("",11)]),('0',[("",8),("____",2),("(____)",1),("(_)  (_)",0),("(_)  (_)",0),("(_)__(_)",0),("(____)",1),("",8),("",8)]),('1',[("",6),("___",2),("(___)",1),("(_)(_)",0),("(_)",3),("(_)",3),("(_)",3),("",6),("",6)]),('2',[("",9),("____",3),("_(____)",1),("(_) _(_)",0),("_(_)",2),("(_)___",1),("(______)",0),("",9),("",9)]),('3',[("",8),("____",2),("(____)",1),("(_) _(_)",0),("_ (__)",1),("(_)__(_)",0),("(____)",1),("",8),("",8)]),('4',[("",10),("_    _",1),("(_)  (_)",0),("(_)__(_)_",0),("(________)",0),("(_)",5),("(_)",5),("",10),("",10)]),('5',[("",8),("_____",1),("(_____)",0),("(_)___",0),("(_____)",0),("____(_)",1),("(_____)",0),("",8),("",8)]),('6',[("",9),("_____",2),("(_____)",1),("(_)___",0),("(_____)_",0),("(_)___(_)",0),("(_____)",1),("",9),("",9)]),('7',[("",9),("_______",1),("(_______)",0),("_(_)",4),("_(_)",2),("(_)",1),("(_)",0),("",9),("",9)]),('8',[("",9),("_____",2),("(_____)",1),("(_)___(_)",0),("(_____)",1),("(_)___(_)",0),("(_____)",1),("",9),("",9)]),('9',[("",9),("_____",2),("(_____)",1),("(_)___(_)",0),("(_____)",1),("(_)",4),("(_)",3),("",9),("",9)]),(':',[("   ",0),("   ",0),("   ",0),(" _ ",0),("(_)",0),(" _ ",0),("(_)",0),("   ",0),("   ",0)]),(';',[("   ",0),("   ",0),("   ",0),(" _ ",0),("(_)",0),(" _ ",0),("( )",0),("() ",0),("   ",0)]),('<',[("",7),("_",5),("_(_)",3),("_(_)",1),("(_)_",0),("(_)_",2),("(_)",4),("",7),("",7)]),('=',[("",9),("",9),("_______",1),("(_______)",0),("_______",1),("(_______)",0),("",9),("",9),("",9)]),('>',[("",7),("_",1),("(_)_",0),("(_)_",2),("_(_)",3),("_(_)",1),("(_)",0),("",7),("",7)]),('?',[("__",3),("_(__)_",1),("(_)  (_)",0),("(_)",4),("(_)",3),("_",4),("(_)",3),("",8),("",8)]),('@',[("",10),("__",4),("_(__)_",2),("(_) _(_)",1),("(_) (___)",0),("(_)____",1),("(____)",3),("",10),("",10)]),('A',[("",9),("_____",2),("(_____)",1),("(_)___(_)",0),("(_______)",0),("(_)   (_)",0),("(_)   (_)",0),("",9),("",9)]),('B',[("",8),("_____",1),("(_____)",0),("(_)__(_)",0),("(_____)",0),("(_)__(_)",0),("(_____)",0),("",8),("",8)]),('C',[("",9),("___",3),("_(___)_",1),("(_)   (_)",0),("(_)    _",0),("(_)___(_)",0),("(___)",2),("",9),("",9)]),('D',[("",8),("_____",1),("(_____)",0),("(_)  (_)",0),("(_)  (_)",0),("(_)__(_)",0),("(_____)",0),("",8),("",8)]),('E',[("",8),("______",1),("(______)",0),("(_)__",0),("(____)",0),("(_)____",0),("(______)",0),("",8),("",8)]),('F',[("",8),("______",1),("(______)",0),("(_)__",0),("(____)",0),("(_)",0),("(_)",0),("",8),("",8)]),('G',[("",9),("_____",2),("(_____)",1),("(_)  ___",0),("(_) (___)",0),("(_)___(_)",0),("(_____)",1),("",9),("",9)]),('H',[("",9),("_     _",1),("(_)   (_)",0),("(_)___(_)",0),("(_______)",0),("(_)   (_)",0),("(_)   (_)",0),("",9),("",9)]),('I',[("",9),("_______",1),("(_______)",0),("(_)",3),("(_)",3),("__(_)__",1),("(_______)",0),("",9),("",9)]),('J',[("",9),("______",1),("(______)",0),("(_)",5),("_   (_)",1),("( )__(_)",0),("(____)",1),("",9),("",9)]),('K',[("",9),("_    _",1),("(_)  (_)",0),("(_)_(_)",0),("(____)",0),("(_) (_)",0),("(_)  (_)",0),("",9),("",9)]),('L',[("",9),("_",1),("(_)",0),("(_)",0),("(_)",0),("(_)____",0),("(______)",0),("",9),("",9)]),('M',[("",11),("__   __",2),("(__)_(__)",1),("(_) (_) (_)",0),("(_) (_) (_)",0),("(_)     (_)",0),("(_)     (_)",0),("",11),("",11)]),('N',[("",9),("_     _",1),("(_)   (_)",0),("(__)_ (_)",0),("(_)(_)(_)",0),("(_)  (__)",0),("(_)   (_)",0),("",9),("",9)]),('O',[("",10),("_____",2),("(_____)",1),("(_)   (_)",0),("(_)   (_)",0),("(_)___(_)",0),("(_____)",1),("",10),("",10)]),('P',[("",9),("_____",1),("(_____)",0),("(_)__(_)",0),("(_____)",0),("(_)",0),("(_)",0),("",9),("",9)]),('Q',[("",10),("_____",2),("(_____)",1),("(_)   (_)",0),("(_)   (_)",0),("(_)___(_)",0),("(___(__)",1),("(_)",7),("",10)]),('R',[("",8),("_____",1),("(_____)",0),("(_)__(_)",0),("(_____)",0),("( ) ( )",0),("(_)  (_)",0),("",8),("",8)]),('S',[("",9),("_____",2),("(_____)",1),("(_)___",0),("(___)_",2),("____(_)",2),("(_____)",1),("",9),("",9)]),('T',[("",9),("_______",1),("(__ _ __)",0),("(_)",3),("(_)",3),("(_)",3),("(_)",3),("",9),("",9)]),('U',[("",9),("_     _",1),("(_)   (_)",0),("(_)   (_)",0),("(_)   (_)",0),("(_)___(_)",0),("(_____)",1),("",9),("",9)]),('V',[("",9),("_     _",1),("(_)   (_)",0),("(_)   (_)",0),("(_)   (_)",0),("(_)_(_)",1),("(___)",2),("",9),("",9)]),('W',[("",11),("_       _",1),("(_)  _  (_)",0),("(_) (_) (_)",0),("(_) (_) (_)",0),("(_)_(_)_(_)",0),("(__) (__)",1),("",11),("",11)]),('X',[("",9),("_     _",1),("( )   ( )",0),("(_)_(_)",1),("(___)",2),("(_) (_)",1),("(_)   (_)",0),("",9),("",9)]),('Y',[("",9),("_     _",1),("(_)   (_)",0),("(_)_(_)",1),("(_)",3),("(_)",3),("(_)",3),("",9),("",9)]),('Z',[("",9),("_______",1),("(_______)",0),("_(_)",4),("_(_)",2),("(_)____",1),("(_______)",0),("",9),("",9)]),('[',[("",5),("___",1),("(___)",0),("(_)",0),("(_)",0),("(_)_",0),("(___)",0),("",5),("",5)]),('\\',[("",12),("_",1),("(_)_",0),("(_)_",2),("(_)_",4),("(_)_",6),("(_)",8),("",12),("",12)]),(']',[("",5),("___",1),("(___)",0),("(_)",2),("(_)",2),("_(_)",1),("(___)",0),("",5),("",5)]),('^',[("   _   ",0),("  (_)  ",0),(" (___) ",0),("(_) (_)",0),("       ",0),("       ",0),("       ",0),("       ",0),("       ",0)]),('_',[("       ",1),("       ",1),("       ",1),("       ",1),("       ",1),("       ",1),("       ",1),("_______",1),("(_______)",0)]),('`',[("   ",0),(" _ ",0),("( )",0),(" ()",0),("   ",0),("   ",0),("   ",0),("   ",0),("   ",0)]),('a',[("",7),("",7),("",7),("____",2),("(____)",1),("( )_( )",0),("(__)_)",1),("",7),("",7)]),('b',[("",7),("_",1),("(_)",0),("(_)_",0),("(___)_",0),("(_)_(_)",0),("(____)",0),("",7),("",7)]),('c',[("",7),("",7),("",7),("___",3),("_(___)",1),("(_)___",0),("(____)",1),("",7),("",7)]),('d',[("",7),("_",5),("(_)",4),("__(_)",2),("(____)",1),("(_)_(_)",0),("(____)",1),("",7),("",7)]),('e',[("",7),("",7),("____",2),("(____)",1),("(_)_(_)",0),("(__)__",0),("(____)",1),("",7),("",7)]),('f',[("",7),("____",2),("(____)",1),("(_)__",0),("(____)",0),("(_)",0),("(_)",0),("",7),("",7)]),('g',[("",7),("",7),("",7),("____",2),("(____)",1),("( )_(_)",0),("(____)",1),("(_)_(_)",0),("(___)",1)]),('h',[("",7),("_",1),("(_)",0),("(_)__",0),("(____)",0),("(_) (_)",0),("(_) (_)",0),("",7),("",7)]),('i',[("",3),("_",1),("(_)",0),("_",1),("(_)",0),("(_)",0),("(_)",0),("",3),("",3)]),('j',[("",7),("",7),("_",5),("(_)",4),("_",5),("(_)",4),("_  (_)",1),("( )_(_)",0),("(___)",1)]),('k',[("",7),("_",1),("(_) _",0),("(_)(_)",0),("(___)",0),("(_)(_)",0),("(_) (_)",0),("",7),("",7)]),('l',[("",5),("__",1),("(__)",0),("(_)",1),("(_)",1),("(_)",1),("(___)",0),("",5),("",5)]),('m',[("",11),("",11),("",11),("__   __",2),("(__)_(__)",1),("(_) (_) (_)",0),("(_) (_) (_)",0),("",11),("",11)]),('n',[("",7),("",7),("_",1),("(_)__",0),("(____)",0),("(_) (_)",0),("(_) (_)",0),("",7),("",7)]),('o',[("",7),("",7),("",7),("___",2),("(___)",1),("(_)_(_)",0),("(___)",1),("",7),("",7)]),('p',[("",7),("",7),("",7),("____",1),("(____)",0),("(_)_(_)",0),("(____)",0),("(_)",0),("(_)",0)]),('q',[("",7),("",7),("",7),("____",2),("(____)",1),("( )_(_)",0),("(____)",1),("(_)",4),("(_)",4)]),('r',[("",6),("",6),("_",1),("(_)__",0),("(____)",0),("(_)",0),("(_)",0),("",6),("",6)]),('s',[("",6),("",6),("____",1),("(____)",0),("(_)__",0),("_(__)",1),("(____)",0),("",6),("",6)]),('t',[("",5),("_",1),("(_)_",0),("(___)",0),("(_)",0),("(_)_",0),("(__)",1),("",5),("",5)]),('u',[("",7),("",7),("",7),("_   _",1),("(_) (_)",0),("(_)_(_)",0),("(___)",1),("",7),("",7)]),('v',[("",7),("",7),("",7),("_   _",1),("(_) (_)",0),("(_)_(_)",0),("(_)",2),("",7),("",7)]),('w',[("",11),("",11),("",11),("_   _   _",1),("(_) ( ) (_)",0),("(_)_(_)_(_)",0),("(__) (__)",1),("",11),("",11)]),('x',[("",8),("",8),("",8),("_   _",1),("(_)_(_)",0),("(_)",2),("(_) (_)",0),("",8),("",8)]),('y',[("",7),("",7),("",7),("_   _",1),("(_) (_)",0),("(_)_(_)",0),("(____)",1),("__(_)",2),("(___)",1)]),('z',[("",7),("",7),("_____",1),("(_____)",0),("_(_)",2),("(_)__",1),("(_____)",0),("",7),("",7)]),('{',[("",7),("__",4),("(__)",3),("_(_)",1),("(__)",0),("(_)",2),("(__)",3),("",7),("",7)]),('|',[("_",1),("(_)",0),("(_)",0),("(_)",0),("_",1),("(_)",0),("(_)",0),("(_)",0),("",3)]),('}',[("",7),("__",1),("(__)",0),("(_)_",2),("(__)",3),("_(_)",1),("(__)",0),("",7),("",7)]),('~',[("",9),("__   _",2),("( _)_(_)",1),("(_) (__)",0),("",9),("",9),("",9),("",9),("",9)]),('\196',[("_   _",1),("(_)_(_)",0),("(_____)",0),("(_)_(_)",0),("(_____)",0),("(_) (_)",0),("(_) (_)",0),("",7),("",7)]),('\214',[("_   _",1),("(_)_(_)",0),("(_____)",0),("(_) (_)",0),("(_) (_)",0),("(_)_(_)",0),("(_____)",0),("",7),("",7)]),('\220',[("_   _",1),("(_) (_)",0),("_   _",1),("(_) (_)",0),("(_) (_)",0),("(_)_(_)",0),("(_____)",0),("",7),("",7)]),('\223',[("",7),("",7),("",7),("_____",1),("(_____)",0),("(_)(_)",0),("(_)(__)",0),("(_)(_)",0),("(_)",0)]),('\228',[("",7),("_   _",1),("(_) (_)",0),("____",2),("(____)",1),("(_)_(_)",0),("(__(_)",1),("",7),("",7)]),('\246',[("",7),("_   _",1),("(_) (_)",0),("___",2),("(___)",1),("(_)_(_)",0),("(___)",1),("",7),("",7)]),('\252',[("",7),("_   _",1),("(_) (_)",0),("_   _",1),("(_) (_)",0),("(_)_(_)",0),("(___)",1),("",7),("",7)])]}