*****************************************************************
* Advanced Digital IC Design                                    *
* DCO                                                           *
*****************************************************************

.INCLUDE "hspice_cells.sp"

***********************************
* Operation Condition             *
***********************************
*** Process: Typical ***
.lib "hspice_model.122" L18U18V_TT

*** Voltage: 1.8V ***
.PARAM supply=1.8v

*** Temperature: 25C ***
.TEMP 25

***********************************
* Transition Analysis             *
***********************************
.TRAN 1ps 7000ns

***********************************
* HSPICE Options                  *
***********************************
.OPTION POST PROBE
.OPTION NOMOD BRIEF MEASDGT=7 
.OPTION CAPTAB NOTOP AUTOSTOP

***********************************
* Output Signals                  *
***********************************
.probe tran v(CLK_OUT)
.probe tran v(OUT1)
.probe tran v(OUT2) 

***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS

***********************************
* Voltage Sources                 *
***********************************
vdd VDD 0 DC supply
vss VSS 0 DC 0

*** Digital Vector Input ***
.VEC "DCO.vec"

***********************************
* TOP Circuit                     *
***********************************
XG0 VDD CLK_OUT OUT1 TBUFIX1
XG1 VDD OUT1 OUT2 TBUFIX1
XG2 VDD OUT2 CLK_OUT TBUFIX1
XG3 C[0] CLK_OUT OUT1 TBUFIX1
XG4 C[1] OUT1 OUT2 TBUFIX1
XG5 C[2] OUT2 CLK_OUT TBUFIX1
XG6 C[3] CLK_OUT OUT1 TBUFIX1
XG7 C[4] OUT1 OUT2 TBUFIX1
XG8 C[5] OUT2 CLK_OUT TBUFIX1
XG9 C[6] CLK_OUT OUT1 TBUFIX1
XG10 C[7] OUT1 OUT2 TBUFIX1
XG11 C[8] OUT2 CLK_OUT TBUFIX1
XG12 C[9] CLK_OUT OUT1 TBUFIX1
XG13 C[10] OUT1 OUT2 TBUFIX1
XG14 C[11] OUT2 CLK_OUT TBUFIX1
XG15 C[12] CLK_OUT OUT1 TBUFIX1
XG16 C[13] OUT1 OUT2 TBUFIX1
XG17 C[14] OUT2 CLK_OUT TBUFIX1
XG18 C[15] CLK_OUT OUT1 TBUFIX1
XG19 C[16] OUT1 OUT2 TBUFIX1
XG20 C[17] OUT2 CLK_OUT TBUFIX1
XG21 C[18] CLK_OUT OUT1 TBUFIX1
XG22 C[19] OUT1 OUT2 TBUFIX1
XG23 C[20] OUT2 CLK_OUT TBUFIX1
XG24 C[21] CLK_OUT OUT1 TBUFIX1
XG25 C[22] OUT1 OUT2 TBUFIX1
XG26 C[23] OUT2 CLK_OUT TBUFIX1
XG27 C[24] CLK_OUT OUT1 TBUFIX1
XG28 C[25] OUT1 OUT2 TBUFIX1
XG29 C[26] OUT2 CLK_OUT TBUFIX1
XG30 C[27] CLK_OUT OUT1 TBUFIX1
XG31 C[28] OUT1 OUT2 TBUFIX1
XG32 C[29] OUT2 CLK_OUT TBUFIX1
XG33 C[30] CLK_OUT OUT1 TBUFIX1
XG34 C[31] OUT1 OUT2 TBUFIX1
XG35 C[32] OUT2 CLK_OUT TBUFIX1
XG36 C[33] CLK_OUT OUT1 TBUFIX1
XG37 C[34] OUT1 OUT2 TBUFIX1
XG38 C[35] OUT2 CLK_OUT TBUFIX1
XG39 C[36] CLK_OUT OUT1 TBUFIX1
XG40 C[37] OUT1 OUT2 TBUFIX1
XG41 C[38] OUT2 CLK_OUT TBUFIX1
XG42 C[39] CLK_OUT OUT1 TBUFIX1
XG43 C[40] OUT1 OUT2 TBUFIX1
XG44 C[41] OUT2 CLK_OUT TBUFIX1
XG45 C[42] CLK_OUT OUT1 TBUFIX1
XG46 C[43] OUT1 OUT2 TBUFIX1
XG47 C[44] OUT2 CLK_OUT TBUFIX1
XG48 C[45] CLK_OUT OUT1 TBUFIX1
XG49 C[46] OUT1 OUT2 TBUFIX1
XG50 C[47] OUT2 CLK_OUT TBUFIX1
XG51 C[48] CLK_OUT OUT1 TBUFIX1
XG52 C[49] OUT1 OUT2 TBUFIX1
XG53 C[50] OUT2 CLK_OUT TBUFIX1
XG54 C[51] CLK_OUT OUT1 TBUFIX1
XG55 C[52] OUT1 OUT2 TBUFIX1
XG56 C[53] OUT2 CLK_OUT TBUFIX1
XG57 C[54] CLK_OUT OUT1 TBUFIX1
XG58 C[55] OUT1 OUT2 TBUFIX1
XG59 C[56] OUT2 CLK_OUT TBUFIX1
XG60 C[57] CLK_OUT OUT1 TBUFIX1
XG61 C[58] OUT1 OUT2 TBUFIX1
XG62 C[59] OUT2 CLK_OUT TBUFIX1
XG63 C[60] CLK_OUT OUT1 TBUFIX1
XG64 C[61] OUT1 OUT2 TBUFIX1
XG65 C[62] OUT2 CLK_OUT TBUFIX1
XG66 C[63] CLK_OUT OUT1 TBUFIX1
XG67 C[64] OUT1 OUT2 TBUFIX1
XG68 C[65] OUT2 CLK_OUT TBUFIX1
XG69 C[66] CLK_OUT OUT1 TBUFIX1
XG70 C[67] OUT1 OUT2 TBUFIX1
XG71 C[68] OUT2 CLK_OUT TBUFIX1
XG72 C[69] CLK_OUT OUT1 TBUFIX1
XG73 C[70] OUT1 OUT2 TBUFIX1
XG74 C[71] OUT2 CLK_OUT TBUFIX1
XG75 C[72] CLK_OUT OUT1 TBUFIX1
XG76 C[73] OUT1 OUT2 TBUFIX1
XG77 C[74] OUT2 CLK_OUT TBUFIX1
XG78 C[75] CLK_OUT OUT1 TBUFIX1
XG79 C[76] OUT1 OUT2 TBUFIX1
XG80 C[77] OUT2 CLK_OUT TBUFIX1
XG81 C[78] CLK_OUT OUT1 TBUFIX1
XG82 C[79] OUT1 OUT2 TBUFIX1
XG83 C[80] OUT2 CLK_OUT TBUFIX1
XG84 C[81] CLK_OUT OUT1 TBUFIX1
XG85 C[82] OUT1 OUT2 TBUFIX1
XG86 C[83] OUT2 CLK_OUT TBUFIX1
XG87 C[84] CLK_OUT OUT1 TBUFIX1
XG88 C[85] OUT1 OUT2 TBUFIX1
XG89 C[86] OUT2 CLK_OUT TBUFIX1
XG90 C[87] CLK_OUT OUT1 TBUFIX1
XG91 C[88] OUT1 OUT2 TBUFIX1
XG92 C[89] OUT2 CLK_OUT TBUFIX1
XG93 C[90] CLK_OUT OUT1 TBUFIX1
XG94 C[91] OUT1 OUT2 TBUFIX1
XG95 C[92] OUT2 CLK_OUT TBUFIX1
XG96 C[93] CLK_OUT OUT1 TBUFIX1
XG97 C[94] OUT1 OUT2 TBUFIX1
XG98 C[95] OUT2 CLK_OUT TBUFIX1
XG99 C[96] CLK_OUT OUT1 TBUFIX1
XG100 C[97] OUT1 OUT2 TBUFIX1
XG101 C[98] OUT2 CLK_OUT TBUFIX1
XG102 C[99] CLK_OUT OUT1 TBUFIX1
XG103 C[100] OUT1 OUT2 TBUFIX1
XG104 C[101] OUT2 CLK_OUT TBUFIX1
XG105 C[102] CLK_OUT OUT1 TBUFIX1
XG106 C[103] OUT1 OUT2 TBUFIX1
XG107 C[104] OUT2 CLK_OUT TBUFIX1
XG108 C[105] CLK_OUT OUT1 TBUFIX1
XG109 C[106] OUT1 OUT2 TBUFIX1
XG110 C[107] OUT2 CLK_OUT TBUFIX1
XG111 C[108] CLK_OUT OUT1 TBUFIX1
XG112 C[109] OUT1 OUT2 TBUFIX1
XG113 C[110] OUT2 CLK_OUT TBUFIX1
XG114 C[111] CLK_OUT OUT1 TBUFIX1
XG115 C[112] OUT1 OUT2 TBUFIX1
XG116 C[113] OUT2 CLK_OUT TBUFIX1
XG117 C[114] CLK_OUT OUT1 TBUFIX1
XG118 C[115] OUT1 OUT2 TBUFIX1
XG119 C[116] OUT2 CLK_OUT TBUFIX1
XG120 C[117] CLK_OUT OUT1 TBUFIX1
XG121 C[118] OUT1 OUT2 TBUFIX1
XG122 C[119] OUT2 CLK_OUT TBUFIX1
XG123 C[120] CLK_OUT OUT1 TBUFIX1
XG124 C[121] OUT1 OUT2 TBUFIX1
XG125 C[122] OUT2 CLK_OUT TBUFIX1
XG126 C[123] CLK_OUT OUT1 TBUFIX1
XG127 C[124] OUT1 OUT2 TBUFIX1
XG128 C[125] OUT2 CLK_OUT TBUFIX1
XG129 C[126] CLK_OUT OUT1 TBUFIX1
XG130 C[127] OUT1 OUT2 TBUFIX1
XG131 C[128] OUT2 CLK_OUT TBUFIX1

