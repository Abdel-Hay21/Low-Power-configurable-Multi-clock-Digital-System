module SYS_TOP # (parameter out_width = 16, parameter address_width = 4, parameter fun_width = 4, parameter data_width = 8, parameter NUM_OF_CHAINS = 4)

(
input   wire                         scan_clk      ,
input   wire                         scan_rst      ,
input   wire                         test_mode     ,
input   wire                         SE            ,
input   wire   [NUM_OF_CHAINS-1:0]   SI            ,
output  wire   [NUM_OF_CHAINS-1:0]   SO            ,
input   wire                         RST_N         ,
input   wire                         UART_CLK      ,
input   wire                         REF_CLK       ,
input   wire                         UART_RX_IN    ,
output  wire                         UART_TX_O     ,
output  wire                         parity_error  ,
output  wire                         framing_error
);


wire                       TX_CLK;
wire                       RX_CLK;
wire                       SYNC_RST_REF_CLK;
wire                       SYNC_RST_UART_CLK;
wire                       GATED_CLK;
wire                       WrEn;
wire                       RdEn;
wire  [address_width-1:0]  Address;
wire  [data_width-1:0]     WrData;
wire  [data_width-1:0]     RdData;
wire                       RdData_Valid;
wire                       CLK_EN;
wire  [fun_width-1:0]      ALU_FUN;
wire                       EN;
wire  [out_width-1:0]      ALU_OUT;
wire                       OUT_Valid;
wire                       TX_D_VLD;
wire  [7:0]                TX_P_DATA;
wire                       FIFO_FULL;
wire  [7:0]                RX_P_DATA;
wire                       RX_D_VLD;
wire  [data_width-1:0]     A;
wire  [data_width-1:0]     B;
wire  [data_width-1:0]     UART_Config;
wire  [data_width-1:0]     Div_Ratio;
wire  [7:0]                RD_DATA;
wire                       F_EMPTY;
wire                       data_valid;
wire  [7:0]                P_DATA;
wire  [7:0]                clk_div_RX;
wire                       busy_TX;
wire                       RD_INC;
wire                       RD_INC_ff;
wire                       REF_CLK_M;
wire                       UART_CLK_M;
wire                       TX_CLK_M;
wire                       RX_CLK_M;
wire                       RST_M;
wire                       SYNC_RST_REF_CLK_M;
wire                       SYNC_RST_UART_CLK_M;

///////////////////////////////// DFT CLOCKS ///////////////////////////////////
// Muxing REF_CLK
mux2X1 U0_mux2X1 (
  .IN_0          (REF_CLK),
  .IN_1          (scan_clk),
  .SEL           (test_mode),
  .OUT           (REF_CLK_M)
); 

// Muxing UART_CLK
mux2X1 U1_mux2X1 (
  .IN_0          (UART_CLK),
  .IN_1          (scan_clk),
  .SEL           (test_mode),
  .OUT           (UART_CLK_M)
); 

// Muxing UART_TX
mux2X1 U2_mux2X1 (
  .IN_0          (TX_CLK),
  .IN_1          (scan_clk),
  .SEL           (test_mode),
  .OUT           (TX_CLK_M)
); 
// Muxing UART_RX
mux2X1 U3_mux2X1 (
  .IN_0          (RX_CLK),
  .IN_1          (scan_clk),
  .SEL           (test_mode),
  .OUT           (RX_CLK_M)
);

// Muxing CLOCK_GATING
CLK_GATE CLOCK_GATING(
  .CLK           (REF_CLK_M),
  .CLK_EN        (CLK_EN),
  .test_en       (test_mode),
  .GATED_CLK     (GATED_CLK)
);

///////////////////////////////// DFT RESETS ///////////////////////////////////
// Muxing RST
mux2X1 U4_mux2X1 (
  .IN_0          (RST_N),
  .IN_1          (scan_rst),
  .SEL           (test_mode),
  .OUT           (RST_M)
); 

// Muxing RST_REF
mux2X1 U5_mux2X1 (
  .IN_0          (SYNC_RST_REF_CLK),
  .IN_1          (scan_rst),
  .SEL           (test_mode),
  .OUT           (SYNC_RST_REF_CLK_M)
);

// Muxing RST_UART
mux2X1 U6_mux2X1 (
  .IN_0          (SYNC_RST_UART_CLK),
  .IN_1          (scan_rst),
  .SEL           (test_mode),
  .OUT           (SYNC_RST_UART_CLK_M)
);






