*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Exercise: Phase/Frequency Detector                  *
*******************************************************

***********************************
* Operation Condition             *
***********************************
*** Process: Typical ***
.lib "ultrasim_model.122" L18U18V_TT
*.lib "ultrasim_model.122" L18U18V_FF
*.lib "ultrasim_model.122" L18U18V_SS

*** Voltage: 1.8V ***
.PARAM supply=1.8v

*** Temperature: 25C ***
.TEMP 25

***********************************
* Transition Analysis             *
***********************************
.TRAN 1ps 1000ns

***********************************
* UltraSIM Simulation Options     *
***********************************
*ultrasim: .usim_opt  sim_mode=ms
*ultrasim: .usim_opt  postl=2 analog=0 speed=5

***********************************
* UltraSIM Output Options         *
***********************************
*ultrasim: .usim_opt  wf_format=fsdb 
*ultrasim: .usim_opt  wf_tres=1p
*ultrasim: .usim_opt  vh=0.9
*ultrasim: .usim_opt  vl=0.9

*ultrasim: .lprobe v(IN) v(FB) v(flagU) v(flagD) v(QU) v(QD) v(CDN) v(OUTU) v(OUTD) v(OUTBU) v(OUTBD) v(RESET_B) preserve=port

***********************************
* Output Analog Signals           *
***********************************
*.probe tran v(IN) v(FB) 

***********************************
* Measurement Commands            *
***********************************
*** Average && Peak Power ***
.MEAS tran avg_power avg par('v(VDD)*i(VDD)')
.MEAS tran max_power min par('v(VDD)*i(VDD)')

***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
*vin      IN   0  PULSE(0 supply 0    0.1n 0.1n 49.9n 100n)
*vfb      FB   0  PULSE(0 supply 0.2n 0.1n 0.1n 49.9n 100n)
*.VEC "Input.vec"
.VEC "DeadZone.vec"

***********************************
* TOP Circuit                     *
***********************************
XDFF0 IN VDD CDN QUN QU DFFRX4
XDFF1 FB VDD CDN QDN QD DFFRX4

XNAND0  QU QD    CDN_p NAND2X1
XNAND1  QU QDbar OUTU  NAND2X1
XNAND2  QU QDbar OUTU  NAND2X1
XNAND3  QU QDbar OUTU  NAND2X1
XNAND4  QU QDbar OUTU  NAND2X1
XNAND5  QU QDbar OUTU  NAND2X1
XNAND6  QU QDbar OUTU  NAND2X1
XNAND7  QU QDbar OUTU  NAND2X1

XNAND8  QD QUbar OUTD  NAND2X1
XNAND9  QD QUbar OUTD  NAND2X1
XNAND10 QD QUbar OUTD  NAND2X1
XNAND11 QD QUbar OUTD  NAND2X1
XNAND12 QD QUbar OUTD  NAND2X1
XNAND13 QD QUbar OUTD  NAND2X1
XNAND14 QD QUbar OUTD  NAND2X1
XNAND15 QD QUbar OUTD  NAND2X1

XAND0 RESET_B CDN_p CDN AND2X1

XINV0 QU QUbar CLKINVX4
XINV1 QD QDbar CLKINVX4

***********************************
* Digital Pulse Amplifier         *
***********************************
XBUF0  OUTU   OUTUD0 BUFX1
XAND1  OUTUD0 OUTU   OUTUD1 AND2X1 
XAND2  OUTUD1 OUTUD0 OUTUD2 AND2X1
XAND3  OUTUD2 OUTUD1 OUTUD3 AND2X1
XAND4  OUTUD3 OUTUD2 OUTUD4 AND2X1
XAND5  OUTUD4 OUTUD3 OUTUD5 AND2X1
XAND6  OUTUD5 OUTUD4 OUTBU  AND2X1

XBUF1  OUTD   OUTDD0 BUFX1
XAND7  OUTDD0 OUTD   OUTDD1 AND2X1 
XAND8  OUTDD1 OUTDD0 OUTDD2 AND2X1
XAND9  OUTDD2 OUTDD1 OUTDD3 AND2X1
XAND10 OUTDD3 OUTDD2 OUTDD4 AND2X1
XAND11 OUTDD4 OUTDD3 OUTDD5 AND2X1
XAND12 OUTDD5 OUTDD4 OUTDD6 AND2X1
XAND13 OUTDD6 OUTDD5 OUTBD  AND2X1

***********************************
* After Pulse                     *
***********************************
XDFF2 IN VDD OUTBU flagUN flagU DFFRX4
XDFF3 FB VDD OUTBD flagDN flagD DFFRX4

.INCLUDE "ultrasim_cells.sp"

.END

