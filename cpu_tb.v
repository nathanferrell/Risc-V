`timescale 1us/100ns
 
module cpu_tb();
 
reg clk, rst;
 
cpu cp(.clk(clk), .rst(rst));
 
initial begin
 
clk = 0;
 
rst = 0;
 
#2;
 
rst = 1;
 
#10;
 
rst = 0;
 
end
 
always
 
#5 clk = ~clk;
 
endmodule
