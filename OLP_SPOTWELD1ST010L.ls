/PROG OLP_SPOTWELD1ST010L
/ATTR
OWNER           = CATV1R1;
COMMENT         = "WD1ST010L_110R1";
PROG_SIZE       = 0;
CREATE          = DATE 2016-09-19  TIME 07:50:48;
MODIFIED        = DATE 2016-09-19  TIME 07:50:48;
FILE_NAME       = OLP_SPOTWELD1ST010L;
VERSION         = 0;
LINE_COUNT      = 42;
MEMORY_SIZE     = 0;
PROTECT         = READ_WRITE;
TCD:  STACK_SIZE        = 0,
      TASK_PRIORITY     = 50,
      TIME_SLICE        = 0,
      BUSY_LAMP_OFF     = 0,
      ABORT_REQUEST     = 0,
      PAUSE_REQUEST     = 0;
DEFAULT_GROUP   = 1,1,*,*,*;
CONTROL_CODE    = 00000000 00000000;

/APPL
  SPOT : TRUE ;
  SPOT WELDING EQUIPMENT NUMBER : 1 ;

/MN
:  !******************************* ;
:  !Magna Standards Ver 7.7 ;
:  !Line- SILL PONY-LH ;
:  !Platform- 4529-HONDA SILL ;
:  !Robot- 110R1 ;
:  !Application- GEO Welding ;
:  !Operation- Station 010L ;
:  !******************************* ;
:   ;
:  !Tool Data ;
:  UFRAME_NUM = 1;
:  UTOOL_NUM = 1;
:  !Weld Gun-1 ;
:  PAYLOAD[1] ;
:   ;
:J P[1] 90% CNT50;
:J P[2] 80% CNT30;
:J P[3] 80% CNT30;
:J P[4] 80% CNT30;
:L P[5] 1800mm/sec CNT30;
:   ;
:  !******************************* ;
:  !Spot #0016_L-3T ;
:  !******************************* ;
:  !**Weld ID(1) ;
:  !WAIT DI[31:OK To Weld]=ON    ;
:L P[6] 800mm/sec FINE SPOT[SD=8,P=1,S=1,ED=5];
:  !**Weld Complete    ;
:   ;
:L P[7] 800mm/sec CNT30;
:   ;
:  !******************************* ;
:  !Spot #0035_L-3T ;
:  !******************************* ;
:  !**Weld ID(2) ;
:  !WAIT DI[31:OK To Weld]=ON    ;
:L P[8] 800mm/sec FINE SPOT[SD=5,P=1,S=1,ED=8];
:  !**Weld Complete    ;
:   ;
:L P[9] 800mm/sec CNT20;
:J P[10] 90% CNT30;
:J P[11] 80% CNT30;
:   ;
:  !******************************* ;
:  !Spot #0044_L-2T ;
:  !******************************* ;
:  !**Weld ID(3) ;
:  !WAIT DI[31:OK To Weld]=ON    ;
:L P[12] 800mm/sec FINE SPOT[SD=3,P=1,S=1,ED=3];
:  !**Weld Complete    ;
:   ;
:L P[13] 800mm/sec CNT30;
:J P[14] 80% CNT30;
:J P[15] 80% CNT30;
:J P[16] 80% CNT30;
:J P[17] 80% CNT30;
:   ;
:  !******************************* ;
:  !Spot #0014_L-2T ;
:  !******************************* ;
:  !**Weld ID(4) ;
:  !WAIT DI[31:OK To Weld]=ON    ;
:L P[18] 800mm/sec FINE SPOT[SD=3,P=1,S=1,ED=3];
:  !**Weld Complete    ;
:   ;
:L P[19] 800mm/sec CNT30;
:L P[20] 800mm/sec CNT30;
:   ;
:  !******************************* ;
:  !Spot #0020_L-2T ;
:  !******************************* ;
:  !**Weld ID(5) ;
:  !WAIT DI[31:OK To Weld]=ON    ;
:L P[21] 800mm/sec FINE SPOT[SD=3,P=1,S=1,ED=3];
:  !**Weld Complete    ;
:   ;
:L P[22] 800mm/sec CNT30;
:L P[23] 800mm/sec CNT30;
:   ;
:  !******************************* ;
:  !Spot #0022_L-2T ;
:  !******************************* ;
:  !**Weld ID(6) ;
:  !WAIT DI[31:OK To Weld]=ON    ;
:L P[24] 800mm/sec FINE SPOT[SD=3,P=1,S=1,ED=3];
:  !**Weld Complete    ;
:   ;
:L P[25] 800mm/sec CNT30;
:J P[26] 90% CNT30;
:J P[27] 90% FINE;

