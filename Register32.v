`timescale 1us/100ns
 
module Register32(clock, reset, out, wd, we);
 
input wire clock;

input wire reset;

output wire[31:0] out;

input wire[31:0] wd;
 
input wire we;
 
dff df0(.q(out[0]), .d(we ? wd[0]: out[0]), .clk(clock), .rst(reset)); // bit 0

dff df1(.q(out[1]), .d(we ? wd[1]: out[1]), .clk(clock), .rst(reset));

dff df2(.q(out[2]), .d(we ? wd[2]: out[2]), .clk(clock), .rst(reset));

dff df3(.q(out[3]), .d(we ? wd[3]: out[3]), .clk(clock), .rst(reset));

dff df4(.q(out[4]), .d(we ? wd[4]: out[4]), .clk(clock), .rst(reset));

dff df5(.q(out[5]), .d(we ? wd[5]: out[5]), .clk(clock), .rst(reset));

dff df6(.q(out[6]), .d(we ? wd[6]: out[6]), .clk(clock), .rst(reset));

dff df7(.q(out[7]), .d(we ? wd[7]: out[7]), .clk(clock), .rst(reset));

dff df8(.q(out[8]), .d(we ? wd[8]: out[8]), .clk(clock), .rst(reset));

dff df9(.q(out[9]), .d(we ? wd[9]: out[9]), .clk(clock), .rst(reset));

dff df10(.q(out[10]), .d(we ? wd[10]: out[10]), .clk(clock), .rst(reset));

dff df11(.q(out[11]), .d(we ? wd[11]: out[11]), .clk(clock), .rst(reset));

dff df12(.q(out[12]), .d(we ? wd[12]: out[12]), .clk(clock), .rst(reset));

dff df13(.q(out[13]), .d(we ? wd[13]: out[13]), .clk(clock), .rst(reset));

dff df14(.q(out[14]), .d(we ? wd[14]: out[14]), .clk(clock), .rst(reset));

dff df15(.q(out[15]), .d(we ? wd[15]: out[15]), .clk(clock), .rst(reset));

dff df16(.q(out[16]), .d(we ? wd[16]: out[16]), .clk(clock), .rst(reset));

dff df17(.q(out[17]), .d(we ? wd[17]: out[17]), .clk(clock), .rst(reset));

dff df18(.q(out[18]), .d(we ? wd[18]: out[18]), .clk(clock), .rst(reset));

dff df19(.q(out[19]), .d(we ? wd[19]: out[19]), .clk(clock), .rst(reset));

dff df20(.q(out[20]), .d(we ? wd[20]: out[20]), .clk(clock), .rst(reset));

dff df21(.q(out[21]), .d(we ? wd[21]: out[21]), .clk(clock), .rst(reset));

dff df22(.q(out[22]), .d(we ? wd[22]: out[22]), .clk(clock), .rst(reset));

dff df23(.q(out[23]), .d(we ? wd[23]: out[23]), .clk(clock), .rst(reset));

dff df24(.q(out[24]), .d(we ? wd[24]: out[24]), .clk(clock), .rst(reset));

dff df25(.q(out[25]), .d(we ? wd[25]: out[25]), .clk(clock), .rst(reset));

dff df26(.q(out[26]), .d(we ? wd[26]: out[26]), .clk(clock), .rst(reset));

dff df27(.q(out[27]), .d(we ? wd[27]: out[27]), .clk(clock), .rst(reset));

dff df28(.q(out[28]), .d(we ? wd[28]: out[28]), .clk(clock), .rst(reset));

dff df29(.q(out[29]), .d(we ? wd[29]: out[29]), .clk(clock), .rst(reset));

dff df30(.q(out[30]), .d(we ? wd[30]: out[30]), .clk(clock), .rst(reset));

dff df31(.q(out[31]), .d(we ? wd[31]: out[31]), .clk(clock), .rst(reset));
 
endmodule
 
 
