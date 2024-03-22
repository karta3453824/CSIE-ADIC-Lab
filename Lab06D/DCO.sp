*****************************************************************
* Advanced Digital IC Design                                    *
* DCO                                                           *
*****************************************************************

.INCLUDE"ultrasim_cells.sp"

*** Voltage: 1.8V ***
.PARAM supply=1.8v

*** Temperature: 25C ***
.TEMP 25

***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS

***********************************
* Voltage Sources                 *
***********************************
vdd VDD 0 DC supply
vss VSS 0 DC 0

***********************************
* TOP Circuit                     *
***********************************
.SUBCKT DCO 
+ reset
+ CODE_0 CODE_1 CODE_2
+ CODE_3 CODE_4 CODE_5
+ CODE_6 CODE_7 CODE_8
+ CODE_9 CODE_10 CODE_11
+ CODE_12 CODE_13 CODE_14
+ CODE_15 CODE_16 CODE_17
+ CODE_18 CODE_19 CODE_20
+ CODE_21 CODE_22 CODE_23
+ CODE_24 CODE_25 CODE_26
+ CODE_27 CODE_28 CODE_29
+ CODE_30 CODE_31 CODE_32
+ CODE_33 CODE_34 CODE_35
+ CODE_36 CODE_37 CODE_38
+ CODE_39 CODE_40 CODE_41
+ CODE_42 CODE_43 CODE_44
+ CODE_45 CODE_46 CODE_47
+ CODE_48 CODE_49 CODE_50
+ CODE_51 CODE_52 CODE_53
+ CODE_54 CODE_55 CODE_56
+ CODE_57 CODE_58 CODE_59
+ CODE_60 CODE_61 CODE_62
+ CODE_63 CODE_64 CODE_65
+ CODE_66 CODE_67 CODE_68
+ CODE_69 CODE_70 CODE_71
+ CODE_72 CODE_73 CODE_74
+ CODE_75 CODE_76 CODE_77
+ CODE_78 CODE_79 CODE_80
+ CODE_81 CODE_82 CODE_83
+ CODE_84 CODE_85 CODE_86
+ CODE_87 CODE_88 CODE_89
+ CODE_90 CODE_91 CODE_92
+ CODE_93 CODE_94 CODE_95
+ CODE_96 CODE_97 CODE_98
+ CODE_99 CODE_100 CODE_101
+ CODE_102 CODE_103 CODE_104
+ CODE_105 CODE_106 CODE_107
+ CODE_108 CODE_109 CODE_110
+ CODE_111 CODE_112 CODE_113
+ CODE_114 CODE_115 CODE_116
+ CODE_117 CODE_118 CODE_119
+ CODE_120 CODE_121 CODE_122
+ CODE_123 CODE_124 CODE_125
+ CODE_126 CODE_127 CODE_128
+ FSK_OUT

XR reset reset_b INVX1
XA reset_b FSK_OUT OUT0 AND2X1

