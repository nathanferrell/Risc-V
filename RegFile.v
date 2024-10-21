`timescale 1us/100ns
module RegFile(ra0, ra1, wa, we, wd, do0, do1, clk, rst);
input wire [4:0]ra0, ra1, wa;
input wire [31:0]wd;
output wire [31:0]do0, do1;
input wire clk, we, rst;
 
wire [31:0] regout0;
wire [31:0] regout1;
wire [31:0] regout2;
wire [31:0] regout3;
wire [31:0] regout4;
wire [31:0] regout5;
wire [31:0] regout6;
wire [31:0] regout7;
wire [31:0] regout8;
wire [31:0] regout9;
wire [31:0] regout10;
wire [31:0] regout11;
wire [31:0] regout12;
wire [31:0] regout13;
wire [31:0] regout14;
wire [31:0] regout15;
wire [31:0] regout16;
wire [31:0] regout17;
wire [31:0] regout18;
wire [31:0] regout19;
wire [31:0] regout20;
wire [31:0] regout21;
wire [31:0] regout22;
wire [31:0] regout23;
wire [31:0] regout24;
wire [31:0] regout25;
wire [31:0] regout26;
wire [31:0] regout27;
wire [31:0] regout28;
wire [31:0] regout29;
wire [31:0] regout30;
wire [31:0] regout31;
 
Register32 rg0(.clock(clk), .reset(rst), .out(regout0), .wd(wd), .we(we && (wa == 5'd0)));
Register32 rg1(.clock(clk), .reset(rst), .out(regout1), .wd(wd), .we(we && (wa == 5'd1)));
Register32 rg2(.clock(clk), .reset(rst), .out(regout2), .wd(wd), .we(we && (wa == 5'd2)));
Register32 rg3(.clock(clk), .reset(rst), .out(regout3), .wd(wd), .we(we && (wa == 5'd3)));
Register32 rg4(.clock(clk), .reset(rst), .out(regout4), .wd(wd), .we(we && (wa == 5'd4)));
Register32 rg5(.clock(clk), .reset(rst), .out(regout5), .wd(wd), .we(we && (wa == 5'd5)));
Register32 rg6(.clock(clk), .reset(rst), .out(regout6), .wd(wd), .we(we && (wa == 5'd6)));
Register32 rg7(.clock(clk), .reset(rst), .out(regout7), .wd(wd), .we(we && (wa == 5'd7)));
Register32 rg8(.clock(clk), .reset(rst), .out(regout8), .wd(wd), .we(we && (wa == 5'd8)));
Register32 rg9(.clock(clk), .reset(rst), .out(regout9), .wd(wd), .we(we && (wa == 5'd9)));
Register32 rg10(.clock(clk), .reset(rst), .out(regout10), .wd(wd), .we(we && (wa == 5'd10)));
Register32 rg11(.clock(clk), .reset(rst), .out(regout11), .wd(wd), .we(we && (wa == 5'd11)));
Register32 rg12(.clock(clk), .reset(rst), .out(regout12), .wd(wd), .we(we && (wa == 5'd12)));
Register32 rg13(.clock(clk), .reset(rst), .out(regout13), .wd(wd), .we(we && (wa == 5'd13)));
Register32 rg14(.clock(clk), .reset(rst), .out(regout14), .wd(wd), .we(we && (wa == 5'd14)));
Register32 rg15(.clock(clk), .reset(rst), .out(regout15), .wd(wd), .we(we && (wa == 5'd15)));
Register32 rg16(.clock(clk), .reset(rst), .out(regout16), .wd(wd), .we(we && (wa == 5'd16)));
Register32 rg17(.clock(clk), .reset(rst), .out(regout17), .wd(wd), .we(we && (wa == 5'd17)));
Register32 rg18(.clock(clk), .reset(rst), .out(regout18), .wd(wd), .we(we && (wa == 5'd18)));
Register32 rg19(.clock(clk), .reset(rst), .out(regout19), .wd(wd), .we(we && (wa == 5'd19)));
Register32 rg20(.clock(clk), .reset(rst), .out(regout20), .wd(wd), .we(we && (wa == 5'd20)));
Register32 rg21(.clock(clk), .reset(rst), .out(regout21), .wd(wd), .we(we && (wa == 5'd21)));
Register32 rg22(.clock(clk), .reset(rst), .out(regout22), .wd(wd), .we(we && (wa == 5'd22)));
Register32 rg23(.clock(clk), .reset(rst), .out(regout23), .wd(wd), .we(we && (wa == 5'd23)));
Register32 rg24(.clock(clk), .reset(rst), .out(regout24), .wd(wd), .we(we && (wa == 5'd24)));
Register32 rg25(.clock(clk), .reset(rst), .out(regout25), .wd(wd), .we(we && (wa == 5'd25)));
Register32 rg26(.clock(clk), .reset(rst), .out(regout26), .wd(wd), .we(we && (wa == 5'd26)));
Register32 rg27(.clock(clk), .reset(rst), .out(regout27), .wd(wd), .we(we && (wa == 5'd27)));
Register32 rg28(.clock(clk), .reset(rst), .out(regout28), .wd(wd), .we(we && (wa == 5'd28)));
Register32 rg29(.clock(clk), .reset(rst), .out(regout29), .wd(wd), .we(we && (wa == 5'd29)));
Register32 rg30(.clock(clk), .reset(rst), .out(regout30), .wd(wd), .we(we && (wa == 5'd30)));
Register32 rg31(.clock(clk), .reset(rst), .out(regout31), .wd(wd), .we(we && (wa == 5'd31)));
 
 
Mux32to1 mx1(.in0(regout0), 
.in1(regout1), 
.in2(regout2), 
.in3(regout3), 
.in4(regout4), 
.in5(regout5), 
.in6(regout6), 
.in7(regout7),
.in8(regout8), 
.in9(regout9), 
.in10(regout10), 
.in11(regout11), 
.in12(regout12), 
.in13(regout13), 
.in14(regout14), 
.in15(regout15), 
.in16(regout16), 
.in17(regout17), 
.in18(regout18), 
.in19(regout19), 
.in20(regout20), 
.in21(regout21), 
.in22(regout22), 
.in23(regout23), 
.in24(regout24), 
.in25(regout25), 
.in26(regout26), 
.in27(regout27), 
.in28(regout28), 
.in29(regout29), 
.in30(regout30), 
.in31(regout31),
.sel(ra0),
.out(do0));
 
 
Mux32to1 mx2(.in0(regout0), 
.in1(regout1), 
.in2(regout2), 
.in3(regout3), 
.in4(regout4), 
.in5(regout5), 
.in6(regout6), 
.in7(regout7),
.in8(regout8), 
.in9(regout9), 
.in10(regout10), 
.in11(regout11), 
.in12(regout12), 
.in13(regout13), 
.in14(regout14), 
.in15(regout15), 
.in16(regout16), 
.in17(regout17), 
.in18(regout18), 
.in19(regout19), 
.in20(regout20), 
.in21(regout21), 
.in22(regout22), 
.in23(regout23), 
.in24(regout24), 
.in25(regout25), 
.in26(regout26), 
.in27(regout27), 
.in28(regout28), 
.in29(regout29), 
.in30(regout30), 
.in31(regout31),
.sel(ra1),
.out(do1));
 
endmodule