***********************************
* Measurement Commands            *
***********************************
.MEAS TRAN T0 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=50n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=50n
.MEAS TRAN T1 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=100n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=100n
.MEAS TRAN T2 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=150n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=150n
.MEAS TRAN T3 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=200n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=200n
.MEAS TRAN T4 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=250n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=250n
.MEAS TRAN T5 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=300n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=300n
.MEAS TRAN T6 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=350n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=350n
.MEAS TRAN T7 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=400n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=400n
.MEAS TRAN T8 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=450n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=450n
.MEAS TRAN T9 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=500n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=500n
.MEAS TRAN T10 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=550n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=550n
.MEAS TRAN T11 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=600n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=600n
.MEAS TRAN T12 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=650n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=650n
.MEAS TRAN T13 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=700n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=700n
.MEAS TRAN T14 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=750n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=750n
.MEAS TRAN T15 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=800n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=800n
.MEAS TRAN T16 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=850n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=850n
.MEAS TRAN T17 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=900n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=900n
.MEAS TRAN T18 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=950n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=950n
.MEAS TRAN T19 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1000n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1000n
.MEAS TRAN T20 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1050n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1050n
.MEAS TRAN T21 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1100n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1100n
.MEAS TRAN T22 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1150n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1150n
.MEAS TRAN T23 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1200n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1200n
.MEAS TRAN T24 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1250n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1250n
.MEAS TRAN T25 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1300n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1300n
.MEAS TRAN T26 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1350n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1350n
.MEAS TRAN T27 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1400n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1400n
.MEAS TRAN T28 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1450n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1450n
.MEAS TRAN T29 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1500n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1500n
.MEAS TRAN T30 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1550n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1550n
.MEAS TRAN T31 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1600n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1600n
.MEAS TRAN T32 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1650n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1650n
.MEAS TRAN T33 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1700n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1700n
.MEAS TRAN T34 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1750n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1750n
.MEAS TRAN T35 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1800n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1800n
.MEAS TRAN T36 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1850n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1850n
.MEAS TRAN T37 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1900n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1900n
.MEAS TRAN T38 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=1950n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=1950n
.MEAS TRAN T39 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2000n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2000n
.MEAS TRAN T40 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2050n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2050n
.MEAS TRAN T41 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2100n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2100n
.MEAS TRAN T42 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2150n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2150n
.MEAS TRAN T43 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2200n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2200n
.MEAS TRAN T44 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2250n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2250n
.MEAS TRAN T45 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2300n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2300n
.MEAS TRAN T46 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2350n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2350n
.MEAS TRAN T47 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2400n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2400n
.MEAS TRAN T48 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2450n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2450n
.MEAS TRAN T49 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2500n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2500n
.MEAS TRAN T50 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2550n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2550n
.MEAS TRAN T51 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2600n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2600n
.MEAS TRAN T52 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2650n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2650n
.MEAS TRAN T53 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2700n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2700n
.MEAS TRAN T54 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2750n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2750n
.MEAS TRAN T55 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2800n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2800n
.MEAS TRAN T56 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2850n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2850n
.MEAS TRAN T57 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2900n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2900n
.MEAS TRAN T58 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=2950n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=2950n
.MEAS TRAN T59 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3000n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3000n
.MEAS TRAN T60 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3050n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3050n
.MEAS TRAN T61 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3100n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3100n
.MEAS TRAN T62 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3150n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3150n
.MEAS TRAN T63 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3200n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3200n
.MEAS TRAN T64 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3250n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3250n
.MEAS TRAN T65 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3300n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3300n
.MEAS TRAN T66 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3350n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3350n
.MEAS TRAN T67 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3400n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3400n
.MEAS TRAN T68 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3450n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3450n
.MEAS TRAN T69 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3500n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3500n
.MEAS TRAN T70 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3550n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3550n
.MEAS TRAN T71 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3600n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3600n
.MEAS TRAN T72 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3650n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3650n
.MEAS TRAN T73 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3700n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3700n
.MEAS TRAN T74 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3750n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3750n
.MEAS TRAN T75 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3800n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3800n
.MEAS TRAN T76 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3850n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3850n
.MEAS TRAN T77 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3900n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3900n
.MEAS TRAN T78 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=3950n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=3950n
.MEAS TRAN T79 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4000n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4000n
.MEAS TRAN T80 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4050n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4050n
.MEAS TRAN T81 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4100n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4100n
.MEAS TRAN T82 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4150n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4150n
.MEAS TRAN T83 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4200n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4200n
.MEAS TRAN T84 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4250n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4250n
.MEAS TRAN T85 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4300n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4300n
.MEAS TRAN T86 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4350n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4350n
.MEAS TRAN T87 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4400n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4400n
.MEAS TRAN T88 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4450n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4450n
.MEAS TRAN T89 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4500n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4500n
.MEAS TRAN T90 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4550n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4550n
.MEAS TRAN T91 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4600n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4600n
.MEAS TRAN T92 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4650n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4650n
.MEAS TRAN T93 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4700n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4700n
.MEAS TRAN T94 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4750n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4750n
.MEAS TRAN T95 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4800n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4800n
.MEAS TRAN T96 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4850n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4850n
.MEAS TRAN T97 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4900n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4900n
.MEAS TRAN T98 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=4950n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=4950n
.MEAS TRAN T99 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5000n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5000n
.MEAS TRAN T100 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5050n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5050n
.MEAS TRAN T101 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5100n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5100n
.MEAS TRAN T102 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5150n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5150n
.MEAS TRAN T103 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5200n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5200n
.MEAS TRAN T104 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5250n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5250n
.MEAS TRAN T105 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5300n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5300n
.MEAS TRAN T106 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5350n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5350n
.MEAS TRAN T107 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5400n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5400n
.MEAS TRAN T108 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5450n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5450n
.MEAS TRAN T109 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5500n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5500n
.MEAS TRAN T110 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5550n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5550n
.MEAS TRAN T111 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5600n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5600n
.MEAS TRAN T112 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5650n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5650n
.MEAS TRAN T113 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5700n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5700n
.MEAS TRAN T114 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5750n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5750n
.MEAS TRAN T115 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5800n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5800n
.MEAS TRAN T116 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5850n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5850n
.MEAS TRAN T117 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5900n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5900n
.MEAS TRAN T118 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=5950n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=5950n
.MEAS TRAN T119 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6000n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6000n
.MEAS TRAN T120 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6050n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6050n
.MEAS TRAN T121 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6100n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6100n
.MEAS TRAN T122 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6150n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6150n
.MEAS TRAN T123 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6200n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6200n
.MEAS TRAN T124 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6250n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6250n
.MEAS TRAN T125 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6300n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6300n
.MEAS TRAN T126 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6350n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6350n
.MEAS TRAN T127 TRIG V(CLK_OUT) val='supply*0.5' rise=3 TD=6400n
+             TARG V(CLK_OUT) val='supply*0.5' rise=4 TD=6400n

*** Average && Peak Power ***
.MEAS tran avg_power avg par('v(VDD)*i(VDD)') FROM=0ns TO=7000ns
.MEAS tran max_power min par('v(VDD)*i(VDD)') FROM=0ns TO=7000ns

***********************************
* .ALTER                          *
***********************************
.ALTER
.DEL LIB "hspice_model.122" L18U18V_TT
.LIB "hspice_model.122" L18U18V_SS
.PARAM supply=1.62v
.TEMP 125

.ALTER
.DEL LIB "hspice_model.122" L18U18V_SS
.LIB "hspice_model.122" L18U18V_FF
.PARAM supply=1.98v
.TEMP 0

.end
