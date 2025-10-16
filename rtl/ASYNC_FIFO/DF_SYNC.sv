module DF_SYNC(
input wire clk, rst_n,
input wire [3:0] ptr,
output reg [3:0] q2_ptr
);
reg [3:0] ff1;
always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        ff1 <= 4'd0;
        q2_ptr <= 4'd0;
    end
    else begin
        ff1 <= ptr;
        q2_ptr <= ff1;
    end
end
endmodule