module FIFO_RD(
input wire rclk, rrst_n,
input wire rinc,
input wire [3:0] rq2_wptr,
output wire rempty,
output reg [2:0] raddr,
output reg [3:0] rptr
);
reg [3:0] rptr_bin;
reg [3:0] rptr_temp;

always@(posedge rclk or negedge rrst_n)
begin
    if(!rrst_n)
    begin
        raddr <= 3'd0;
        rptr <= 4'd0;
        rptr_bin <= 4'd0;
    end
    else if(rinc && !(rempty))
    begin
        rptr_temp = rptr_bin + 1;
        rptr_bin <= rptr_bin + 1;

        rptr[3] <= rptr_temp[3];
        rptr[2] <= rptr_temp[2] ^ rptr_temp[3];
        rptr[1] <= rptr_temp[1] ^ rptr_temp[2];
        rptr[0] <= rptr_temp[0] ^ rptr_temp[1];

        raddr <= rptr_temp[2:0];
    end
end

assign rempty = (rq2_wptr == rptr);


endmodule