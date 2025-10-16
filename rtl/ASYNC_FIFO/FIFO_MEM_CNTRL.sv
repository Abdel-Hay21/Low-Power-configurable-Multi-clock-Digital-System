module FIFO_MEM_CNTRL#(parameter DATA_WIDTH = 8)(
input wire wclk,
input wire [2:0] waddr, raddr,
input wire [DATA_WIDTH-1:0] wdata,
input wire winc, wfull,
output wire [DATA_WIDTH-1:0] rdata
);
reg [DATA_WIDTH-1:0] RAM [0:7];

assign rdata = RAM[raddr-3'd1];
always@(posedge wclk)

begin
    if(winc & (~wfull))
    begin
        RAM[waddr] <= wdata;
    end
end

endmodule