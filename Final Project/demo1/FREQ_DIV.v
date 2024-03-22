//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: Frequency Divider                         //
//------------------------------------------------------//

`timescale 1ns/1ps
module FREQ_DIV(reset, clk, M, out_clk);

input         reset;
input	      clk;
input	[2:0] M;
output reg out_clk;

//Write Your Programmable Counter-based Frequency Divider Here
reg [2:0] p_count;
reg n_clk, sp_clk;

//p_count
always@(posedge clk or posedge reset) begin
    if(reset)
        p_count <= 3'd0;
    else if(p_count == 0)
        p_count <= M - 3'd1;
    else 
        p_count <= p_count - 3'd1;
end

always@(posedge clk or posedge reset) begin
    if(reset) 
        n_clk <= 1'b0;
    else if(p_count == 3'd0)
        n_clk <= 1'b1;
    else
        n_clk <= 1'b0;
end

always@(*) begin
    if(reset) 
        sp_clk = 1'b0;
    else
		sp_clk = clk;
end
    
always@(*) begin
	if(M == 3'd1)	
		out_clk = sp_clk;
	else
		out_clk = n_clk;
end

endmodule
