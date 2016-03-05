/PROG  WD2ST20N
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "WELD CD4.1 OP20";
PROG_SIZE	= 5109;
CREATE		= DATE 13-10-16  TIME 06:21:17;
MODIFIED	= DATE 14-02-26  TIME 05:03:04;
FILE_NAME	= WD2ST20;
VERSION		= 0;
LINE_COUNT	= 109;
MEMORY_SIZE	= 5537;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 
/MN
   1:  !******************************* ;
   2:  !Cosma Standards ;
   3:  !Line- OP020 ;
   4:  !Platform- CD4.1 ;
   5:  !Robot- rb04 ;
   6:  !Application- WELDING ;
   7:  !Operation- Weld OP020 CD4.1 ;
   8:  !******************************* ;
   9:   ;
  10:  !Tool Data ;
  11:  UFRAME_NUM=0 ;
  12:  UTOOL_NUM=1 ;
  13:  PAYLOAD[1] ;
  14:   ;
  15:  !Move To Process (Welding) ;
  16:  PATH ACKNOWLEDGE(50) ;
  17:   ;
  18:  TIMER[10]=RESET ;
  19:  TIMER[10]=START ;
  20:   ;
  21:  !Enter Tool ;
  22:  AREA ENTER(1) ;
  23:   ;
  24:  IF GI[6:STYLE SELECT]=2,JMP LBL[6] ;
  25:  CALL HOMRESET    ;
  26:  LBL[6] ;
  27:   ;
  28:  IF GI[4:Decision code]=15,CALL HOMRESET ;
  29:   ;
  30:  !Enter Zone 1 (LT01,RB01, RB02)  ;
  31:  ZONE ENTER(1) ;
  32:  ZONE ENTER(2) ;
  33:   ;
  34:J PR[1:HOME POSITION] 100% CNT100    ;
  35:   ;
  36:J P[33] 100% CNT100    ;
  37:J P[34] 100% CNT100    ;
  38:J P[32] 100% CNT100    ;
  39:L P[6] 2000mm/sec CNT100    ;
  40:L P[7] 2000mm/sec CNT75    ;
  41:L P[8] 2000mm/sec CNT25    ;
  42:L P[9] 2000mm/sec CNT10    ;
  43:L P[10] 2000mm/sec CNT10    ;
  44:   ;
  45:L P[11:w81140-18-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=21,S=21,ED=22]    ;
  46:   ;
  47:L P[12:w81140-14-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=22,S=22,ED=22]    ;
  48:   ;
  49:L P[13:w81140-13-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=23,S=23,ED=22]    ;
  50:   ;
  51:L P[14:w81140-24-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=24,S=24,ED=22]    ;
  52:   ;
  53:L P[15:w81140-11-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=25,S=25,ED=22]    ;
  54:   ;
  55:L P[16:w81156-04-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=26,S=26,ED=22]    ;
  56:   ;
  57:L P[1:w81156-03-r] 1000mm/sec CNT10
    :  SPOT[SD=22,P=27,S=27,ED=22]    ;
  58:   ;
  59:L P[17] 2000mm/sec CNT10    ;
  60:L P[18] 2000mm/sec CNT10    ;
  61:L P[19] 2000mm/sec CNT10    ;
  62:L P[20] 2000mm/sec CNT25    ;
  63:L P[21] 2000mm/sec CNT25    ;
  64:L P[2] 2000mm/sec CNT50    ;
  65:L P[30] 2000mm/sec CNT100    ;
  66:J P[35] 100% CNT25    ;
  67:L P[23] 2000mm/sec CNT50    ;
  68:L P[3] 2000mm/sec CNT25    ;
  69:L P[24] 2000mm/sec CNT10    ;
  70:   ;
  71:L P[25:w81147-01-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=28,S=28,ED=22]    ;
  72:   ;
  73:L P[26:w81141-01-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=29,S=29,ED=22]    ;
  74:   ;
  75:L P[27] 2000mm/sec CNT10    ;
  76:L P[4] 2000mm/sec CNT25    ;
  77:L P[28] 2000mm/sec CNT50    ;
  78:J P[29] 80% CNT50    ;
  79:J P[22] 100% CNT100    ;
  80:   ;
  81:J P[36] 100% CNT100    ;
  82:J P[37] 100% CNT100    ;
  83:J P[38] 100% CNT25    ;
  84:   ;
  85:L P[39] 1000mm/sec CNT10    ;
  86:   ;
  87:L P[40:w81143-01-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=30,S=30,ED=22]    ;
  88:   ;
  89:L P[41:w81142-01-r] 2000mm/sec CNT10
    :  SPOT[SD=22,P=31,S=31,ED=22]    ;
  90:   ;
  91:L P[42] 2000mm/sec CNT10    ;
  92:J P[45] 100% CNT25    ;
  93:J P[44] 100% CNT0    ;
  94:  !All Welds Complete  ;
  95:  PATH ACKNOWLEDGE(53) ;
  96:  !Clear Tool  ;
  97:  AREA CLEAR(1) ;
  98:J P[43] 100% CNT100    ;
  99:   ;
 100:   ;
 101:J PR[1:HOME POSITION] 65% CNT100    ;
 102:  !Clear Tool  ;
 103:  AREA CLEAR(1) ;
 104:   ;
 105:  !Clear Zone 1 (LT01,RB01,RB02)  ;
 106:  ZONE CLEAR(1) ;
 107:  ZONE CLEAR(2) ;
 108:   ;
 109:  TIMER[10]=STOP ;
