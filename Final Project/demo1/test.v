`timescale 1ns/1ps
`include "ADPLL.v"

module test;

reg RESET, REF_CLK;
reg [2:0] M;
wire OUT_CLK, LOCK;

ADPLL adpll(.REF_CLK(REF_CLK), .M(M), .RESET(RESET), .OUT_CLK(OUT_CLK), .LOCK(LOCK));

always #4 REF_CLK = ~REF_CLK;  //125MHz

initial begin
$fsdbDumpfile("demo1.fsdb");
$fsdbDumpvars;

RESET = 1'b1;
REF_CLK = 1'b0;
M = 3'd4;
#5 RESET = 1'd0;
#20000;
$finish;
end

endmodule

