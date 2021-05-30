{- This file was auto-generated by the haskii-exe program. -}
{-# LANGUAGE NoImplicitPrelude #-}

module Haskii.Figlet.Font.Clr8x10 (
        getFLF
    ) where
import Universum
import Haskii.Figlet.Types
import Data.Map
getFLF :: FLF
getFLF = FLF {baseline = 8, oldLayout = FullSize, printDirection = Nothing, fullLayout = Nothing, codetagCount = Nothing, charData = fromList [('\SOH',[("#    ",4),("# #   ",3),("#   #  ",2),("### ### ",1),("# #   ",3),("# #   ",3),("# #   ",3),("# #   ",3),("###   ",3),(" ",8)]),('\STX',[(" ",8),("###   ",3),("# #   ",3),("# #   ",3),("# #   ",3),("# #   ",3),("### ### ",1),("#   #  ",2),("# #   ",3),("#    ",4)]),('\ETX',[(" ",8),(" ",8),("#    ",4),("##   ",4),("#### #  ",1),("#     # ",1),("#### #  ",1),("##   ",4),("#    ",4),(" ",8)]),('\EOT',[(" ",8),(" ",8),("#    ",4),("##    ",3),("# #### ",2),("#     # ",1),("# #### ",2),("##    ",3),("#    ",4),(" ",8)]),('\ENQ',[("#####  ",2),("#####  ",2),("# ### # ",1),("# ### # ",1),("## # ## ",1),("### ### ",1),("## # ## ",1),("# ### # ",1),("# ### # ",1),("#####  ",2)]),('\ACK',[("####### ",1),("####### ",1),("####### ",1),("####### ",1),("####### ",1),("######  ",1),("##### # ",1),("##### # ",1),("#### ## ",1),("#### ## ",1)]),('\a',[("### ### ",1),("## # ## ",1),("## # ## ",1),("# ### # ",1),("# ### # ",1),("#####  ",2),("# ### # ",1),("# ### # ",1),("## # ## ",1),("## # ## ",1)]),('\b',[(" ",8),("##      ",1),("# #     ",1),("##      ",1),("# #  ## ",1),("##  #   ",1),("#  ",6),("# ",7),("##  ",5),(" ",8)]),('\t',[(" ",8),("# #     ",1),("# #     ",1),("###     ",1),("# # ### ",1),("# #  #  ",1),("#  ",6),("#  ",6),("#  ",6),(" ",8)]),('\n',[(" ",8),("#       ",1),("#       ",1),("#       ",1),("#   ### ",1),("### #   ",1),("##  ",5),("#   ",5),("#   ",5),(" ",8)]),('\v',[(" ",8),("# #     ",1),("# #     ",1),("# #     ",1),("#  ### ",2),("#   #  ",2),("#  ",6),("#  ",6),("#  ",6),(" ",8)]),('\f',[(" ",8),("###     ",1),("#       ",1),("##      ",1),("#   ### ",1),("#   #   ",1),("##  ",5),("#   ",5),("#   ",5),(" ",8)]),('\r',[(" ",8),("##     ",2),("#       ",1),("#       ",1),("#   ##  ",1),("## # # ",2),("##  ",5),("# # ",5),("# # ",5),(" ",8)]),('\SO',[("# # ",5),("# # ",5),("# # ",5),("# # ",5),("## # ",4),("## # ",4),("## # ",4),("##  # ",3),("####  # ",1),("###   # ",1)]),('\SI',[("# #      ",0),("# #      ",0),("# #      ",0),("# #      ",0),("# ##     ",0),("# ##     ",0),("# ##     ",0),("#  ##    ",0),("#  ####  ",0),("#   ###  ",0)]),('\DLE',[(" ",8),("##    ",3),("#    #  ",1),("#    #  ",1),(" ",8),("#    #  ",1),("#    #  ",1),("##    ",3),(" ",8),(" ",8)]),('\DC1',[(" ",8),(" ",8),("#  ",6),("#  ",6),(" ",8),("#  ",6),("#  ",6),(" ",8),(" ",8),(" ",8)]),('\DC2',[(" ",8),("##    ",3),("#  ",6),("#  ",6),("##    ",3),("#       ",1),("#       ",1),("##    ",3),(" ",8),(" ",8)]),('\DC3',[(" ",8),("##    ",3),("#  ",6),("#  ",6),("##    ",3),("#  ",6),("#  ",6),("##    ",3),(" ",8),(" ",8)]),('\DC4',[(" ",8),(" ",8),("#    #  ",1),("#    #  ",1),("##    ",3),("#  ",6),("#  ",6),(" ",8),(" ",8),(" ",8)]),('\NAK',[(" ",8),("##    ",3),("#       ",1),("#       ",1),("##    ",3),("#  ",6),("#  ",6),("##    ",3),(" ",8),(" ",8)]),('\SYN',[(" ",8),("##    ",3),("#       ",1),("#       ",1),("##    ",3),("#    #  ",1),("#    #  ",1),("##    ",3),(" ",8),(" ",8)]),('\ETB',[(" ",8),("##    ",3),("#  ",6),("#  ",6),(" ",8),("#  ",6),("#  ",6),(" ",8),(" ",8),(" ",8)]),('\CAN',[(" ",8),("##    ",3),("#    #  ",1),("#    #  ",1),("##    ",3),("#    #  ",1),("#    #  ",1),("##    ",3),(" ",8),(" ",8)]),('\EM',[(" ",8),("##    ",3),("#    #  ",1),("#    #  ",1),("##    ",3),("#  ",6),("#  ",6),("##    ",3),(" ",8),(" ",8)]),('\SUB',[(" ",8),(" ",8),(" ",8),("#####  ",2),("# ",7),("####### ",1),("#     # ",1),("#####  ",2),(" ",8),(" ",8)]),('\ESC',[(" ",8),("###     ",1),("#       ",1),("###     ",1),("#    ## ",1),("### #   ",1),("#   ",5),("#   ",5),("## ",6),(" ",8)]),('\FS',[(" ",8),(" ",8),("### ",5),("#### ",4),("##### ",3),("##    ",3),("##    ",3),("#     ",3),("####  ",3),("# ### ",3)]),('\GS',[(" ",8),(" ",8),("####     ",0),("#####    ",0),("### ##   ",0),("#   ",5),("#   ",5),("#   ",5),("####   ",2),("# # #   ",1)]),('\RS',[("#   # ",3),("# ## ",4),("## # ",4),("##  ",5),("### ",5),("# ###  ",2),("###  # ",2),("###    ",2),(" ",8),(" ",8)]),('\US',[("#   ",5),("# #    ",2),("## ##    ",0),("# #    ",2),("## #     ",0),("#     ",3),("###      ",0),(" ",8),(" ",8),(" ",8)]),(' ',[(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8)]),('!',[("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),(" ",8),("#    ",4),(" ",8),(" ",8)]),('"',[("# #   ",3),("# #   ",3),("# #   ",3),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8)]),('#',[("#  #   ",2),("#  #   ",2),("######  ",1),("#  #   ",2),("#  #   ",2),("######  ",1),("#  #   ",2),("#  #   ",2),(" ",8),(" ",8)]),('$',[(" ",8),("#    ",4),("####  ",3),("# #    ",2),("###   ",3),("# #  ",4),("####   ",2),("#    ",4),(" ",8),(" ",8)]),('%',[(" ",8),("#   #  ",2),("# # #   ",1),("#  #   ",2),("#    ",4),("#  #  ",3),("# # # ",3),("#   #  ",2),(" ",8),(" ",8)]),('&',[(" ",8),("###    ",2),("#       ",1),("#      ",2),("##     ",2),("#  # #  ",1),("#   #   ",1),("### #  ",2),(" ",8),(" ",8)]),('\'',[("##   ",4),("#    ",4),("#     ",3),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8)]),('(',[("#   ",5),("#    ",4),("#    ",4),("#     ",3),("#     ",3),("#     ",3),("#    ",4),("#    ",4),("#   ",5),(" ",8)]),(')',[("#     ",3),("#    ",4),("#    ",4),("#   ",5),("#   ",5),("#   ",5),("#    ",4),("#    ",4),("#     ",3),(" ",8)]),('*',[(" ",8),("#    ",4),("#    ",4),("## # ## ",1),("###   ",3),("#    ",4),("# #   ",3),("#   #  ",2),(" ",8),(" ",8)]),('+',[(" ",8),("#    ",4),("#    ",4),("#    ",4),("####### ",1),("#    ",4),("#    ",4),("#    ",4),(" ",8),(" ",8)]),(',',[(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),("##    ",3),("#     ",3),("#      ",2),(" ",8)]),('-',[(" ",8),(" ",8),(" ",8),(" ",8),("####### ",1),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8)]),('.',[(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),("##    ",3),("##    ",3),(" ",8),(" ",8)]),('/',[("#  ",6),("#  ",6),("#   ",5),("#   ",5),("#    ",4),("#    ",4),("#     ",3),("#     ",3),("#      ",2),("#      ",2)]),('0',[("####   ",2),("#    #  ",1),("#    #  ",1),("#    #  ",1),("#    #  ",1),("#    #  ",1),("#    #  ",1),("####   ",2),(" ",8),(" ",8)]),('1',[("#    ",4),("##    ",3),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),(" ",8),(" ",8)]),('2',[("####   ",2),("#    #  ",1),("#  ",6),("#   ",5),("#    ",4),("#     ",3),("#      ",2),("######  ",1),(" ",8),(" ",8)]),('3',[("####   ",2),("#    #  ",1),("#  ",6),("###   ",3),("#  ",6),("#  ",6),("#    #  ",1),("####   ",2),(" ",8),(" ",8)]),('4',[("##   ",4),("##   ",4),("# #   ",3),("# #   ",3),("#  #   ",2),("######  ",1),("#   ",5),("###  ",4),(" ",8),(" ",8)]),('5',[("######  ",1),("#       ",1),("#       ",1),("#####   ",1),("#  ",6),("#  ",6),("#    #  ",1),("####   ",2),(" ",8),(" ",8)]),('6',[("###   ",3),("#      ",2),("#       ",1),("#####   ",1),("#    #  ",1),("#    #  ",1),("#    #  ",1),("####   ",2),(" ",8),(" ",8)]),('7',[("######  ",1),("#    #  ",1),("#   ",5),("#   ",5),("#    ",4),("#    ",4),("#     ",3),("#     ",3),(" ",8),(" ",8)]),('8',[("####   ",2),("#    #  ",1),("#    #  ",1),("####   ",2),("#    #  ",1),("#    #  ",1),("#    #  ",1),("####   ",2),(" ",8),(" ",8)]),('9',[("####   ",2),("#    #  ",1),("#    #  ",1),("#    #  ",1),("#####  ",2),("#  ",6),("#   ",5),("###    ",2),(" ",8),(" ",8)]),(':',[(" ",8),(" ",8),("##    ",3),("##    ",3),(" ",8),(" ",8),("##    ",3),("##    ",3),(" ",8),(" ",8)]),(';',[(" ",8),(" ",8),("##    ",3),("##    ",3),(" ",8),(" ",8),("##    ",3),("#     ",3),("#      ",2),(" ",8)]),('<',[(" ",8),(" ",8),("##  ",5),("##    ",3),("##      ",1),("##    ",3),("##  ",5),(" ",8),(" ",8),(" ",8)]),('=',[(" ",8),(" ",8),(" ",8),("####### ",1),(" ",8),(" ",8),("####### ",1),(" ",8),(" ",8),(" ",8)]),('>',[(" ",8),(" ",8),("##      ",1),("##    ",3),("##  ",5),("##    ",3),("##      ",1),(" ",8),(" ",8),(" ",8)]),('?',[("####   ",2),("#    #  ",1),("#  ",6),("#   ",5),("#    ",4),("#    ",4),(" ",8),("#    ",4),(" ",8),(" ",8)]),('@',[(" ",8),("###   ",3),("#   #  ",2),("#  #  # ",1),("# # # # ",1),("#  # #  ",1),("#      ",2),("###   ",3),(" ",8),(" ",8)]),('A',[(" ",8),("#    ",4),("#    ",4),("###   ",3),("# #   ",3),("#####  ",2),("#   #  ",2),("##   ## ",1),(" ",8),(" ",8)]),('B',[(" ",8),("######  ",1),("#     # ",1),("#     # ",1),("######  ",1),("#     # ",1),("#     # ",1),("######  ",1),(" ",8),(" ",8)]),('C',[(" ",8),("####  ",3),("#    # ",2),("#       ",1),("#       ",1),("#       ",1),("#    # ",2),("####  ",3),(" ",8),(" ",8)]),('D',[(" ",8),("#####   ",1),("#    #  ",1),("#     # ",1),("#     # ",1),("#     # ",1),("#    #  ",1),("#####   ",1),(" ",8),(" ",8)]),('E',[(" ",8),("####### ",1),("#       ",1),("#       ",1),("#####   ",1),("#       ",1),("#       ",1),("####### ",1),(" ",8),(" ",8)]),('F',[(" ",8),("####### ",1),("#       ",1),("#       ",1),("#####   ",1),("#       ",1),("#       ",1),("#       ",1),(" ",8),(" ",8)]),('G',[(" ",8),("####  ",3),("#    # ",2),("#       ",1),("#   ### ",1),("#     # ",1),("#    # ",2),("##### ",3),(" ",8),(" ",8)]),('H',[(" ",8),("#     # ",1),("#     # ",1),("#     # ",1),("####### ",1),("#     # ",1),("#     # ",1),("#     # ",1),(" ",8),(" ",8)]),('I',[(" ",8),("#####  ",2),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#####  ",2),(" ",8),(" ",8)]),('J',[(" ",8),("###  ",4),("#  ",6),("#  ",6),("#  ",6),("#    #  ",1),("#    #  ",1),("####   ",2),(" ",8),(" ",8)]),('K',[(" ",8),("#    #  ",1),("#   #   ",1),("#  #    ",1),("###     ",1),("#  #    ",1),("#   #   ",1),("#    #  ",1),(" ",8),(" ",8)]),('L',[(" ",8),("#       ",1),("#       ",1),("#       ",1),("#       ",1),("#       ",1),("#       ",1),("######  ",1),(" ",8),(" ",8)]),('M',[(" ",8),("#     # ",1),("##   ## ",1),("# # # # ",1),("#  #  # ",1),("#     # ",1),("#     # ",1),("#     # ",1),(" ",8),(" ",8)]),('N',[(" ",8),("#     # ",1),("##    # ",1),("# #   # ",1),("#  #  # ",1),("#   # # ",1),("#    ## ",1),("#     # ",1),(" ",8),(" ",8)]),('O',[(" ",8),("###   ",3),("#   #  ",2),("#     # ",1),("#     # ",1),("#     # ",1),("#   #  ",2),("###   ",3),(" ",8),(" ",8)]),('P',[(" ",8),("######  ",1),("#     # ",1),("#     # ",1),("######  ",1),("#       ",1),("#       ",1),("#       ",1),(" ",8),(" ",8)]),('Q',[(" ",8),("###   ",3),("#   #  ",2),("#     # ",1),("#     # ",1),("#     # ",1),("#   #  ",2),("###   ",3),("### ",5),(" ",8)]),('R',[(" ",8),("######  ",1),("#     # ",1),("#     # ",1),("######  ",1),("#   #   ",1),("#    #  ",1),("#     # ",1),(" ",8),(" ",8)]),('S',[(" ",8),("#####  ",2),("#     # ",1),("#       ",1),("#####  ",2),("# ",7),("#     # ",1),("#####  ",2),(" ",8),(" ",8)]),('T',[(" ",8),("####### ",1),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),(" ",8),(" ",8)]),('U',[(" ",8),("#     # ",1),("#     # ",1),("#     # ",1),("#     # ",1),("#     # ",1),("#     # ",1),("#####  ",2),(" ",8),(" ",8)]),('V',[(" ",8),("##   ## ",1),("#   #  ",2),("#   #  ",2),("# #   ",3),("# #   ",3),("#    ",4),("#    ",4),(" ",8),(" ",8)]),('W',[(" ",8),("#     # ",1),("#     # ",1),("#     # ",1),("#  #  # ",1),("# # # # ",1),("##   ## ",1),("#     # ",1),(" ",8),(" ",8)]),('X',[(" ",8),("#     # ",1),("#   #  ",2),("# #   ",3),("#    ",4),("# #   ",3),("#   #  ",2),("#     # ",1),(" ",8),(" ",8)]),('Y',[(" ",8),("#     # ",1),("#   #  ",2),("# #   ",3),("#    ",4),("#    ",4),("#    ",4),("#    ",4),(" ",8),(" ",8)]),('Z',[(" ",8),("####### ",1),("#  ",6),("#   ",5),("#    ",4),("#     ",3),("#      ",2),("####### ",1),(" ",8),(" ",8)]),('[',[("###  ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("###  ",4),(" ",8)]),('\\',[("#      ",2),("#      ",2),("#     ",3),("#     ",3),("#    ",4),("#    ",4),("#   ",5),("#   ",5),("#  ",6),("#  ",6)]),(']',[("###    ",2),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("###    ",2),(" ",8)]),('^',[("#    ",4),("# #   ",3),("#   #  ",2),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8)]),('_',[(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),("####### ",1),(" ",8)]),('`',[("##    ",3),("#    ",4),("#   ",5),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8)]),('a',[(" ",8),(" ",8),(" ",8),("###### ",2),("#     # ",1),("#     # ",1),("#    ## ",1),("#### # ",2),(" ",8),(" ",8)]),('b',[("#       ",1),("#       ",1),("#       ",1),("######  ",1),("#     # ",1),("#     # ",1),("#     # ",1),("######  ",1),(" ",8),(" ",8)]),('c',[(" ",8),(" ",8),(" ",8),("#####  ",2),("#       ",1),("#       ",1),("#       ",1),("#####  ",2),(" ",8),(" ",8)]),('d',[("# ",7),("# ",7),("# ",7),("###### ",2),("#     # ",1),("#     # ",1),("#     # ",1),("###### ",2),(" ",8),(" ",8)]),('e',[(" ",8),(" ",8),(" ",8),("#####  ",2),("#     # ",1),("####### ",1),("#       ",1),("#####  ",2),(" ",8),(" ",8)]),('f',[("####  ",3),("#      ",2),("#      ",2),("####    ",1),("#      ",2),("#      ",2),("#      ",2),("#      ",2),(" ",8),(" ",8)]),('g',[(" ",8),(" ",8),(" ",8),("###### ",2),("#     # ",1),("#     # ",1),("#     # ",1),("###### ",2),("# ",7),("#####  ",2)]),('h',[("#       ",1),("#       ",1),("#       ",1),("######  ",1),("#     # ",1),("#     # ",1),("#     # ",1),("#     # ",1),(" ",8),(" ",8)]),('i',[("#    ",4),("#    ",4),(" ",8),("###    ",2),("#    ",4),("#    ",4),("#    ",4),("#####  ",2),(" ",8),(" ",8)]),('j',[("#  ",6),("#  ",6),(" ",8),("####  ",3),("#  ",6),("#  ",6),("#  ",6),("#  ",6),("#  ",6),("####   ",2)]),('k',[("#       ",1),("#       ",1),("#       ",1),("#   ##  ",1),("#  #    ",1),("###     ",1),("#  #    ",1),("#   ##  ",1),(" ",8),(" ",8)]),('l',[("##    ",3),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("###   ",3),(" ",8),(" ",8)]),('m',[(" ",8),(" ",8),(" ",8),("### ##  ",1),("#  #  # ",1),("#  #  # ",1),("#  #  # ",1),("#     # ",1),(" ",8),(" ",8)]),('n',[(" ",8),(" ",8),(" ",8),("# ####  ",1),("##    # ",1),("#     # ",1),("#     # ",1),("#     # ",1),(" ",8),(" ",8)]),('o',[(" ",8),(" ",8),(" ",8),("#####  ",2),("#     # ",1),("#     # ",1),("#     # ",1),("#####  ",2),(" ",8),(" ",8)]),('p',[(" ",8),(" ",8),(" ",8),("######  ",1),("#     # ",1),("#     # ",1),("#     # ",1),("######  ",1),("#       ",1),("#       ",1)]),('q',[(" ",8),(" ",8),(" ",8),("###### ",2),("#     # ",1),("#     # ",1),("#     # ",1),("###### ",2),("# ",7),("# ",7)]),('r',[(" ",8),(" ",8),(" ",8),("# ###  ",2),("##     ",2),("#      ",2),("#      ",2),("#      ",2),(" ",8),(" ",8)]),('s',[(" ",8),(" ",8),(" ",8),("#####  ",2),("#       ",1),("####   ",2),("#  ",6),("#####   ",1),(" ",8),(" ",8)]),('t',[("#     ",3),("#     ",3),("#     ",3),("######  ",1),("#     ",3),("#     ",3),("#     ",3),("###  ",4),(" ",8),(" ",8)]),('u',[(" ",8),(" ",8),(" ",8),("#     # ",1),("#     # ",1),("#     # ",1),("#    ## ",1),("#### # ",2),(" ",8),(" ",8)]),('v',[(" ",8),(" ",8),(" ",8),("##   ## ",1),("#   #  ",2),("# #   ",3),("# #   ",3),("#    ",4),(" ",8),(" ",8)]),('w',[(" ",8),(" ",8),(" ",8),("#     # ",1),("#  #  # ",1),("#  #  # ",1),("#  #  # ",1),("## ##  ",2),(" ",8),(" ",8)]),('x',[(" ",8),(" ",8),(" ",8),("##   ## ",1),("# #   ",3),("#    ",4),("# #   ",3),("##   ## ",1),(" ",8),(" ",8)]),('y',[(" ",8),(" ",8),(" ",8),("#    #  ",1),("#    #  ",1),("#    #  ",1),("#    #  ",1),("#####  ",2),("#  ",6),("####   ",2)]),('z',[(" ",8),(" ",8),(" ",8),("######  ",1),("#   ",5),("##    ",3),("#      ",2),("######  ",1),(" ",8),(" ",8)]),('{',[("#   ",5),("#    ",4),("#    ",4),("#    ",4),("#     ",3),("#    ",4),("#    ",4),("#    ",4),("#   ",5),(" ",8)]),('|',[("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),("#    ",4),(" ",8)]),('}',[("#     ",3),("#    ",4),("#    ",4),("#    ",4),("#   ",5),("#    ",4),("#    ",4),("#    ",4),("#     ",3),(" ",8)]),('~',[(" ",8),("##   # ",2),("#  #  # ",1),("#   ##  ",1),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8),(" ",8)]),('\DEL',[("#    ",4),("#    ",4),("# #   ",3),("# #   ",3),("#   #  ",2),("#   #  ",2),("#     # ",1),("####### ",1),(" ",8),(" ",8)]),('\196',[("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0)]),('\214',[("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0)]),('\220',[("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0)]),('\223',[("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0)]),('\228',[("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0)]),('\246',[("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0)]),('\252',[("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0),("",0)])]}