ClkDiv CLK_DIV_TX(
  .i_ref_clk     (UART_CLK_M),
  .i_rst_n       (SYNC_RST_UART_CLK_M),
  .i_clk_en      (1'b1),
  .i_div_ratio   (Div_Ratio),
  .o_div_clk     (TX_CLK)
);


ClkDiv CLK_DIV_RX(
  .i_ref_clk     (UART_CLK_M),
  .i_rst_n       (SYNC_RST_UART_CLK_M),
  .i_clk_en      (1'b1),
  .i_div_ratio   (clk_div_RX),
  .o_div_clk     (RX_CLK)
);

Mux_Prescale PRESCALE_MUX(
  .Prescale      (UART_Config[7:2]),
  .clk_div       (clk_div_RX)   
);


RST_SYNC RST_SYN_REF(
  .CLK           (REF_CLK_M),
  .RST           (RST_M),
  .SYNC_RST      (SYNC_RST_REF_CLK)
);


RST_SYNC RST_SYN_UART(
  .CLK           (UART_CLK_M),
  .RST           (RST_M),
  .SYNC_RST      (SYNC_RST_UART_CLK)
);



SYS_CTRL CONTROL_UNIT(
  .CLK           (REF_CLK_M),
  .RST           (SYNC_RST_REF_CLK_M),
  .WrEn          (WrEn),
  .RdEn          (RdEn),
  .Address       (Address),
  .RdData_Valid  (RdData_Valid),
  .WrData        (WrData),
  .RdData        (RdData),
  .CLK_EN        (CLK_EN),
  .ALU_FUN       (ALU_FUN),
  .EN            (EN),
  .ALU_OUT       (ALU_OUT),
  .OUT_Valid     (OUT_Valid),
  .TX_D_VLD      (TX_D_VLD),
  .TX_P_DATA     (TX_P_DATA),
  .FIFO_FULL     (FIFO_FULL),
  .RX_P_DATA     (RX_P_DATA),
  .RX_D_VLD      (RX_D_VLD)
);


Register_file_8_16 REGISTER_FILE(
  .CLK           (REF_CLK_M),
  .RST           (SYNC_RST_REF_CLK_M),
  .Address       (Address),
  .WrEn          (WrEn),
  .RdEn          (RdEn),
  .WrData        (WrData),
  .RdData        (RdData),
  .RdData_Valid  (RdData_Valid),
  .REG0          (A),
  .REG1          (B),
  .REG2          (UART_Config),
  .REG3          (Div_Ratio)
);


ALU ALU_UNIT(
  .CLK           (GATED_CLK),
  .RST           (SYNC_RST_REF_CLK_M),
  .Enable        (EN),
  .A             (A),
  .B             (B),
  .ALU_FUN       (ALU_FUN),
  .ALU_OUT       (ALU_OUT),
  .OUT_VALID     (OUT_Valid)
);

PULSE_GEN PULSE_GENERATOR(
  .RST           (SYNC_RST_UART_CLK_M),
  .CLK           (TX_CLK_M),
  .LVL_SIG       (!busy_TX && !F_EMPTY),
  .PULSE_SIG     (RD_INC)
);

delay_one_period DELAY_ONE_PERIOD(
  .CLK           (TX_CLK_M),
  .Signal        (RD_INC),
  .Signal_delayed(RD_INC_ff)
);


UART_TOP UART(
  .TX_CLK        (TX_CLK_M),
  .RX_CLK        (RX_CLK_M),
  .RST           (SYNC_RST_UART_CLK_M),
  .Prescale      (UART_Config[7:2]),
  .PAR_TYP       (UART_Config[1]),
  .PAR_EN        (UART_Config[0]),
  .TX_IN_P       (RD_DATA),
  .TX_IN_V       (RD_INC_ff),
  .TX_OUT_S      (UART_TX_O),
  .TX_OUT_V      (busy_TX),
  .RX_IN_S       (UART_RX_IN),
  .RX_OUT_P      (P_DATA),
  .RX_OUT_V      (data_valid),
  .parity_error  (parity_error),
  .framing_error (framing_error)
);


ASYNC_FIFO ASYN_FIFO(
  .wclk          (REF_CLK_M),
  .wrst_n        (SYNC_RST_REF_CLK_M),
  .rclk          (TX_CLK_M),
  .rrst_n        (SYNC_RST_UART_CLK_M), 
  .winc          (TX_D_VLD),
  .wdata         (TX_P_DATA),
  .wfull         (FIFO_FULL),
  .rdata         (RD_DATA),
  .rempty        (F_EMPTY),
  .rinc          (RD_INC)
);



DATA_SYNC DATA_SYNC(
  .CLK           (REF_CLK_M),
  .RST           (SYNC_RST_REF_CLK_M),
  .sync_bus      (RX_P_DATA),
  .enable_pulse  (RX_D_VLD),
  .bus_enable    (data_valid),
  .unsync_bus    (P_DATA)
);

endmodule
