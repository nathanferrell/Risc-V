`timescale 1us/100ns
`define AplusB 4'b0000
`define  AminusB 4'b0001
`define AandB 4'b0011
`define AorB 4'b0010
`define AxorB 4'b1100
`define notA 4'b1101
`define LLS 4'b0110 
`define LRS 4'b1111
`define LAR 4'b1001
 
 
module ALU(input_one, input_two, func, out, zeroflg, cout);
 
input wire[31:0] input_one;
input wire[31:0] input_two;
input wire[3:0] func;
output wire cout;
output wire zeroflg;
output reg[31:0] out;
wire[31:0] aplusb, aminusb, aandb, aorb, axorb, Nota, lls, lrs, lar;
 
assign aplusb = input_one + input_two;
assign aminusb = input_one - input_two;
assign aandb = input_one & input_two;
assign aorb = input_one | input_two;
assign axorb = input_one ^ input_two;
assign Nota = ~input_one;
Bshifter bsls(.inputd(input_one), .shftamt(input_two), .shiftyp(2'b00), .outpd(lls));
Bshifter bsrs(.inputd(input_one), .shftamt(input_two), .shiftyp(2'b01), .outpd(lrs));
Bshifter bsars(.inputd(input_one), .shftamt(input_two), .shiftyp(2'b10), .outpd(lar));
 
always @(*) begin 
case(func) 
`AplusB: out = aplusb;
`AminusB: out = aminusb;
`AandB: out = aandb;
`AorB: out = aorb;
`AxorB: out = axorb;
`notA: out = Nota;
`LLS: out = lls;
`LRS: out = lrs;
`LAR: out = lar;
 
default: out = 32'b0;
endcase
 
 
end
assign zeroflg = (out == 32'b0) ? 1'b1 : 1'b0;
endmodule
