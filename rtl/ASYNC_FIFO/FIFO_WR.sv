module FIFO_WR (
input wire wclk,wrst_n,
input wire winc,
input wire [3:0] wq2_rptr,
output reg [2:0] waddr,
output reg [3:0] wptr,
output wire wfull
);
reg [3:0] wptr_bin;
reg [3:0] wptr_temp;

always@(posedge wclk or negedge wrst_n)
begin
    if(!wrst_n)
    begin
        waddr <= 3'd0;
        wptr <= 4'd0;
        wptr_bin <= 4'd0;
    end
    else if(winc && wfull != 1)
    begin
        wptr_temp = wptr_bin + 1;
        wptr_bin <= wptr_bin + 1;

        wptr[3] <= wptr_temp[3];
        wptr[2] <= wptr_temp[2] ^ wptr_temp[3];
        wptr[1] <= wptr_temp[1] ^ wptr_temp[2];
        wptr[0] <= wptr_temp[0] ^ wptr_temp[1];

        waddr <= wptr_temp[2:0];
    end
end

assign wfull = ((wq2_rptr[1:0] == wptr[1:0]) && (wq2_rptr[2] != wptr[2]) && (wq2_rptr[3] != wptr[3]));



endmodule