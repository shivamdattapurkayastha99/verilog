`timescale 1ns / 1ns
`include "flipflopEN.v"
module flipflopEN_tb;
reg D=0,CLK=0,EN=0;
wire Q;
flipflopEN uut(D,CLK,EN,Q);
always begin
    CLK=~CLK;
    #10;
end
initial begin
    $dumpfile("flipflopEN.vcd");
    $dumpvars(0,flipflopEN_tb);
    D=0;EN=1;#20;
    D=1;EN=1;#20;
    D=0;EN=1;#20;
    D=1;EN=0;#20;
    D=0;EN=0;#20;
    D=1;EN=0;#20;
    $finish;
end
endmodule