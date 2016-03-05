/PROG  WD10P20
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "D471 OP20 NEW";
PROG_SIZE	= 3852;
CREATE		= DATE 13-10-15  TIME 02:19:00;
MODIFIED	= DATE 14-02-26  TIME 05:02:20;
FILE_NAME	= WD1ST20;
VERSION		= 0;
LINE_COUNT	= 95;
MEMORY_SIZE	= 4208;
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
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !******************************* ;
   2:  !Cosma Standards ;
   3:  !Line- OP020 ;
   4:  !Platform- D471 ;
   5:  !Robot- rb04 ;
   6:  !Application- WELDING ;
   7:  !Operation- Weld OP020 D471 ;
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
  18:  TIMER[9]=RESET ;
  19:  TIMER[9]=START ;
  20:   ;
  21:  !Enter Tool ;
  22:  AREA ENTER(1) ;
  23:   ;
  24:  IF GI[6:STYLE SELECT]=1,JMP LBL[6] ;
  25:  CALL HOMRESET    ;
  26:  LBL[6] ;
  27:   ;
  28:  IF GI[4:Decision code]=15,CALL HOMRESET ;
  29:   ;
  30:  !Enter Zone 1 (LT01,RB01, RB02)  ;
  31:  ZONE ENTER(1) ;
  32:  ZONE ENTER(2) ;
  33:   ;
  34:J PR[1:HOME POSITION] 100% CNT50    ;
  35:J P[1] 80% CNT90    ;
  36:J P[2] 80% CNT25    ;
  37:J P[3] 80% CNT50    ;
  38:L P[4] 1600mm/sec CNT25    ;
  39:L P[5] 1000mm/sec FINE    ;
  40:   ;
  41:L P[6:w8R151A_001_74] 1000mm/sec CNT10
    :  SPOT[SD=2,P=1,S=1,ED=2]    ;
  42:   ;
  43:L P[5] 1000mm/sec CNT10    ;
  44:L P[7] 1000mm/sec CNT10    ;
  45:L P[8] 1000mm/sec CNT10    ;
  46:   ;
  47:J P[9] 50% CNT10    ;
  48:   ;
  49:J P[10:w8R151A_004_74] 50% CNT10
    :  SPOT[SD=2,P=2,S=2,ED=2]    ;
  50:   ;
  51:J P[11:w8L122A-001-74] 50% CNT10
    :  SPOT[SD=2,P=3,S=3,ED=2]    ;
  52:   ;
  53:J P[12] 50% CNT10    ;
  54:J P[13] 80% CNT10    ;
  55:L P[14] 1000mm/sec CNT5    ;
  56:L P[15] 1600mm/sec CNT25    ;
  57:J P[28] 100% CNT50    ;
  58:   ;
  59:  !Enter Zone 5 (RB06)  ;
  60:  ZONE ENTER(5) ;
  61:   ;
  62:J P[16] 100% CNT50    ;
  63:J P[17] 100% CNT25    ;
  64:L P[18] 2000mm/sec CNT10    ;
  65:J P[19] 100% CNT50    ;
  66:   ;
  67:J P[20:w8R123B_007_74] 100% CNT10
    :  SPOT[SD=2,P=4,S=4,ED=2]    ;
  68:   ;
  69:J P[21:w8R123B_008_74] 100% CNT10
    :  SPOT[SD=2,P=5,S=5,ED=2]    ;
  70:   ;
  71:J P[22] 100% CNT50    ;
  72:   ;
  73:J P[23:w8R123A_002_74] 100% CNT10
    :  SPOT[SD=16,P=6,S=6,ED=2]    ;
  74:   ;
  75:J P[24:w8R123A_001_74] 100% CNT10
    :  SPOT[SD=2,P=7,S=7,ED=16]    ;
  76:   ;
  77:  !All Welds Complete  ;
  78:  PATH ACKNOWLEDGE(51) ;
  79:   ;
  80:L P[25] 1000mm/sec CNT25    ;
  81:J P[26] 100% CNT10    ;
  82:J P[27] 100% CNT75    ;
  83:   ;
  84:J PR[1:HOME POSITION] 100% FINE    ;
  85:  !Clear Tool  ;
  86:  AREA CLEAR(1) ;
  87:   ;
  88:  !Clear Zone 5 (RB06)  ;
  89:  ZONE CLEAR(5) ;
  90:   ;
  91:  !Clear Zone 1 (LT01,RB01,RB02)  ;
  92:  ZONE CLEAR(1) ;
  93:  ZONE CLEAR(2) ;
  94:   ;
  95:  TIMER[9]=STOP ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1529.182  mm,	Y =  -622.136  mm,	Z =   876.855  mm,
	W =   176.358 deg,	P =     8.917 deg,	R =    -3.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.675  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1629.768  mm,	Y =  -591.537  mm,	Z =   201.235  mm,
	W =  -176.710 deg,	P =    15.240 deg,	R =     2.777 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.675  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1605.255  mm,	Y =  -665.495  mm,	Z =   179.591  mm,
	W =  -147.287 deg,	P =    -1.447 deg,	R =    -2.206 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1781.232  mm,	Y =  -653.858  mm,	Z =   188.153  mm,
	W =  -140.613 deg,	P =    -9.993 deg,	R =    -2.197 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.995  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1785.738  mm,	Y =  -604.782  mm,	Z =   137.547  mm,
	W =  -134.277 deg,	P =   -26.113 deg,	R =     4.530 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -70.000  mm
};
P[6:"w8R151A_001_74"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1797.644  mm,	Y =  -590.614  mm,	Z =    99.134  mm,
	W =  -107.179 deg,	P =   -17.753 deg,	R =     6.916 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -15.351  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1782.442  mm,	Y =  -662.108  mm,	Z =   232.533  mm,
	W =  -140.210 deg,	P =   -12.419 deg,	R =     -.428 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1785.867  mm,	Y =  -579.408  mm,	Z =   249.718  mm,
	W =  -164.385 deg,	P =    -8.008 deg,	R =     7.810 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.995  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1880.645  mm,	Y =  -453.027  mm,	Z =   235.324  mm,
	W =  -179.860 deg,	P =     -.347 deg,	R =    17.702 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -135.000  mm
};
P[10:"w8R151A_004_74"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1875.720  mm,	Y =  -446.340  mm,	Z =   223.411  mm,
	W =  -179.640 deg,	P =      .494 deg,	R =    19.748 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -10.000  mm
};
P[11:"w8L122A-001-74"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1926.153  mm,	Y =  -454.671  mm,	Z =   224.543  mm,
	W =   179.581 deg,	P =     1.252 deg,	R =    18.538 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -23.800  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1880.645  mm,	Y =  -453.027  mm,	Z =   235.324  mm,
	W =  -179.860 deg,	P =     -.347 deg,	R =    17.702 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -135.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1786.915  mm,	Y =  -576.299  mm,	Z =   239.312  mm,
	W =  -164.204 deg,	P =    -7.638 deg,	R =     6.480 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.995  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1582.718  mm,	Y =  -589.167  mm,	Z =   177.022  mm,
	W =   179.472 deg,	P =    -2.541 deg,	R =     4.292 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.995  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1455.729  mm,	Y =  -531.940  mm,	Z =  1222.618  mm,
	W =   173.196 deg,	P =    -1.300 deg,	R =     6.095 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1436.852  mm,	Y =   293.513  mm,	Z =  1323.454  mm,
	W =   171.783 deg,	P =    -5.725 deg,	R =    42.130 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1680.685  mm,	Y =    14.617  mm,	Z =   333.852  mm,
	W =  -158.999 deg,	P =     4.029 deg,	R =   -16.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.997  mm
};
P[18:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1959.863  mm,	Y =   -70.941  mm,	Z =   300.776  mm,
	W =  -161.833 deg,	P =     2.481 deg,	R =   -18.366 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -199.997  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1979.546  mm,	Y =   -94.341  mm,	Z =   274.779  mm,
	W =  -167.197 deg,	P =    -1.122 deg,	R =   -20.529 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[20:"w8R123B_007_74"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.744  mm,	Y =   -82.481  mm,	Z =   227.443  mm,
	W =  -178.305 deg,	P =     1.559 deg,	R =   -17.646 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -9.106  mm
};
P[21:"w8R123B_008_74"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2021.086  mm,	Y =   -82.258  mm,	Z =   226.849  mm,
	W =  -179.273 deg,	P =     1.573 deg,	R =   -17.986 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -8.669  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2017.293  mm,	Y =   -86.865  mm,	Z =   264.170  mm,
	W =   179.912 deg,	P =    -1.673 deg,	R =   -17.981 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[23:"w8R123A_002_74"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1975.803  mm,	Y =  -178.661  mm,	Z =   225.208  mm,
	W =  -179.751 deg,	P =     2.002 deg,	R =   -29.613 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -9.826  mm
};
P[24:"w8R123A_001_74"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1942.036  mm,	Y =  -180.292  mm,	Z =   222.035  mm,
	W =  -179.537 deg,	P =     1.178 deg,	R =   -36.589 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -7.627  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.336  mm,	Y =   -92.683  mm,	Z =   266.692  mm,
	W =  -167.185 deg,	P =     2.628 deg,	R =   -19.676 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1680.798  mm,	Y =    19.644  mm,	Z =   321.252  mm,
	W =  -158.871 deg,	P =     7.361 deg,	R =   -14.919 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1482.869  mm,	Y =   276.048  mm,	Z =  1074.503  mm,
	W =   179.947 deg,	P =    -1.504 deg,	R =    41.614 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1355.268  mm,	Y =   -46.108  mm,	Z =  1271.364  mm,
	W =   173.101 deg,	P =    -3.356 deg,	R =    29.696 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -200.000  mm
};
/END
