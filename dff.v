// D-flipflop
`timescale 1us/100ns
module dff (q, d, clk, rst);
 
    output         q;
    input          d;
    input          clk;
    input          rst;
 
    reg            state;
 
    assign #(1) q = state;
 
    always @(posedge clk) begin
      state = rst? 0 : d;
    end
 
endmodule
