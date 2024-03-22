*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Exercise: PFD	with Spice                            *
*******************************************************

***********************************
* TOP Circuit                     *
***********************************
.SUBCKT PFD RESET IN FB flagU flagD phase_clk
XR RESET RESET_B CLKINVX1

XDFF0 IN VDD CDN QUN QU DFFRX4
XDFF1 FB VDD CDN QDN QD DFFRX4

XAND0 RESET_B CDN_p CDN AND2X1

XINV0 QU QUbar CLKINVX4
XINV1 QD QDbar CLKINVX4

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

XAMP0 OUTU OUTBU AMP
XAMP1 OUTD OUTBD AMP

XDFF2 IN VDD OUTBU flagUN flagU DFFRX4
XDFF3 FB VDD OUTBD flagDN flagD DFFRX4

XAND7 flagU flagD phase_clk AND2X1
.ENDS

***********************************
* Digital Pulse Amplifier         *
***********************************
.SUBCKT AMP A B
XBUF0 A OUTUD0 BUFX1
XAND1 OUTUD0 A      OUTUD1 AND2X1 
XAND2 OUTUD1 OUTUD0 OUTUD2 AND2X1
XAND3 OUTUD2 OUTUD1 OUTUD3 AND2X1
XAND4 OUTUD3 OUTUD2 OUTUD4 AND2X1
XAND5 OUTUD4 OUTUD3 OUTUD5 AND2X1
XAND6 OUTUD5 OUTUD4 B      AND2X1
.ENDS

.END