XT0 CODE_0 OUT0 OUT1 TBUFIX1
XT1 CODE_1 OUT1 OUT2 TBUFIX1
XT2 CODE_2 OUT2 FSK_OUT TBUFIX1
XT3 CODE_3 OUT0 OUT1 TBUFIX1
XT4 CODE_4 OUT1 OUT2 TBUFIX1
XT5 CODE_5 OUT2 FSK_OUT TBUFIX1
XT6 CODE_6 OUT0 OUT1 TBUFIX1
XT7 CODE_7 OUT1 OUT2 TBUFIX1
XT8 CODE_8 OUT2 FSK_OUT TBUFIX1
XT9 CODE_9 OUT0 OUT1 TBUFIX1
XT10 CODE_10 OUT1 OUT2 TBUFIX1
XT11 CODE_11 OUT2 FSK_OUT TBUFIX1
XT12 CODE_12 OUT0 OUT1 TBUFIX1
XT13 CODE_13 OUT1 OUT2 TBUFIX1
XT14 CODE_14 OUT2 FSK_OUT TBUFIX1
XT15 CODE_15 OUT0 OUT1 TBUFIX1
XT16 CODE_16 OUT1 OUT2 TBUFIX1
XT17 CODE_17 OUT2 FSK_OUT TBUFIX1
XT18 CODE_18 OUT0 OUT1 TBUFIX1
XT19 CODE_19 OUT1 OUT2 TBUFIX1
XT20 CODE_20 OUT2 FSK_OUT TBUFIX1
XT21 CODE_21 OUT0 OUT1 TBUFIX1
XT22 CODE_22 OUT1 OUT2 TBUFIX1
XT23 CODE_23 OUT2 FSK_OUT TBUFIX1
XT24 CODE_24 OUT0 OUT1 TBUFIX1
XT25 CODE_25 OUT1 OUT2 TBUFIX1
XT26 CODE_26 OUT2 FSK_OUT TBUFIX1
XT27 CODE_27 OUT0 OUT1 TBUFIX1
XT28 CODE_28 OUT1 OUT2 TBUFIX1
XT29 CODE_29 OUT2 FSK_OUT TBUFIX1
XT30 CODE_30 OUT0 OUT1 TBUFIX1
XT31 CODE_31 OUT1 OUT2 TBUFIX1
XT32 CODE_32 OUT2 FSK_OUT TBUFIX1
XT33 CODE_33 OUT0 OUT1 TBUFIX1
XT34 CODE_34 OUT1 OUT2 TBUFIX1
XT35 CODE_35 OUT2 FSK_OUT TBUFIX1
XT36 CODE_36 OUT0 OUT1 TBUFIX1
XT37 CODE_37 OUT1 OUT2 TBUFIX1
XT38 CODE_38 OUT2 FSK_OUT TBUFIX1
XT39 CODE_39 OUT0 OUT1 TBUFIX1
XT40 CODE_40 OUT1 OUT2 TBUFIX1
XT41 CODE_41 OUT2 FSK_OUT TBUFIX1
XT42 CODE_42 OUT0 OUT1 TBUFIX1
XT43 CODE_43 OUT1 OUT2 TBUFIX1
XT44 CODE_44 OUT2 FSK_OUT TBUFIX1
XT45 CODE_45 OUT0 OUT1 TBUFIX1
XT46 CODE_46 OUT1 OUT2 TBUFIX1
XT47 CODE_47 OUT2 FSK_OUT TBUFIX1
XT48 CODE_48 OUT0 OUT1 TBUFIX1
XT49 CODE_49 OUT1 OUT2 TBUFIX1
XT50 CODE_50 OUT2 FSK_OUT TBUFIX1
XT51 CODE_51 OUT0 OUT1 TBUFIX1
XT52 CODE_52 OUT1 OUT2 TBUFIX1
XT53 CODE_53 OUT2 FSK_OUT TBUFIX1
XT54 CODE_54 OUT0 OUT1 TBUFIX1
XT55 CODE_55 OUT1 OUT2 TBUFIX1
XT56 CODE_56 OUT2 FSK_OUT TBUFIX1
XT57 CODE_57 OUT0 OUT1 TBUFIX1
XT58 CODE_58 OUT1 OUT2 TBUFIX1
XT59 CODE_59 OUT2 FSK_OUT TBUFIX1
XT60 CODE_60 OUT0 OUT1 TBUFIX1
XT61 CODE_61 OUT1 OUT2 TBUFIX1
XT62 CODE_62 OUT2 FSK_OUT TBUFIX1
XT63 CODE_63 OUT0 OUT1 TBUFIX1
XT64 CODE_64 OUT1 OUT2 TBUFIX1
XT65 CODE_65 OUT2 FSK_OUT TBUFIX1
XT66 CODE_66 OUT0 OUT1 TBUFIX1
XT67 CODE_67 OUT1 OUT2 TBUFIX1
XT68 CODE_68 OUT2 FSK_OUT TBUFIX1
XT69 CODE_69 OUT0 OUT1 TBUFIX1
XT70 CODE_70 OUT1 OUT2 TBUFIX1
XT71 CODE_71 OUT2 FSK_OUT TBUFIX1
XT72 CODE_72 OUT0 OUT1 TBUFIX1
XT73 CODE_73 OUT1 OUT2 TBUFIX1
XT74 CODE_74 OUT2 FSK_OUT TBUFIX1
XT75 CODE_75 OUT0 OUT1 TBUFIX1
XT76 CODE_76 OUT1 OUT2 TBUFIX1
XT77 CODE_77 OUT2 FSK_OUT TBUFIX1
XT78 CODE_78 OUT0 OUT1 TBUFIX1
XT79 CODE_79 OUT1 OUT2 TBUFIX1
XT80 CODE_80 OUT2 FSK_OUT TBUFIX1
XT81 CODE_81 OUT0 OUT1 TBUFIX1
XT82 CODE_82 OUT1 OUT2 TBUFIX1
XT83 CODE_83 OUT2 FSK_OUT TBUFIX1
XT84 CODE_84 OUT0 OUT1 TBUFIX1
XT85 CODE_85 OUT1 OUT2 TBUFIX1
XT86 CODE_86 OUT2 FSK_OUT TBUFIX1
XT87 CODE_87 OUT0 OUT1 TBUFIX1
XT88 CODE_88 OUT1 OUT2 TBUFIX1
XT89 CODE_89 OUT2 FSK_OUT TBUFIX1
XT90 CODE_90 OUT0 OUT1 TBUFIX1
XT91 CODE_91 OUT1 OUT2 TBUFIX1
XT92 CODE_92 OUT2 FSK_OUT TBUFIX1
XT93 CODE_93 OUT0 OUT1 TBUFIX1
XT94 CODE_94 OUT1 OUT2 TBUFIX1
XT95 CODE_95 OUT2 FSK_OUT TBUFIX1
XT96 CODE_96 OUT0 OUT1 TBUFIX1
XT97 CODE_97 OUT1 OUT2 TBUFIX1
XT98 CODE_98 OUT2 FSK_OUT TBUFIX1
XT99 CODE_99 OUT0 OUT1 TBUFIX1
XT100 CODE_100 OUT1 OUT2 TBUFIX1
XT101 CODE_101 OUT2 FSK_OUT TBUFIX1
XT102 CODE_102 OUT0 OUT1 TBUFIX1
XT103 CODE_103 OUT1 OUT2 TBUFIX1
XT104 CODE_104 OUT2 FSK_OUT TBUFIX1
XT105 CODE_105 OUT0 OUT1 TBUFIX1
XT106 CODE_106 OUT1 OUT2 TBUFIX1
XT107 CODE_107 OUT2 FSK_OUT TBUFIX1
XT108 CODE_108 OUT0 OUT1 TBUFIX1
XT109 CODE_109 OUT1 OUT2 TBUFIX1
XT110 CODE_110 OUT2 FSK_OUT TBUFIX1
XT111 CODE_111 OUT0 OUT1 TBUFIX1
XT112 CODE_112 OUT1 OUT2 TBUFIX1
XT113 CODE_113 OUT2 FSK_OUT TBUFIX1
XT114 CODE_114 OUT0 OUT1 TBUFIX1
XT115 CODE_115 OUT1 OUT2 TBUFIX1
XT116 CODE_116 OUT2 FSK_OUT TBUFIX1
XT117 CODE_117 OUT0 OUT1 TBUFIX1
XT118 CODE_118 OUT1 OUT2 TBUFIX1
XT119 CODE_119 OUT2 FSK_OUT TBUFIX1
XT120 CODE_120 OUT0 OUT1 TBUFIX1
XT121 CODE_121 OUT1 OUT2 TBUFIX1
XT122 CODE_122 OUT2 FSK_OUT TBUFIX1
XT123 CODE_123 OUT0 OUT1 TBUFIX1
XT124 CODE_124 OUT1 OUT2 TBUFIX1
XT125 CODE_125 OUT2 FSK_OUT TBUFIX1
XT126 CODE_126 OUT0 OUT1 TBUFIX1
XT127 CODE_127 OUT1 OUT2 TBUFIX1
XT128 CODE_128 OUT2 FSK_OUT TBUFIX1

XT129 VDD OUT0 OUT1 TBUFIX1
XT130 VDD OUT1 OUT2 TBUFIX1
XT131 VDD OUT2 FSK_OUT TBUFIX1
.ends DCO

.END
