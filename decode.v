`timescale 1us/100ns
`include "decode.vh"
module decode(inst_encoding, next_pc_sel);
 
input wire [31:0] inst_encoding;
output reg[1:0] next_pc_sel;
 
always @(inst_encoding) begin
casex(inst_encoding)
 
`INST_ENCODING_JAL: begin
next_pc_sel = `NEXT_PC_FROM_JAL_IMM;
 
end
 
 
`INST_ENCODING_JALR:begin
 
next_pc_sel = `NEXT_PC_FROM_JALR;
 
end
 
 
`INST_ENCODING_BEQ:begin
next_pc_sel = `NEXT_PC_FROM_BRANCH;
 
end
 
`INST_ENCODING_ADDI:begin
next_pc_sel = `NEXT_PC_PLUS_4;
 
end
 
default:begin
next_pc_sel = `NEXT_PC_PLUS_4;
 
end
 
endcase
end
 
 
endmodule