/POS
P[1] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = -1357.704 mm,    Y = 1809.932 mm,    Z = -720.968 mm,
        W = 105.000 deg,    P = -80.000 deg,    R = 70.000 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -45.000 mm
};
P[2] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = -967.723 mm,    Y = 230.226 mm,    Z = -730.949 mm,
        W = 142.867 deg,    P = -90.000 deg,    R = 30.133 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -45.000 mm
};
P[3] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = -800.683 mm,    Y = 246.798 mm,    Z = -232.080 mm,
        W = -177.848 deg,    P = -68.347 deg,    R = 26.997 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -45.000 mm
};
P[4] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,-1',
        X = -491.973 mm,    Y = 412.471 mm,    Z = 110.486 mm,
        W = -178.890 deg,    P = -44.356 deg,    R = 28.221 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -85.000 mm
};
P[5] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,-1',
        X = -95.382 mm,    Y = 213.126 mm,    Z = -362.600 mm,
        W = 180.000 deg,    P = 0.000 deg,    R = 27.837 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -85.000 mm
};
P[6] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,-1',
        X = 125.688 mm,    Y = 329.866 mm,    Z = -372.600 mm,
        W = 180.000 deg,    P = 0.000 deg,    R = 27.837 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -85.000 mm
};
P[7] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,-1',
        X = 125.688 mm,    Y = 289.866 mm,    Z = -367.600 mm,
        W = 180.000 deg,    P = 0.000 deg,    R = 27.837 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -55.000 mm
};
P[8] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,-1',
        X = 208.875 mm,    Y = 329.866 mm,    Z = -371.600 mm,
        W = 180.000 deg,    P = 0.000 deg,    R = 21.190 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -55.000 mm
};
P[9] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,-1',
        X = -83.260 mm,    Y = 216.609 mm,    Z = -366.600 mm,
        W = 180.000 deg,    P = 0.000 deg,    R = 30.987 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -85.000 mm
};
P[10] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = -179.032 mm,    Y = 179.480 mm,    Z = -390.917 mm,
        W = 165.733 deg,    P = -58.000 deg,    R = 21.191 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[11] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 256.452 mm,    Y = 47.882 mm,    Z = -564.829 mm,
        W = 12.587 deg,    P = -79.751 deg,    R = 167.216 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[12] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 230.599 mm,    Y = 54.866 mm,    Z = -389.422 mm,
        W = 12.587 deg,    P = -79.751 deg,    R = 167.216 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -35.000 mm
};
P[13] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 248.400 mm,    Y = 49.709 mm,    Z = -519.168 mm,
        W = 12.587 deg,    P = -79.751 deg,    R = 167.216 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[14] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = -230.222 mm,    Y = 159.635 mm,    Z = -798.187 mm,
        W = 21.827 deg,    P = -80.033 deg,    R = 141.815 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[15] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 71.299 mm,    Y = 146.455 mm,    Z = -807.797 mm,
        W = -39.728 deg,    P = -79.751 deg,    R = 167.216 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[16] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 62.189 mm,    Y = 267.366 mm,    Z = -642.233 mm,
        W = -12.452 deg,    P = -71.684 deg,    R = 57.810 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[17] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 84.791 mm,    Y = 303.270 mm,    Z = -514.073 mm,
        W = -56.452 deg,    P = -71.684 deg,    R = 57.810 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[18] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 96.609 mm,    Y = 329.866 mm,    Z = -418.271 mm,
        W = -56.452 deg,    P = -71.684 deg,    R = 57.810 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -35.000 mm
};
P[19] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 84.791 mm,    Y = 303.270 mm,    Z = -514.073 mm,
        W = -56.452 deg,    P = -71.684 deg,    R = 57.810 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[20] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 91.264 mm,    Y = 159.070 mm,    Z = -486.590 mm,
        W = 52.769 deg,    P = -73.321 deg,    R = -53.949 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[21] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 103.231 mm,    Y = 135.866 mm,    Z = -389.929 mm,
        W = 52.769 deg,    P = -73.321 deg,    R = -53.949 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -35.000 mm
};
P[22] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 81.130 mm,    Y = 172.993 mm,    Z = -544.066 mm,
        W = 52.769 deg,    P = -73.321 deg,    R = -53.949 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[23] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 77.582 mm,    Y = -82.696 mm,    Z = -564.186 mm,
        W = 49.710 deg,    P = -74.423 deg,    R = -50.764 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[24] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 103.231 mm,    Y = -120.134 mm,    Z = -389.929 mm,
        W = 49.710 deg,    P = -74.423 deg,    R = -50.764 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -25.000 mm
};
P[25] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = 77.582 mm,    Y = -82.696 mm,    Z = -564.186 mm,
        W = 49.710 deg,    P = -74.423 deg,    R = -50.764 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[26] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = -849.334 mm,    Y = 692.710 mm,    Z = -233.319 mm,
        W = 161.710 deg,    P = -74.423 deg,    R = -50.764 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -50.000 mm
};
P[27] {
   GP1 :
        UF : 1, UT : 1,    CONFIG : 'N U T,0,0,0',
        X = -1357.704 mm,    Y = 1809.932 mm,    Z = -720.968 mm,
        W = 105.000 deg,    P = -80.000 deg,    R = 70.000 deg
   GP2 :
        UF : 1, UT : 1,
        J1 = -85.000 mm
};

/END
