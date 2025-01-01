module decoder5to32 (
    input [4:0] a,
    input enable,
    output reg [31:0] y
);
    always @(*) begin
        
        if (enable) begin
            y = 32'b0; 
            y[a] = 1'b1; 
        end else begin
            y = 32'b0; 
        end
    end
endmodule
