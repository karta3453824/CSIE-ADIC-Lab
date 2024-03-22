//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: PLL Controller                            //
//------------------------------------------------------//

`timescale 1ns/1ps
module CONTROLLER(reset, phase_clk, p_up, p_down, 
                  dco_code, freq_lock, polarity);

input	       reset, phase_clk;
input          p_up, p_down;
output [4:0]   dco_code;
output         freq_lock;
output         polarity;

//Write Your PLL Controller Here
reg [4:0] dco_code;
reg freq_lock;
reg polarity;

reg [4:0] step;
reg start;
reg ps;
reg [4:0] code_up;

always@(posedge reset or negedge phase_clk) begin
    if(reset)
        start <= 1'b0;
    else
        start <= 1'b1;
end

always@(posedge reset or negedge phase_clk) begin
    if(reset)
        ps <= 1'b0;
    else if(!p_up)
        ps <= 1'b0;
    else if(!p_down)
        ps <= 1'b1;
end

always@(posedge reset or negedge phase_clk) begin
    if(reset)
        polarity <= 1'b0;
    else if((!p_up) && ps && start)
        polarity <= 1'b1;
    else if((!p_down) && (!ps) && start)
        polarity <= 1'b1;
    else
        polarity <= 1'b0;
end

always@(posedge reset or negedge phase_clk) begin
    if(reset)
        step <= 5'd4;
    else if(polarity && (!freq_lock))
        step <= step >> 1;
end

always@(posedge reset or negedge phase_clk) begin
    if(reset) begin
        dco_code <= 5'd16;
        code_up <= 5'd15;
    end
    else if(p_up == 1'b0) begin
        if(step <= code_up) begin
            dco_code <= dco_code + step;
            code_up <= code_up - step;
        end 
        else begin
            dco_code <= 5'd31;
            code_up <= 5'd0;
        end
    end
    else if(p_down == 1'b0) begin
        if(step <= dco_code) begin
            dco_code <= dco_code - step;
            code_up <= code_up + step;
        end
        else begin
            dco_code <= 5'd0;
            code_up <= 5'd31;
        end
    end
end

always@(posedge reset or negedge phase_clk) begin
    if(reset)
        freq_lock <= 1'b0;
    else if(step == 5'd1)
        freq_lock <= 1'b1;
end

endmodule
