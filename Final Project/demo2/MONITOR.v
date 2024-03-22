`timescale 1ns/1ps

module MONITOR(RESET, REF_CLK, M);

output reg RESET, REF_CLK;
output reg [2:0] M;
   
always #4 REF_CLK = ~REF_CLK;  //125MHz

initial begin
$dumpfile("demo2.vcd");
$dumpvars;

RESET = 1'b1; 
REF_CLK = 1'b0;
M = 3'd6;
#5 RESET = 1'b0;
#20000 $finish;
end

endmodule
