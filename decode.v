`timescale 1us/100ns
 
`include "decode.vh"
 
module decode(inst_encoding, next_pc_sel, function_code, outputWE);
 
output reg [3:0] function_code;
 
input wire [31:0] inst_encoding;
 
output reg[2:0] next_pc_sel;
 
output reg outputWE;
 
always @(inst_encoding) begin
 
casex(inst_encoding)
 
//are next_pc_sel set equal to the correct tic defines?
 
`INST_ENCODING_JAL: begin
 
next_pc_sel = `PC_PLUS_JAL_IMM;
function_code = 4'bxxxx;
outputWE = 1'b1;
 
 
end
 
 
`INST_ENCODING_JALR:begin
 
next_pc_sel = `NEXT_PC_FROM_RF;
function_code = 4'bxxxx;
 
outputWE = 1'b1;
 
end
 
 
`INST_ENCODING_BEQ:begin
 
next_pc_sel = `PC_PLUS_BRCH_IMM;
 
function_code = `AminusB;
 
outputWE = 1'b0;
end
 
`INST_ENCODING_ADDI:begin
 
next_pc_sel = `PC_FROM_PC_PLUS_4;
function_code = `AplusB;
 
outputWE = 1'b1;
 
end
 
default:begin
 
next_pc_sel = `PC_FROM_PC_PLUS_4;
function_code = `AplusB;
outputWE = 1'b1;
 
end
 
endcase
 
end
 
 
endmodule
