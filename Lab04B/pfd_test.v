//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: PFD Modeling                              //
//------------------------------------------------------//

//Include Sub modules
`include "pfd_model.v"

`timescale 1ns/1ps
module pfd_test;

reg RESET, in, fb;
wire flagu, flagd;

reg [3:0] frequency;
reg [2:0] counter;

pfd_model pfd(.reset(RESET), .in(in), .fb(fb), .flagu(flagu) ,.flagd(flagd));

always #1 in = ~in;

always@(in) fb = #(frequency * 0.001) in;  //phase difference

always@(posedge flagu or posedge flagd) begin
    if(!RESET) 
        counter <= 3'd0;
    else if(counter == 3'd5) 
        counter <= 3'd0;
    else 
        counter <= counter + 3'd1;
end

always@(posedge fb) begin
    if(counter == 3'd5) 
        frequency <= frequency - 4'd1;
end

initial begin
$fsdbDumpfile("pfd.fsdb");
$fsdbDumpvars;

RESET = 1'b0;
in = 1'b0;
fb = 1'b0; 
counter = 3'd0;
frequency = 4'd15;

#15 RESET = 1'b1;
#2000;
#15 $finish;
end

endmodule
            
