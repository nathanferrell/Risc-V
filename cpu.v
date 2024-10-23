`timescale 1us/100ns
 
`include "decode.vh"
 
module cpu(clk, rst);
 
input wire clk, rst;
 
wire[31:0] pc;
 
wire[31:0] inst_encoding;
 
wire[31:0] rf_out_0;
 
wire[31:0] rf_out_1;
 
wire[31:0] Alu_in_2;
 
 
wire[31:0] immediatejal;
 
wire[31:0] immediateaiupc;
 
wire[31:0] immediatelui;
 
wire[31:0] immediatebrch;
 
wire[2:0] S;
 
wire[2:0] pc_sel;
wire pc_write_enable;
reg[31:0] next_pc;
 
wire[31:0]pc_plus_4 = pc + 32'd4;
 
 
wire[31:0] pc_from_rf= rf_out_0;
 
 
always @(*)begin
case(pc_sel)
`PC_FROM_PC_PLUS_4: next_pc = pc_plus_4;
 
`PC_PLUS_JAL_IMM: next_pc = pc + immediatejal;
 
`PC_PLUS_AIUPC_IMM: next_pc = pc + immediateaiupc;
 
`PC_PLUS_LUI_IMM: next_pc = pc + immediatelui;
 
`PC_PLUS_BRCH_IMM: next_pc = pc + immediatebrch;
 
`NEXT_PC_FROM_RF: next_pc = pc_from_rf;
 
default:next_pc = pc_plus_4;
 
endcase
 
end
 
assign pc_write_enable = 1'b1;
 
 
Register32 pcModule(.clock(clk), .reset(rst), .we(pc_write_enable), .wd(next_pc), .out(pc));
 
 
memory2c mem(.data_out(inst_encoding), .data_in(32'b0), .addr(pc), .enable(1'b1), .wr(1'b0), .createdump(1'b0), .clk(clk), .rst(rst));
 
RegFile rgf(.ra0(inst_encoding[19:15]), .ra1(inst_encoding[24:20]), .wa(inst_encoding[11:7]), .wd(32'b0), .we(32'b0), .clk(clk), .rst(rst), .do0(rf_out_0), .do1(rf_out_1));
 
ALU al(.input_one(rf_out_0), .input_two(Alu_in_2), .func(), .out(), .zeroflg(), .cout());
 
assign Alu_in_2 = S ? rf_out_1:immediatebrch;
 
 
decode d(.inst_encoding(inst_encoding), .next_pc_sel(pc_sel));
 
//Mux8to1 mx(.inp0(), .inp1(), .inp2(), .inp3(), .inp4(), .inp5(), .inp6(), .inp7(), .sel(pc_sel),.out(next_pc));
 
assign immediatejal = {{13{inst_encoding[31]}}, inst_encoding[19:12], inst_encoding[20], inst_encoding[30:21], 1'b0};
assign immediateaiupc = {inst_encoding[31:12], 12'b0};
assign immediatelui = {inst_encoding[31:12],12'b0};
assign immediatebrch = {{20{inst_encoding[12]}}, inst_encoding[7], inst_encoding[30:25], inst_encoding[11:8], 1'b0};

 
endmodule
