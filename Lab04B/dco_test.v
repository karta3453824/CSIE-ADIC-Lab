//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: DCO Modeling                              //
//------------------------------------------------------//

`include "dco_model.v"

`timescale 1ns/1ps
module dco_test;

reg RESET;
reg [128:0] COARSE;
reg [3:0] counter;

dco_model dco(.reset(RESET), .coarse(COARSE), .dco_out(DCO_OUT));

always@(negedge DCO_OUT or negedge RESET) begin
    if(!RESET) begin
        counter <= 4'd0;
        COARSE <= 129'd0;
    end
    else if(counter == 4'd10) begin
        COARSE <= (COARSE << 1'b1) + 1'b1;
        counter <= 4'd0; //clear counter
    end
    else
        counter <= counter + 1'b1;
end

initial begin
    //WaveDump all signals
    $fsdbDumpfile("DCO.fsdb");
    $fsdbDumpvars;

    RESET = 1'b0; COARSE = 129'd0;
    #15 RESET = 1'b1;
    //TEST DCO control code
    #7000;
    #15 $finish;
end

endmodule