/POS
P[1:"w81156-03-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1976.166  mm,	Y =  -486.852  mm,	Z =   308.875  mm,
	W =   179.571 deg,	P =      .769 deg,	R =    89.799 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -20.091  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.785  mm,	Y =  -505.171  mm,	Z =   677.960  mm,
	W =   151.507 deg,	P =    19.035 deg,	R =    59.672 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1799.868  mm,	Y =  -537.375  mm,	Z =   251.747  mm,
	W =   178.787 deg,	P =     4.646 deg,	R =    10.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -209.998  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1802.599  mm,	Y =  -537.290  mm,	Z =   240.728  mm,
	W =   178.861 deg,	P =     4.733 deg,	R =    11.266 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -209.998  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1559.807  mm,	Y =  -581.284  mm,	Z =   564.383  mm,
	W =   -21.472 deg,	P =    85.546 deg,	R =   -19.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2051.419  mm,	Y =  -610.668  mm,	Z =   383.803  mm,
	W =   153.157 deg,	P =    42.470 deg,	R =    77.990 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -208.247  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.423  mm,	Y =  -612.234  mm,	Z =   239.264  mm,
	W =   178.221 deg,	P =   -16.855 deg,	R =    66.625 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.023  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.892  mm,	Y =  -630.938  mm,	Z =   331.851  mm,
	W =   178.102 deg,	P =   -32.747 deg,	R =    67.082 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2266.913  mm,	Y =  -497.894  mm,	Z =   333.777  mm,
	W =   178.403 deg,	P =     -.115 deg,	R =    66.058 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[11:"w81140-18-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.793  mm,	Y =  -487.271  mm,	Z =   310.558  mm,
	W =   179.336 deg,	P =     1.503 deg,	R =    66.057 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[12:"w81140-14-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2225.108  mm,	Y =  -488.581  mm,	Z =   309.554  mm,
	W =   179.713 deg,	P =     1.216 deg,	R =    69.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[13:"w81140-13-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2182.273  mm,	Y =  -488.743  mm,	Z =   309.760  mm,
	W =  -179.401 deg,	P =     1.841 deg,	R =    72.097 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[14:"w81140-24-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.422  mm,	Y =  -487.805  mm,	Z =   310.243  mm,
	W =  -179.659 deg,	P =      .337 deg,	R =    77.831 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[15:"w81140-11-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2059.135  mm,	Y =  -486.543  mm,	Z =   307.201  mm,
	W =   179.917 deg,	P =     1.254 deg,	R =    81.329 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[16:"w81156-04-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.540  mm,	Y =  -486.646  mm,	Z =   308.613  mm,
	W =   178.983 deg,	P =      .874 deg,	R =    89.700 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -100.000  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1976.857  mm,	Y =  -485.420  mm,	Z =   316.888  mm,
	W =   178.395 deg,	P =      .588 deg,	R =    91.613 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.892  mm,	Y =  -630.938  mm,	Z =   331.851  mm,
	W =   178.102 deg,	P =   -32.747 deg,	R =    67.082 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.423  mm,	Y =  -612.234  mm,	Z =   239.264  mm,
	W =   178.221 deg,	P =   -16.855 deg,	R =    66.625 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.023  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2201.747  mm,	Y =  -645.358  mm,	Z =   220.109  mm,
	W =   178.388 deg,	P =    -8.218 deg,	R =    66.286 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2183.866  mm,	Y =  -624.691  mm,	Z =   591.170  mm,
	W =   171.729 deg,	P =    -1.658 deg,	R =    66.101 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1225.776  mm,	Y =  -132.683  mm,	Z =  1632.841  mm,
	W =   166.817 deg,	P =   -19.214 deg,	R =     7.573 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -100.000  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1426.557  mm,	Y =  -631.818  mm,	Z =   194.524  mm,
	W =   179.411 deg,	P =    -1.642 deg,	R =    -2.261 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -210.002  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.184  mm,	Y =  -496.761  mm,	Z =   260.687  mm,
	W =   178.938 deg,	P =     5.642 deg,	R =    12.309 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[25:"w81147-01-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1853.263  mm,	Y =  -446.399  mm,	Z =   218.161  mm,
	W =  -174.381 deg,	P =    -1.576 deg,	R =    18.650 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[26:"w81141-01-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.076  mm,	Y =  -481.102  mm,	Z =   216.305  mm,
	W =   179.509 deg,	P =      .555 deg,	R =    14.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1856.714  mm,	Y =  -497.383  mm,	Z =   244.838  mm,
	W =   178.999 deg,	P =     5.654 deg,	R =    12.929 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1426.060  mm,	Y =  -631.614  mm,	Z =   212.133  mm,
	W =   179.355 deg,	P =    -1.621 deg,	R =     -.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1412.180  mm,	Y =  -569.372  mm,	Z =   884.869  mm,
	W =   179.186 deg,	P =    -1.621 deg,	R =     -.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2298.181  mm,	Y =  -234.441  mm,	Z =   963.137  mm,
	W =   146.920 deg,	P =     7.515 deg,	R =    40.033 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1472.693  mm,	Y =  -586.072  mm,	Z =   602.888  mm,
	W =    -7.720 deg,	P =    79.046 deg,	R =   -12.768 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.781  mm,	Y =   137.940  mm,	Z =  2151.917  mm,
	W =   113.954 deg,	P =   -41.742 deg,	R =    58.380 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -125.427  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1141.140  mm,	Y =  -368.681  mm,	Z =   823.710  mm,
	W =    84.980 deg,	P =    70.349 deg,	R =    81.201 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -176.240  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1837.319  mm,	Y =  -522.503  mm,	Z =   957.663  mm,
	W =   165.364 deg,	P =    -6.179 deg,	R =    -3.892 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.781  mm,	Y =   137.940  mm,	Z =  2151.917  mm,
	W =   113.954 deg,	P =   -41.742 deg,	R =    58.380 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -125.427  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1141.140  mm,	Y =  -368.681  mm,	Z =   823.710  mm,
	W =    84.980 deg,	P =    70.349 deg,	R =    81.201 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -176.240  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1472.693  mm,	Y =  -586.072  mm,	Z =   602.888  mm,
	W =    -7.720 deg,	P =    79.046 deg,	R =   -12.768 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1548.647  mm,	Y =  -619.302  mm,	Z =   286.200  mm,
	W =    -1.013 deg,	P =    80.557 deg,	R =    -3.335 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[40:"w81143-01-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1723.263  mm,	Y =  -611.737  mm,	Z =   172.588  mm,
	W =    54.452 deg,	P =    69.422 deg,	R =    54.299 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -21.225  mm
};
P[41:"w81142-01-r"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1717.765  mm,	Y =  -608.486  mm,	Z =   196.299  mm,
	W =    50.026 deg,	P =    68.177 deg,	R =    49.314 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -12.250  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1612.198  mm,	Y =  -609.947  mm,	Z =   171.849  mm,
	W =   -10.795 deg,	P =    80.426 deg,	R =   -12.846 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.781  mm,	Y =   137.940  mm,	Z =  2151.917  mm,
	W =   113.954 deg,	P =   -41.742 deg,	R =    58.380 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -125.427  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1141.140  mm,	Y =  -368.681  mm,	Z =   823.710  mm,
	W =    84.980 deg,	P =    70.349 deg,	R =    81.201 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -176.240  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1472.693  mm,	Y =  -586.072  mm,	Z =   602.888  mm,
	W =    -7.720 deg,	P =    79.046 deg,	R =   -12.768 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
/END
