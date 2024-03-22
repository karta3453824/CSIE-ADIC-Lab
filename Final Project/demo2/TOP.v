`include "MONITOR.v"
`include "ADPLL.v"
`timescale 1ns/1ps

module TOP;

wire [2:0] M;

ADPLL adpll(.REF_CLK(REF_CLK), .RESET(RESET), .M(M), .OUT_CLK(OUT_CLK), .FREQ_LOCK(LOCK));
MONITOR monitor(.RESET(RESET), .REF_CLK(REF_CLK), .M(M));

endmodule
