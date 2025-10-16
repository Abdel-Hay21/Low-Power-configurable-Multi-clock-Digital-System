module SYS_TOP#(parameter out_width = 16, parameter address_width = 4, parameter fun_width = 4, parameter data_width = 8)(
input wire REF_CLK, RST, UART_CLK,
input wire RX_IN,
output wire TX_OUT, parity_error, framing_error
);
wire TX_CLK, RX_CLK;

wire SYNC_RST_REF_CLK, SYNC_RST_UART_CLK;
wire GATED_CLK;

wire WrEn, RdEn;
wire [address_width-1:0] Address;
wire [data_width-1:0] WrData;
wire [data_width-1:0] RdData;
wire RdData_Valid;
wire CLK_EN;
wire [fun_width-1:0] ALU_FUN;
wire EN;
wire [out_width-1:0] ALU_OUT;
wire OUT_Valid;
wire TX_D_VLD;
wire [7:0] TX_P_DATA;
wire FIFO_FULL;
wire [7:0] RX_P_DATA;
wire RX_D_VLD;

wire [data_width-1:0] A, B, UART_Config, Div_Ratio;

wire [7:0] RD_DATA;
wire F_EMPTY;

wire data_valid;
wire [7:0] P_DATA;

wire [7:0] clk_div_RX;

wire busy_TX;

wire RD_INC;

wire RD_INC_ff;

ClkDiv CLK_DIV_TX(
.i_ref_clk(UART_CLK), .i_rst_n(SYNC_RST_UART_CLK), .i_clk_en(1'b1),
.i_div_ratio(Div_Ratio),
.o_div_clk(TX_CLK)
);

ClkDiv CLK_DIV_RX(
.i_ref_clk(UART_CLK), .i_rst_n(SYNC_RST_UART_CLK), .i_clk_en(1'b1),
.i_div_ratio(clk_div_RX),
.o_div_clk(RX_CLK)
);

Mux_Prescale PRESCALE_MUX(
.Prescale(UART_Config[7:2]),   .clk_div(clk_div_RX)   
);

RST_SYNC RST_SYN_REF(
.CLK(REF_CLK), .RST(RST),
.SYNC_RST(SYNC_RST_REF_CLK)
);


RST_SYNC RST_SYN_UART(
.CLK(UART_CLK), .RST(RST),
.SYNC_RST(SYNC_RST_UART_CLK)
);

CLK_GATE CLOCK_GATING(
.CLK(REF_CLK), .CLK_EN(CLK_EN),
.GATED_CLK(GATED_CLK)
);



SYS_CTRL CONTROL_UNIT(
.CLK(REF_CLK), .RST(SYNC_RST_REF_CLK),
.WrEn(WrEn), .RdEn(RdEn),
.Address(Address), .RdData_Valid(RdData_Valid),
.WrData(WrData), .RdData(RdData),
.CLK_EN(CLK_EN),
.ALU_FUN(ALU_FUN), .EN(EN),
.ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid),
.TX_D_VLD(TX_D_VLD), .TX_P_DATA(TX_P_DATA),
.FIFO_FULL(FIFO_FULL),
.RX_P_DATA(RX_P_DATA), .RX_D_VLD(RX_D_VLD)
);


Register_file_8_16 REGISTER_FILE(
.CLK(REF_CLK), .RST(SYNC_RST_REF_CLK),
.Address(Address), .WrEn(WrEn), .RdEn(RdEn),
.WrData(WrData), .RdData(RdData), .RdData_Valid(RdData_Valid),
.REG0(A), .REG1(B), .REG2(UART_Config), .REG3(Div_Ratio)
);


ALU ALU_UNIT(
.CLK(GATED_CLK), .RST(SYNC_RST_REF_CLK),
.Enable(EN), .A(A), .B(B),
.ALU_FUN(ALU_FUN), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid)
);

PULSE_GEN PULSE_GENERATOR(
.RST(SYNC_RST_UART_CLK), .CLK(TX_CLK), .LVL_SIG(!busy_TX && !F_EMPTY),
.PULSE_SIG(RD_INC)
);

delay_one_period DELAY_ONE_PERIOD(
.CLK(TX_CLK), .Signal(RD_INC), .Signal_delayed(RD_INC_ff)
);


UART_TOP UART(
.TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RST(SYNC_RST_UART_CLK),
.Prescale(UART_Config[7:2]),
.PAR_TYP(UART_Config[1]), .PAR_EN(UART_Config[0]),
.TX_IN_P(RD_DATA),
.TX_IN_V(RD_INC_ff),
.TX_OUT_S(TX_OUT), .TX_OUT_V(busy_TX),
.RX_IN_S(RX_IN),
.RX_OUT_P(P_DATA),
.RX_OUT_V(data_valid),
.parity_error(parity_error),
.framing_error(framing_error)
);


ASYNC_FIFO ASYN_FIFO(
.wclk(REF_CLK), .wrst_n(SYNC_RST_REF_CLK), .rclk(TX_CLK), .rrst_n(SYNC_RST_UART_CLK), 
.winc(TX_D_VLD), .wdata(TX_P_DATA), .wfull(FIFO_FULL), .rdata(RD_DATA), .rempty(F_EMPTY), .rinc(RD_INC)
);



DATA_SYNC DATA_SYNC(
.CLK(REF_CLK), .RST(SYNC_RST_REF_CLK),
.sync_bus(RX_P_DATA), .enable_pulse(RX_D_VLD),
.bus_enable(data_valid), .unsync_bus(P_DATA)
);

endmodule
