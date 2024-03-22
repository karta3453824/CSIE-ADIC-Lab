//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: PFD Modeling                              //
//------------------------------------------------------//

`timescale 1ns/1ps
module PFD(RESET, IN, FB, flagU, flagD, phase_clk);

input RESET, IN, FB;
output reg flagU, flagD, phase_clk;

reg QU, QD, OUTU, OUTD;
wire OUTBU, OUTBD;
wire CDN;

assign CDN = (!RESET) && !(QU && QD);

always@(*) begin
    phase_clk = flagU && flagD;
end

always@(posedge IN or negedge CDN) begin
    if(RESET)
        QU <= 1'b0;
    else if(!CDN)
        QU <= #0.5 1'b0;
    else
        QU <= #0.5 1'b1;
end

always@(posedge FB or negedge CDN) begin
    if(RESET)
        QD <= 1'b0;
    else if(!CDN)
        QD <= #0.5 1'b0;
    else
        QD <= #0.5 1'b1;
end

always@(QU or QD) OUTU <= #0.1 ~(QU && !QD);

always@(QU or QD) OUTD <= #0.1 ~(QD && !QU);

assign #0.017 OUTBU = OUTU;
assign #0.017 OUTBD = OUTD;

always@(posedge IN or negedge OUTBU)
begin
    if(!OUTBU)
        flagU <= #0.5 1'b0;
    else
        flagU <= #0.5 1'b1;
end

always@(posedge FB or negedge OUTBD)
begin
    if(!OUTBD)
        flagD <= #0.5 1'b0;
    else
        flagD <= #0.5 1'b1;
end

endmodule
