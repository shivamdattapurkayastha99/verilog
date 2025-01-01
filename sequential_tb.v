`timescale 1ns/1ns
`include "sequential.v"
module sequential_tb;
reg A,B,CLK;
wire Z;
sequential uut(A,B,CLK,Z);
always begin
    CLK=~CLK;
    #10;
    
end
initial begin
    $dumpfile("sequential_tb.vcd");
    $dumpvars(0,sequential_tb);
    
    {A,B}=2'b00;#20;
    {A,B}=2'b11;#20;
    {A,B}=2'b01;#20;
    {A,B}=2'b00;#20;
    {A,B}=2'b11;#20;
    {A,B}=2'b10;#20;
    {A,B}=2'b01;#20;
    {A,B}=2'b10;#20;
    $stop;

    
    
end
    
endmodule