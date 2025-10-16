module ASYNC_FIFO#(parameter DATA_WIDTH = 8)(
input wire wclk, rclk, wrst_n, rrst_n,
input wire rinc, winc,
input wire [DATA_WIDTH-1:0] wdata,
output wire wfull, rempty,
output wire [DATA_WIDTH-1:0] rdata
);
wire [3:0] wq2_rptr, rq2_wptr, wptr, rptr;
reg  [2:0] waddr, raddr;

FIFO_WR link_FIFO_Write(
.wclk(wclk), .wrst_n(wrst_n),
.winc(winc), .wfull(wfull),
.wq2_rptr(wq2_rptr), .wptr(wptr),
.waddr(waddr)
);

DF_SYNC link_synchronizer_write(
.clk(wclk), .rst_n(wrst_n),
.ptr(rptr), .q2_ptr(wq2_rptr)
);

FIFO_RD link_FIFO_Read(
.rclk(rclk), .rrst_n(rrst_n),
.rinc(rinc), .rq2_wptr(rq2_wptr),
.rempty(rempty), .raddr(raddr), .rptr(rptr)
);

DF_SYNC link_synchronizer_read(
.clk(rclk), .rst_n(rrst_n),
.ptr(wptr), .q2_ptr(rq2_wptr)
);

FIFO_MEM_CNTRL link_Memory(
.wclk(wclk), .wdata(wdata),
.waddr(waddr), .raddr(raddr),
.winc(winc), .wfull(wfull), .rdata(rdata)
);


endmodule