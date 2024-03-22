`include "DCO.v"
`include "PFD.v"
`include "FREQ_DIV.v"
`include "CONTROLLER.v" 
`include "CONVERTER.v"
`timescale 1ns/1ps

module ADPLL(REF_CLK, M , RESET, OUT_CLK, LOCK);

input REF_CLK, RESET;
input [2:0] M;
output OUT_CLK, LOCK;
wire [7:0] dco_code;
wire [128:0] control_code;

PFD pfd(.RESET(RESET), .IN(REF_CLK), .FB(Out_divM), .flagU(flagU), .flagD(flagD), .phase_clk(phase_clk));
CONTROLLER controller(.reset(RESET), .phase_clk(phase_clk), .p_up(flagU), .p_down(flagD), .dco_code(dco_code), .freq_lock(LOCK), .polarity(polarity));
CONVERTER converter(.in_8_code(dco_code), .out_129_code(control_code));
DCO dco(.reset(RESET), .CODE_0(control_code[0]), .CODE_1(control_code[1]), .CODE_2(control_code[2]), .CODE_3(control_code[3]), .CODE_4(control_code[4]), .CODE_5(control_code[5]), .CODE_6(control_code[6]), .CODE_7(control_code[7]), .CODE_8(control_code[8]), .CODE_9(control_code[9]), .CODE_10(control_code[10]),
.CODE_11(control_code[11]), .CODE_12(control_code[12]), .CODE_13(control_code[13]), .CODE_14(control_code[14]), .CODE_15(control_code[15]), .CODE_16(control_code[16]), .CODE_17(control_code[17]), .CODE_18(control_code[18]), .CODE_19(control_code[19]), .CODE_20(control_code[20]),
.CODE_21(control_code[21]), .CODE_22(control_code[22]), .CODE_23(control_code[23]), .CODE_24(control_code[24]), .CODE_25(control_code[25]), .CODE_26(control_code[26]), .CODE_27(control_code[27]), .CODE_28(control_code[28]), .CODE_29(control_code[29]), .CODE_30(control_code[30]),
.CODE_31(control_code[31]), .CODE_32(control_code[32]), .CODE_33(control_code[33]), .CODE_34(control_code[34]), .CODE_35(control_code[35]), .CODE_36(control_code[36]), .CODE_37(control_code[37]), .CODE_38(control_code[38]), .CODE_39(control_code[39]), .CODE_40(control_code[40]),
.CODE_41(control_code[41]), .CODE_42(control_code[42]), .CODE_43(control_code[43]), .CODE_44(control_code[44]), .CODE_45(control_code[45]), .CODE_46(control_code[46]), .CODE_47(control_code[47]), .CODE_48(control_code[48]), .CODE_49(control_code[49]), .CODE_50(control_code[50]),
.CODE_51(control_code[51]), .CODE_52(control_code[52]), .CODE_53(control_code[53]), .CODE_54(control_code[54]), .CODE_55(control_code[55]), .CODE_56(control_code[56]), .CODE_57(control_code[57]), .CODE_58(control_code[58]), .CODE_59(control_code[59]), .CODE_60(control_code[60]),
.CODE_61(control_code[61]), .CODE_62(control_code[62]), .CODE_63(control_code[63]), .CODE_64(control_code[64]), .CODE_65(control_code[65]), .CODE_66(control_code[66]), .CODE_67(control_code[67]), .CODE_68(control_code[68]), .CODE_69(control_code[69]), .CODE_70(control_code[70]),
.CODE_71(control_code[71]), .CODE_72(control_code[72]), .CODE_73(control_code[73]), .CODE_74(control_code[74]), .CODE_75(control_code[75]), .CODE_76(control_code[76]), .CODE_77(control_code[77]), .CODE_78(control_code[78]), .CODE_79(control_code[79]), .CODE_80(control_code[80]),
.CODE_81(control_code[81]), .CODE_82(control_code[82]), .CODE_83(control_code[83]), .CODE_84(control_code[84]), .CODE_85(control_code[85]), .CODE_86(control_code[86]), .CODE_87(control_code[87]), .CODE_88(control_code[88]), .CODE_89(control_code[89]), .CODE_90(control_code[90]),
.CODE_91(control_code[91]), .CODE_92(control_code[92]), .CODE_93(control_code[93]), .CODE_94(control_code[94]), .CODE_95(control_code[95]), .CODE_96(control_code[96]), .CODE_97(control_code[97]), .CODE_98(control_code[98]), .CODE_99(control_code[99]), .CODE_100(control_code[100]),
.CODE_101(control_code[101]), .CODE_102(control_code[102]), .CODE_103(control_code[103]), .CODE_104(control_code[104]), .CODE_105(control_code[105]), .CODE_106(control_code[106]), .CODE_107(control_code[107]), .CODE_108(control_code[108]), .CODE_109(control_code[109]), .CODE_110(control_code[110]),
.CODE_111(control_code[111]), .CODE_112(control_code[112]), .CODE_113(control_code[113]), .CODE_114(control_code[114]), .CODE_115(control_code[115]), .CODE_116(control_code[116]), .CODE_117(control_code[117]), .CODE_118(control_code[118]), .CODE_119(control_code[119]), .CODE_120(control_code[120]),
.CODE_121(control_code[121]), .CODE_122(control_code[122]), .CODE_123(control_code[123]), .CODE_124(control_code[124]), .CODE_125(control_code[125]), .CODE_126(control_code[126]), .CODE_127(control_code[127]), .CODE_128(control_code[128]), .dco_out(OUT_CLK));
FREQ_DIV freq_div(.reset(RESET), .clk(OUT_CLK), .M(M), .out_clk(Out_divM));

endmodule