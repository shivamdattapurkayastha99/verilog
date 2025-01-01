`timescale 1ns/1ns
`include "flipflop.v"
module testbench;
reg D=0,CLK=0;
wire Q;
flipflop uut(D,CLK,Q);
always begin
    CLK=~CLK;
    #10;
end
initial begin
    $dumpfile("flipflop_tb.vcd");
    $dumpvars(0,testbench);
    D=0;#20;
    D=1;#20;
    D=0;#20;
    $finish;
end
    
endmodule
