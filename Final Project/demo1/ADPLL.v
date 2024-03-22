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
DCO dco(.reset(RESET), .coarse(control_code), .dco_out(OUT_CLK));
FREQ_DIV freq_div(.reset(RESET), .clk(OUT_CLK), .M(M), .out_clk(Out_divM));

endmodule