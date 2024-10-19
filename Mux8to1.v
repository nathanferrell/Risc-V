`timescale 1us/100ns
 
module Mux8to1(
 
input [31:0] inp0, inp1, inp2, inp3, inp4, inp5, inp6, inp7,
 
input [4:0] sel,
 
output reg[31:0] out
 
);
 
always @(*) begin
 
case(sel)
 
5'd0: out = inp0;
5'd1: out = inp1;
5'd2: out = inp2;
5'd3: out = inp3;
5'd4: out = inp4;
5'd5: out = inp5;
5'd6: out = inp6;
5'd7: out = inp7;
 
default: out = 32'b0;
 
endcase
 
end
 
endmodule
