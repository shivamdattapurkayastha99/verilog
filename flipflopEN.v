module flipflopEN (D,CLK,EN,Q);
input D,CLK,EN;
output reg Q;
always @(posedge CLK) begin
    if (EN) begin
        Q=D;
    end
end
    
endmodule