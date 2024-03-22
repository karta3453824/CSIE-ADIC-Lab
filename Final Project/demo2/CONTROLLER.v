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
output [7:0]   dco_code;
output         freq_lock;
output         polarity;

//Write Your PLL Controller Here
reg [7:0] dco_code;
reg freq_lock;
reg polarity;

reg [4:0] step;
reg start;
reg ps;  //previous state
reg [7:0] code_up;

reg [7:0] anchor_reg;
reg [2:0] anchor_cnt;
reg lock_flag;

always@(posedge reset or negedge phase_clk) begin
	if(reset)
		lock_flag <= 1'b0;
	else if(freq_lock && !lock_flag)
		lock_flag <= 1'b1;
end

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
        step <= 5'd8;
    else if(polarity && (!freq_lock) && (step > 5'd1))
        step <= step >> 1;
end

always@(posedge reset or negedge phase_clk) begin
    if(reset) begin
        dco_code <= 8'd63;
        code_up <= 8'd64;
    end
    else if(lock_flag && polarity) begin
		dco_code <= anchor_reg;
		code_up <= 8'd127 - anchor_reg; 
	end
    else if(p_up == 1'b0) begin
        if(step <= code_up) begin
            dco_code <= dco_code + step;
            code_up <= code_up - step;
        end 
        else begin
            dco_code <= 8'd127;
            code_up <= 8'd0;
        end
    end
    else if(p_down == 1'b0) begin
        if(step <= dco_code) begin
            dco_code <= dco_code - step;
            code_up <= code_up + step;
        end
        else begin
            dco_code <= 8'd0;
            code_up <= 8'd127;
		end
    end
end

always@(posedge reset or negedge phase_clk) begin
    if(reset)
        freq_lock <= 1'b0;
    else if(step == 5'd1)
        freq_lock <= 1'b1;
end

always@(posedge reset or negedge phase_clk) begin
	if(reset)
		anchor_reg <= 8'd0;
	else if(freq_lock && !lock_flag)
		anchor_reg <= dco_code;
    else if(anchor_cnt == 3'd3 && (!p_up) && (!ps) && anchor_reg < 8'd127)
		anchor_reg <= anchor_reg + 8'd1;
    else if(anchor_cnt == 3'd3 && (!p_down) && ps && anchor_reg > 8'd0)
		anchor_reg <= anchor_reg - 8'd1;
end

always@(posedge reset or negedge phase_clk) begin
	if(reset)
		anchor_cnt <= 3'd0;
	else if(freq_lock && anchor_cnt == 3'd4)
		anchor_cnt <= 3'd0;
    else if(freq_lock && ((!p_up) && (!ps) || (!p_down) && ps))    
        anchor_cnt <= anchor_cnt + 3'd1;
	else
		anchor_cnt <= 3'd0;
end	

endmodule

