`timescale 1ns/1ns
`include "decoder5to32.v"
module tb_decoder5to32;
    
    reg [4:0] a;
    reg enable;
    
    wire [31:0] y;

    
    decoder5to32 uut (
        .a(a),
        .enable(enable),
        .y(y)
    );

    initial begin
        
        a = 0;
        enable = 0;

        
        #100;

        
        enable = 1;
        
        
        for (a = 0; a < 32; a = a + 1) begin
            #10; 
        end

        enable = 0;
        #10;
        $stop;
    end
      
    initial begin
        $monitor("Time = %0d, a = %b, enable = %b, y = %b", $time, a, enable, y);
    end
endmodule
