`timescale 1us/100ns
 
module Mux8to1_tb();
 
reg [31:0] inp0, inp1, inp2, inp3, inp4, inp5, inp6, inp7;
 
reg [4:0] sel;
 
wire [31:0] out;
 
Mux8to1 mx(.inp0(inp0), .inp1(inp1), .inp2(inp2), .inp3(inp3), .inp4(inp4), .inp5(inp5), .inp6(inp6), .inp7(inp7), .sel(sel), .out(out));
 
initial begin
 
#5
 
sel = 5'd7;
 
inp0 = 32'b00000000000000000000000000111111;
 
inp1 = 32'b00000000000000001000000000111111;
 
inp2 = 32'b00001100000000000000000000111001;
 
inp3 = 32'b00000000000000000110000000111111;
 
inp4 = 32'b00000000000000000000000000100111;
 
inp5 = 32'b00000000000000000000000000001111;
inp6 = 32'b00000000000000000111000000111111;
 
inp7 = 32'b00000000000100011100000000111111;
 
#5
 
$finish;
 
end
 
endmodule
