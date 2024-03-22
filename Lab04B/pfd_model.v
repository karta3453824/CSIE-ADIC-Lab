//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: PFD Modeling                              //
//------------------------------------------------------//

`timescale 1ns/1ps
module pfd_model(reset, in, fb, flagu, flagd);

input reset, in, fb;
output flagu, flagd;

reg flagu, flagd;
reg qu, qd, outu, outd;
wire outbu, outbd;

always@(posedge in or posedge qu or posedge qd or negedge reset) begin
    if(!reset)
        qu <= 1'b0;
    else if(qu && qd)
        qu <= #0.5 1'b0;
    else
        qu <= #0.5 1'b1;
end

always@(posedge fb or posedge qu or posedge qd or negedge reset) begin
    if(!reset)
        qd <= 1'b0;
    else if(qu && qd)
        qd <= #0.5 1'b0;
    else
        qd <= #0.5 1'b1;
end

always@(qu or qd) outu <= #0.1 ~(qu && !qd);

always@(qu or qd) outd <= #0.1 ~(qd && !qu);

assign #0.009 outbu = outu;
assign #0.009 outbd = outd;

always@(posedge in or negedge outbu)
begin
    if(!outbu)
        flagu <= #0.3 1'b0;
    else
        flagu <= #0.3 1'b1;
end

always@(posedge fb or negedge outbd)
begin
    if(!outbd)
        flagd <= #0.3 1'b0;
    else
        flagd <= #0.3 1'b1;
end

endmodule
