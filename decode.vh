timescale 1us/100ns
`define INST_ENCODING_JAL 32'bxxxxxxxxxxxxxxxxxxxxxxxxx1101111
`define INST_ENCODING_JALR 32'bxxxxxxxxxxxxxxxxx000xxxxx1100111
`define INST_ENCODING_BEQ 32'bxxxxxxxxxxxxxxxxx000xxxxx1100011
`define INST_ENCODING_ADDI 32'bxxxxxxxxxxxxxxxxx000xxxxx0010011
`define NEXT_PC_FROM_JAL_IMM 2'b01
`define NEXT_PC_FROM_JALR 2'b10
`define NEXT_PC_FROM_BRANCH 2'b01
`define NEXT_PC_PLUS_4 2'b00
`define NEXT_PC_FROM_RF 3'b111
 
`define PC_FROM_PC_PLUS_4 3'b000
 
`define PC_PLUS_JAL_IMM 3'b110
 
`define PC_PLUS_AIUPC_IMM 3'b101
 
`define PC_PLUS_LUI_IMM 3'b100
 
`define PC_PLUS_BRCH_IMM 3'b001
