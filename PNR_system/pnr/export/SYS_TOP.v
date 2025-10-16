module SYS_TOP (
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [3:0] SI;
   output [3:0] SO;
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK_M__L7_N15;
   wire REF_CLK_M__L7_N14;
   wire REF_CLK_M__L7_N13;
   wire REF_CLK_M__L7_N12;
   wire REF_CLK_M__L7_N11;
   wire REF_CLK_M__L7_N10;
   wire REF_CLK_M__L7_N9;
   wire REF_CLK_M__L7_N8;
   wire REF_CLK_M__L7_N7;
   wire REF_CLK_M__L7_N6;
   wire REF_CLK_M__L7_N5;
   wire REF_CLK_M__L7_N4;
   wire REF_CLK_M__L7_N3;
   wire REF_CLK_M__L7_N2;
   wire REF_CLK_M__L7_N1;
   wire REF_CLK_M__L7_N0;
   wire REF_CLK_M__L6_N3;
   wire REF_CLK_M__L6_N2;
   wire REF_CLK_M__L6_N1;
   wire REF_CLK_M__L6_N0;
   wire REF_CLK_M__L5_N1;
   wire REF_CLK_M__L5_N0;
   wire REF_CLK_M__L4_N0;
   wire REF_CLK_M__L3_N0;
   wire REF_CLK_M__L2_N1;
   wire REF_CLK_M__L2_N0;
   wire REF_CLK_M__L1_N0;
   wire GATED_CLK__L3_N0;
   wire GATED_CLK__L2_N0;
   wire GATED_CLK__L1_N0;
   wire UART_CLK_M__L11_N0;
   wire UART_CLK_M__L10_N0;
   wire UART_CLK_M__L9_N0;
   wire UART_CLK_M__L8_N0;
   wire UART_CLK_M__L7_N0;
   wire UART_CLK_M__L6_N2;
   wire UART_CLK_M__L6_N1;
   wire UART_CLK_M__L6_N0;
   wire UART_CLK_M__L5_N0;
   wire UART_CLK_M__L4_N0;
   wire UART_CLK_M__L3_N0;
   wire UART_CLK_M__L2_N0;
   wire UART_CLK_M__L1_N0;
   wire TX_CLK_M__L3_N0;
   wire TX_CLK_M__L2_N0;
   wire TX_CLK_M__L1_N0;
   wire RX_CLK_M__L3_N0;
   wire RX_CLK_M__L2_N0;
   wire RX_CLK_M__L1_N0;
   wire FE_OFN5_SE;
   wire FE_OFN2_SYNC_RST_UART_CLK_M;
   wire FE_OFN1_SYNC_RST_REF_CLK_M;
   wire REF_CLK_M;
   wire UART_CLK_M;
   wire TX_CLK;
   wire TX_CLK_M;
   wire RX_CLK;
   wire RX_CLK_M;
   wire CLK_EN;
   wire GATED_CLK;
   wire RST_M;
   wire SYNC_RST_REF_CLK;
   wire SYNC_RST_REF_CLK_M;
   wire SYNC_RST_UART_CLK;
   wire SYNC_RST_UART_CLK_M;
   wire WrEn;
   wire RdEn;
   wire RdData_Valid;
   wire EN;
   wire OUT_Valid;
   wire TX_D_VLD;
   wire FIFO_FULL;
   wire RX_D_VLD;
   wire _2_net_;
   wire RD_INC;
   wire busy_TX;
   wire F_EMPTY;
   wire RD_INC_ff;
   wire data_valid;
   wire n2;
   wire n3;
   wire n10;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire [7:0] Div_Ratio;
   wire [7:0] clk_div_RX;
   wire [7:0] UART_Config;
   wire [3:0] Address;
   wire [7:0] WrData;
   wire [7:0] RdData;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] TX_P_DATA;
   wire [7:0] RX_P_DATA;
   wire [7:0] A;
   wire [7:0] B;
   wire [7:0] RD_DATA;
   wire [7:0] P_DATA;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;

   assign SO[2] = RdData[1] ;

   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX6M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX20M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N1));
   CLKBUFX20M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N0));
   CLKINVX6M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX20M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   CLKBUFX20M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   CLKINVX6M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M REF_CLK_M__L7_I15 (.Y(REF_CLK_M__L7_N15), 
	.A(REF_CLK_M__L6_N3));
   CLKINVX32M REF_CLK_M__L7_I14 (.Y(REF_CLK_M__L7_N14), 
	.A(REF_CLK_M__L6_N3));
   CLKINVX32M REF_CLK_M__L7_I13 (.Y(REF_CLK_M__L7_N13), 
	.A(REF_CLK_M__L6_N3));
   CLKINVX32M REF_CLK_M__L7_I12 (.Y(REF_CLK_M__L7_N12), 
	.A(REF_CLK_M__L6_N3));
   CLKINVX32M REF_CLK_M__L7_I11 (.Y(REF_CLK_M__L7_N11), 
	.A(REF_CLK_M__L6_N2));
   CLKINVX32M REF_CLK_M__L7_I10 (.Y(REF_CLK_M__L7_N10), 
	.A(REF_CLK_M__L6_N2));
   CLKINVX32M REF_CLK_M__L7_I9 (.Y(REF_CLK_M__L7_N9), 
	.A(REF_CLK_M__L6_N2));
   CLKINVX32M REF_CLK_M__L7_I8 (.Y(REF_CLK_M__L7_N8), 
	.A(REF_CLK_M__L6_N2));
   CLKINVX32M REF_CLK_M__L7_I7 (.Y(REF_CLK_M__L7_N7), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I6 (.Y(REF_CLK_M__L7_N6), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I5 (.Y(REF_CLK_M__L7_N5), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I4 (.Y(REF_CLK_M__L7_N4), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I3 (.Y(REF_CLK_M__L7_N3), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX32M REF_CLK_M__L7_I2 (.Y(REF_CLK_M__L7_N2), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX32M REF_CLK_M__L7_I1 (.Y(REF_CLK_M__L7_N1), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX32M REF_CLK_M__L7_I0 (.Y(REF_CLK_M__L7_N0), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX40M REF_CLK_M__L6_I3 (.Y(REF_CLK_M__L6_N3), 
	.A(REF_CLK_M__L5_N1));
   CLKINVX40M REF_CLK_M__L6_I2 (.Y(REF_CLK_M__L6_N2), 
	.A(REF_CLK_M__L5_N1));
   CLKINVX40M REF_CLK_M__L6_I1 (.Y(REF_CLK_M__L6_N1), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX40M REF_CLK_M__L6_I0 (.Y(REF_CLK_M__L6_N0), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX40M REF_CLK_M__L5_I1 (.Y(REF_CLK_M__L5_N1), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX40M REF_CLK_M__L5_I0 (.Y(REF_CLK_M__L5_N0), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX40M REF_CLK_M__L4_I0 (.Y(REF_CLK_M__L4_N0), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L3_I0 (.Y(REF_CLK_M__L3_N0), 
	.A(REF_CLK_M__L2_N0));
   CLKINVX6M REF_CLK_M__L2_I1 (.Y(REF_CLK_M__L2_N1), 
	.A(REF_CLK_M__L1_N0));
   CLKBUFX24M REF_CLK_M__L2_I0 (.Y(REF_CLK_M__L2_N0), 
	.A(REF_CLK_M__L1_N0));
   CLKINVX8M REF_CLK_M__L1_I0 (.Y(REF_CLK_M__L1_N0), 
	.A(REF_CLK_M));
   CLKINVX32M GATED_CLK__L3_I0 (.Y(GATED_CLK__L3_N0), 
	.A(GATED_CLK__L2_N0));
   BUFX14M GATED_CLK__L2_I0 (.Y(GATED_CLK__L2_N0), 
	.A(GATED_CLK__L1_N0));
   CLKINVX6M GATED_CLK__L1_I0 (.Y(GATED_CLK__L1_N0), 
	.A(GATED_CLK));
   CLKINVX40M UART_CLK_M__L11_I0 (.Y(UART_CLK_M__L11_N0), 
	.A(UART_CLK_M__L10_N0));
   CLKBUFX20M UART_CLK_M__L10_I0 (.Y(UART_CLK_M__L10_N0), 
	.A(UART_CLK_M__L9_N0));
   CLKBUFX20M UART_CLK_M__L9_I0 (.Y(UART_CLK_M__L9_N0), 
	.A(UART_CLK_M__L8_N0));
   CLKBUFX20M UART_CLK_M__L8_I0 (.Y(UART_CLK_M__L8_N0), 
	.A(UART_CLK_M__L7_N0));
   CLKBUFX20M UART_CLK_M__L7_I0 (.Y(UART_CLK_M__L7_N0), 
	.A(UART_CLK_M__L6_N0));
   CLKINVX40M UART_CLK_M__L6_I2 (.Y(UART_CLK_M__L6_N2), 
	.A(UART_CLK_M__L5_N0));
   CLKINVX40M UART_CLK_M__L6_I1 (.Y(UART_CLK_M__L6_N1), 
	.A(UART_CLK_M__L5_N0));
   CLKBUFX20M UART_CLK_M__L6_I0 (.Y(UART_CLK_M__L6_N0), 
	.A(UART_CLK_M__L5_N0));
   CLKINVX32M UART_CLK_M__L5_I0 (.Y(UART_CLK_M__L5_N0), 
	.A(UART_CLK_M__L4_N0));
   CLKBUFX24M UART_CLK_M__L4_I0 (.Y(UART_CLK_M__L4_N0), 
	.A(UART_CLK_M__L3_N0));
   CLKBUFX24M UART_CLK_M__L3_I0 (.Y(UART_CLK_M__L3_N0), 
	.A(UART_CLK_M__L2_N0));
   CLKINVX24M UART_CLK_M__L2_I0 (.Y(UART_CLK_M__L2_N0), 
	.A(UART_CLK_M__L1_N0));
   CLKINVX8M UART_CLK_M__L1_I0 (.Y(UART_CLK_M__L1_N0), 
	.A(UART_CLK_M));
   CLKINVX40M TX_CLK_M__L3_I0 (.Y(TX_CLK_M__L3_N0), 
	.A(TX_CLK_M__L2_N0));
   BUFX18M TX_CLK_M__L2_I0 (.Y(TX_CLK_M__L2_N0), 
	.A(TX_CLK_M__L1_N0));
   CLKINVX6M TX_CLK_M__L1_I0 (.Y(TX_CLK_M__L1_N0), 
	.A(TX_CLK_M));
   CLKINVX40M RX_CLK_M__L3_I0 (.Y(RX_CLK_M__L3_N0), 
	.A(RX_CLK_M__L2_N0));
   BUFX14M RX_CLK_M__L2_I0 (.Y(RX_CLK_M__L2_N0), 
	.A(RX_CLK_M__L1_N0));
   CLKINVX6M RX_CLK_M__L1_I0 (.Y(RX_CLK_M__L1_N0), 
	.A(RX_CLK_M));
   BUFX4M FE_OFC5_SE (.Y(FE_OFN5_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC2_SYNC_RST_UART_CLK_M (.Y(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.A(SYNC_RST_UART_CLK_M));
   CLKBUFX8M FE_OFC1_SYNC_RST_REF_CLK_M (.Y(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.A(SYNC_RST_REF_CLK_M));
   BUFX2M U5 (.Y(n2), 
	.A(Address[0]));
   BUFX4M U6 (.Y(n3), 
	.A(Address[1]));
   NOR2X2M U7 (.Y(_2_net_), 
	.B(F_EMPTY), 
	.A(busy_TX));
   DLY1X4M U16 (.Y(n22), 
	.A(n23));
   INVXLM U17 (.Y(n23), 
	.A(n36));
   DLY1X4M U18 (.Y(n24), 
	.A(n27));
   INVXLM U19 (.Y(n25), 
	.A(n39));
   CLKINVX2M U20 (.Y(n26), 
	.A(n25));
   INVXLM U21 (.Y(n27), 
	.A(n25));
   DLY1X4M U22 (.Y(n28), 
	.A(n31));
   INVXLM U23 (.Y(n29), 
	.A(n38));
   INVXLM U24 (.Y(n30), 
	.A(n29));
   INVXLM U25 (.Y(n31), 
	.A(n29));
   INVXLM U26 (.Y(n32), 
	.A(n30));
   CLKINVX2M U27 (.Y(n33), 
	.A(n32));
   INVXLM U28 (.Y(n34), 
	.A(n37));
   CLKINVX2M U29 (.Y(n35), 
	.A(n34));
   INVXLM U30 (.Y(n36), 
	.A(FE_OFN5_SE));
   INVXLM U31 (.Y(n37), 
	.A(n36));
   INVXLM U32 (.Y(n38), 
	.A(n36));
   INVXLM U33 (.Y(n39), 
	.A(n36));
   mux2X1_1 U0_mux2X1 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L7_N0), 
	.SEL(test_mode), 
	.OUT(REF_CLK_M));
   mux2X1_5 U1_mux2X1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(UART_CLK_M));
   mux2X1_0 U2_mux2X1 (.IN_0(TX_CLK), 
	.IN_1(scan_clk__L9_N0), 
	.SEL(test_mode), 
	.OUT(TX_CLK_M));
   mux2X1_6 U3_mux2X1 (.IN_0(RX_CLK), 
	.IN_1(scan_clk__L9_N0), 
	.SEL(test_mode), 
	.OUT(RX_CLK_M));
   CLK_GATE CLOCK_GATING (.test_en(test_mode), 
	.CLK(REF_CLK_M__L2_N1), 
	.CLK_EN(CLK_EN), 
	.GATED_CLK(GATED_CLK));
   mux2X1_4 U4_mux2X1 (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RST_M));
   mux2X1_3 U5_mux2X1 (.IN_0(SYNC_RST_REF_CLK), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_RST_REF_CLK_M));
   mux2X1_2 U6_mux2X1 (.IN_0(SYNC_RST_UART_CLK), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_RST_UART_CLK_M));
   ClkDiv_test_1 CLK_DIV_TX (.i_ref_clk(UART_CLK_M__L11_N0), 
	.i_rst_n(SYNC_RST_UART_CLK_M), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ Div_Ratio[7],
		Div_Ratio[6],
		Div_Ratio[5],
		Div_Ratio[4],
		Div_Ratio[3],
		Div_Ratio[2],
		Div_Ratio[1],
		Div_Ratio[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(n33), 
	.FE_OFN2_SYNC_RST_UART_CLK_M(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L6_N2(UART_CLK_M__L6_N2));
   ClkDiv_test_0 CLK_DIV_RX (.i_ref_clk(UART_CLK_M__L11_N0), 
	.i_rst_n(SYNC_RST_UART_CLK_M), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		clk_div_RX[2],
		clk_div_RX[1],
		clk_div_RX[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(n35), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L6_N1(UART_CLK_M__L6_N1));
   Mux_Prescale PRESCALE_MUX (.Prescale({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.clk_div({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		clk_div_RX[2],
		clk_div_RX[1],
		clk_div_RX[0] }));
   RST_SYNC_test_0 RST_SYN_REF (.RST(RST_M), 
	.CLK(REF_CLK_M__L7_N4), 
	.SYNC_RST(SYNC_RST_REF_CLK), 
	.test_si(n10), 
	.test_se(n35));
   RST_SYNC_test_1 RST_SYN_UART (.RST(RST_M), 
	.CLK(UART_CLK_M__L11_N0), 
	.SYNC_RST(SYNC_RST_UART_CLK), 
	.test_si(SYNC_RST_REF_CLK), 
	.test_se(n37));
   SYS_CTRL_test_1 CONTROL_UNIT (.CLK(REF_CLK_M__L7_N12), 
	.RST(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.CLK_EN(CLK_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.EN(EN), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_Valid(OUT_Valid), 
	.TX_D_VLD(TX_D_VLD), 
	.TX_P_DATA({ TX_P_DATA[7],
		TX_P_DATA[6],
		TX_P_DATA[5],
		TX_P_DATA[4],
		TX_P_DATA[3],
		TX_P_DATA[2],
		TX_P_DATA[1],
		TX_P_DATA[0] }), 
	.FIFO_FULL(FIFO_FULL), 
	.RX_P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.RX_D_VLD(RX_D_VLD), 
	.test_si(n16), 
	.test_so(n15), 
	.test_se(n28), 
	.REF_CLK_M__L7_N13(REF_CLK_M__L7_N13), 
	.REF_CLK_M__L7_N14(REF_CLK_M__L7_N14), 
	.REF_CLK_M__L7_N15(REF_CLK_M__L7_N15), 
	.REF_CLK_M__L7_N7(REF_CLK_M__L7_N7));
   Register_file_8_16_test_1 REGISTER_FILE (.WrEn(WrEn), 
	.RdEn(RdEn), 
	.CLK(REF_CLK_M__L7_N0), 
	.RST(SYNC_RST_REF_CLK_M), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.Address({ Address[3],
		Address[2],
		n3,
		n2 }), 
	.REG0({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.REG1({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.REG2({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2],
		UART_Config[1],
		UART_Config[0] }), 
	.REG3({ Div_Ratio[7],
		Div_Ratio[6],
		Div_Ratio[5],
		Div_Ratio[4],
		Div_Ratio[3],
		Div_Ratio[2],
		Div_Ratio[1],
		Div_Ratio[0] }), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.test_si3(SI[0]), 
	.test_si2(SI[1]), 
	.test_si1(n14), 
	.test_so2(n10), 
	.test_so1(SO[1]), 
	.test_se(FE_OFN5_SE), 
	.FE_OFN1_SYNC_RST_REF_CLK_M(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.REF_CLK_M__L7_N1(REF_CLK_M__L7_N1), 
	.REF_CLK_M__L7_N12(REF_CLK_M__L7_N12), 
	.REF_CLK_M__L7_N2(REF_CLK_M__L7_N2), 
	.REF_CLK_M__L7_N3(REF_CLK_M__L7_N3), 
	.REF_CLK_M__L7_N4(REF_CLK_M__L7_N4), 
	.REF_CLK_M__L7_N5(REF_CLK_M__L7_N5), 
	.REF_CLK_M__L7_N6(REF_CLK_M__L7_N6), 
	.REF_CLK_M__L7_N7(REF_CLK_M__L7_N7));
   ALU_test_1 ALU_UNIT (.CLK(GATED_CLK__L3_N0), 
	.RST(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.Enable(EN), 
	.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(OUT_Valid), 
	.test_si(SI[3]), 
	.test_se(n24));
   PULSE_GEN_test_1 PULSE_GENERATOR (.RST(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.CLK(TX_CLK_M__L3_N0), 
	.LVL_SIG(_2_net_), 
	.PULSE_SIG(RD_INC), 
	.test_si(RD_INC_ff), 
	.test_so(n14), 
	.test_se(n35));
   delay_one_period_test_1 DELAY_ONE_PERIOD (.CLK(TX_CLK_M__L3_N0), 
	.Signal(RD_INC), 
	.Signal_delayed(RD_INC_ff), 
	.test_si(RX_P_DATA[7]), 
	.test_se(n33));
   UART_TOP_test_1 UART (.TX_CLK(TX_CLK_M__L3_N0), 
	.RX_CLK(RX_CLK_M__L3_N0), 
	.RST(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.Prescale({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.TX_IN_P({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.TX_IN_V(RD_INC_ff), 
	.TX_OUT_S(UART_TX_O), 
	.TX_OUT_V(busy_TX), 
	.RX_IN_S(UART_RX_IN), 
	.RX_OUT_P({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.RX_OUT_V(data_valid), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.PAR_TYP(UART_Config[1]), 
	.PAR_EN(UART_Config[0]), 
	.test_si(SYNC_RST_UART_CLK), 
	.test_so(SO[0]), 
	.test_se(n22));
   ASYNC_FIFO_test_1 ASYN_FIFO (.wclk(REF_CLK_M__L7_N10), 
	.rclk(TX_CLK_M__L3_N0), 
	.wrst_n(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.rrst_n(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.rinc(RD_INC), 
	.winc(TX_D_VLD), 
	.wdata({ TX_P_DATA[7],
		TX_P_DATA[6],
		TX_P_DATA[5],
		TX_P_DATA[4],
		TX_P_DATA[3],
		TX_P_DATA[2],
		TX_P_DATA[1],
		TX_P_DATA[0] }), 
	.wfull(FIFO_FULL), 
	.rempty(F_EMPTY), 
	.rdata({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.test_si2(SI[2]), 
	.test_si1(OUT_Valid), 
	.test_so2(n18), 
	.test_so1(SO[3]), 
	.test_se(FE_OFN5_SE), 
	.REF_CLK_M__L7_N11(REF_CLK_M__L7_N11), 
	.REF_CLK_M__L7_N13(REF_CLK_M__L7_N13), 
	.REF_CLK_M__L7_N14(REF_CLK_M__L7_N14), 
	.REF_CLK_M__L7_N15(REF_CLK_M__L7_N15), 
	.REF_CLK_M__L7_N8(REF_CLK_M__L7_N8), 
	.REF_CLK_M__L7_N9(REF_CLK_M__L7_N9));
   DATA_SYNC_test_1 DATA_SYNC (.unsync_bus({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.bus_enable(data_valid), 
	.CLK(REF_CLK_M__L7_N12), 
	.RST(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.sync_bus({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.enable_pulse(RX_D_VLD), 
	.test_si(n15), 
	.test_se(n26), 
	.REF_CLK_M__L7_N13(REF_CLK_M__L7_N13));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Sep 29 00:41:49 2025
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X2M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module CLK_GATE (
	test_en, 
	CLK, 
	CLK_EN, 
	GATED_CLK);
   input test_en;
   input CLK;
   input CLK_EN;
   output GATED_CLK;

   // Internal wires
   wire _0_net_;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(_0_net_), 
	.CK(CLK));
   OR2X2M U1 (.Y(_0_net_), 
	.B(test_en), 
	.A(CLK_EN));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN5_scan_rst;
   wire FE_PHN2_scan_rst;
   wire FE_PHN1_RST_N;
   wire FE_PHN0_RST_N;

   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(FE_PHN2_scan_rst));
   DLY4X1M FE_PHC2_scan_rst (.Y(FE_PHN2_scan_rst), 
	.A(IN_1));
   DLY4X1M FE_PHC1_RST_N (.Y(FE_PHN1_RST_N), 
	.A(FE_PHN0_RST_N));
   DLY4X1M FE_PHC0_RST_N (.Y(FE_PHN0_RST_N), 
	.A(IN_0));
   AO2B2X2M U1 (.Y(OUT), 
	.B1(FE_PHN5_scan_rst), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(FE_PHN1_RST_N));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN7_scan_rst;
   wire FE_PHN4_scan_rst;

   DLY4X1M FE_PHC7_scan_rst (.Y(FE_PHN7_scan_rst), 
	.A(FE_PHN4_scan_rst));
   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(IN_1));
   AO2B2X4M U1 (.Y(OUT), 
	.B1(FE_PHN7_scan_rst), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN6_scan_rst;
   wire FE_PHN3_scan_rst;

   DLY4X1M FE_PHC6_scan_rst (.Y(FE_PHN6_scan_rst), 
	.A(FE_PHN3_scan_rst));
   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(IN_1));
   AO2B2X2M U1 (.Y(OUT), 
	.B1(FE_PHN6_scan_rst), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module ClkDiv_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_SYNC_RST_UART_CLK_M, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L6_N2);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_SYNC_RST_UART_CLK_M;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L6_N2;

   // Internal wires
   wire FE_PHN9_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY4X1M FE_PHC9_div_clk__Exclude_0_NET (.Y(FE_PHN9_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.Q(div_clk), 
	.D(n27), 
	.CK(UART_CLK_M__L2_N0));
   SDFFSQX2M odd_edge_tog_reg (.SN(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.SI(FE_PHN9_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n26), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.Q(count[6]), 
	.D(n28), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[0]), 
	.D(n34), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.Q(count[5]), 
	.D(n29), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.Q(count[4]), 
	.D(n30), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_UART_CLK_M), 
	.Q(count[3]), 
	.D(n31), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[2]), 
	.D(n32), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[1]), 
	.D(n33), 
	.CK(i_ref_clk));
   OR2X2M U5 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   NAND2BX2M U6 (.Y(n16), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n50));
   INVX2M U11 (.Y(n15), 
	.A(i_div_ratio[5]));
   MX2X2M U15 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_CLK_M__L6_N2));
   CLKINVX1M U16 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(edge_flip_half[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(edge_flip_half[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   AO21XLM U21 (.Y(edge_flip_half[3]), 
	.B0(n3), 
	.A1(i_div_ratio[4]), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(edge_flip_half[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(edge_flip_half[5]), 
	.B(n4), 
	.A(i_div_ratio[6]));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U26 (.Y(edge_flip_half[6]), 
	.B(n5), 
	.A(i_div_ratio[7]));
   AO22X1M U27 (.Y(n34), 
	.B1(n17), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n16));
   AO22X1M U28 (.Y(n33), 
	.B1(n17), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n16));
   AO22X1M U29 (.Y(n32), 
	.B1(n17), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n16));
   AO22X1M U30 (.Y(n31), 
	.B1(n17), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n16));
   AO22X1M U31 (.Y(n30), 
	.B1(n17), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n16));
   AO22X1M U32 (.Y(n29), 
	.B1(n17), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n16));
   AO22X1M U33 (.Y(n28), 
	.B1(n17), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n16));
   AND3X1M U34 (.Y(n17), 
	.C(N2), 
	.B(n19), 
	.A(n18));
   CLKXOR2X2M U35 (.Y(n27), 
	.B(n20), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U36 (.Y(n20), 
	.B0(n16), 
	.A1(n18), 
	.A0(n19));
   OR2X1M U37 (.Y(n18), 
	.B(i_div_ratio[0]), 
	.A(n21));
   XNOR2X1M U38 (.Y(n26), 
	.B(n22), 
	.A(odd_edge_tog));
   OR2X1M U39 (.Y(n22), 
	.B(n16), 
	.A(n19));
   CLKNAND2X2M U40 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n23));
   MXI2X1M U41 (.Y(n23), 
	.S0(odd_edge_tog), 
	.B(n21), 
	.A(n24));
   NAND4X1M U42 (.Y(n21), 
	.D(n37), 
	.C(n36), 
	.B(n35), 
	.A(n25));
   NOR4X1M U43 (.Y(n37), 
	.D(n41), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   CLKXOR2X2M U44 (.Y(n41), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U45 (.Y(n40), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U46 (.Y(n39), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U47 (.Y(n38), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U48 (.Y(n36), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U49 (.Y(n35), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U50 (.Y(n25), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U51 (.Y(n24), 
	.D(n45), 
	.C(n44), 
	.B(n43), 
	.A(n42));
   NOR4X1M U52 (.Y(n45), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   CLKXOR2X2M U53 (.Y(n49), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U54 (.Y(n48), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U55 (.Y(n47), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U56 (.Y(n46), 
	.B(count[6]), 
	.A(i_div_ratio[7]));
   XNOR2X1M U57 (.Y(n44), 
	.B(i_div_ratio[5]), 
	.A(count[4]));
   XNOR2X1M U58 (.Y(n43), 
	.B(i_div_ratio[6]), 
	.A(count[5]));
   XNOR2X1M U59 (.Y(n42), 
	.B(i_div_ratio[4]), 
	.A(count[3]));
   CLKINVX1M U60 (.Y(N2), 
	.A(n16));
   NOR4BX1M U61 (.Y(n50), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n51));
   NOR4X1M U62 (.Y(n51), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   ClkDiv_0_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module ClkDiv_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L6_N1);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L6_N1;

   // Internal wires
   wire FE_PHN8_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY4X1M FE_PHC8_div_clk__Exclude_0_NET (.Y(FE_PHN8_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n60), 
	.CK(UART_CLK_M__L2_N0));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[6]), 
	.D(n59), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[0]), 
	.D(n53), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[5]), 
	.D(n58), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[4]), 
	.D(n57), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[3]), 
	.D(n56), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[2]), 
	.D(n55), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[1]), 
	.D(n54), 
	.CK(i_ref_clk));
   SDFFSQX1M odd_edge_tog_reg (.SN(i_rst_n), 
	.SI(FE_PHN8_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n61), 
	.CK(i_ref_clk));
   OR2X2M U6 (.Y(n2), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   NAND2BX2M U11 (.Y(n17), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n51));
   INVX2M U15 (.Y(n16), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U16 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_CLK_M__L6_N1));
   CLKINVX1M U17 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U18 (.Y(edge_flip_half[1]), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U19 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   OAI2BB1X1M U20 (.Y(edge_flip_half[2]), 
	.B0(n3), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n2));
   NOR2X1M U21 (.Y(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(n3));
   AO21XLM U22 (.Y(edge_flip_half[3]), 
	.B0(n4), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n3));
   CLKNAND2X2M U23 (.Y(n5), 
	.B(n16), 
	.A(n4));
   OAI21X1M U24 (.Y(edge_flip_half[4]), 
	.B0(n5), 
	.A1(n16), 
	.A0(n4));
   XNOR2X1M U25 (.Y(edge_flip_half[5]), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U26 (.Y(n15), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U27 (.Y(edge_flip_half[6]), 
	.B(n15), 
	.A(LTIE_LTIELO_NET));
   AO22X1M U28 (.Y(n53), 
	.B1(n18), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n17));
   AO22X1M U29 (.Y(n54), 
	.B1(n18), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n17));
   AO22X1M U30 (.Y(n55), 
	.B1(n18), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n17));
   AO22X1M U31 (.Y(n56), 
	.B1(n18), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n17));
   AO22X1M U32 (.Y(n57), 
	.B1(n18), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n17));
   AO22X1M U33 (.Y(n58), 
	.B1(n18), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n17));
   AO22X1M U34 (.Y(n59), 
	.B1(n18), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n17));
   AND3X1M U35 (.Y(n18), 
	.C(N2), 
	.B(n20), 
	.A(n19));
   CLKXOR2X2M U36 (.Y(n60), 
	.B(n21), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U37 (.Y(n21), 
	.B0(n17), 
	.A1(n19), 
	.A0(n20));
   OR2X1M U38 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n22));
   XNOR2X1M U39 (.Y(n61), 
	.B(n23), 
	.A(odd_edge_tog));
   OR2X1M U40 (.Y(n23), 
	.B(n17), 
	.A(n20));
   CLKNAND2X2M U41 (.Y(n20), 
	.B(i_div_ratio[0]), 
	.A(n24));
   MXI2X1M U42 (.Y(n24), 
	.S0(odd_edge_tog), 
	.B(n22), 
	.A(n25));
   NAND4X1M U43 (.Y(n22), 
	.D(n38), 
	.C(n37), 
	.B(n36), 
	.A(n35));
   NOR4X1M U44 (.Y(n38), 
	.D(n42), 
	.C(n41), 
	.B(n40), 
	.A(n39));
   CLKXOR2X2M U45 (.Y(n42), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U46 (.Y(n41), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U47 (.Y(n40), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U48 (.Y(n39), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U49 (.Y(n37), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U50 (.Y(n36), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U51 (.Y(n35), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U52 (.Y(n25), 
	.D(n46), 
	.C(n45), 
	.B(n44), 
	.A(n43));
   NOR4X1M U53 (.Y(n46), 
	.D(n50), 
	.C(n49), 
	.B(n48), 
	.A(n47));
   CLKXOR2X2M U54 (.Y(n50), 
	.B(count[2]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U55 (.Y(n49), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U56 (.Y(n48), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U57 (.Y(n47), 
	.B(count[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U58 (.Y(n45), 
	.B(LTIE_LTIELO_NET), 
	.A(count[4]));
   XNOR2X1M U59 (.Y(n44), 
	.B(LTIE_LTIELO_NET), 
	.A(count[5]));
   XNOR2X1M U60 (.Y(n43), 
	.B(LTIE_LTIELO_NET), 
	.A(count[3]));
   CLKINVX1M U61 (.Y(N2), 
	.A(n17));
   NOR4BX1M U62 (.Y(n51), 
	.D(i_div_ratio[1]), 
	.C(LTIE_LTIELO_NET), 
	.B(i_div_ratio[2]), 
	.AN(n52));
   NOR4X1M U63 (.Y(n52), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   ClkDiv_1_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module Mux_Prescale (
	Prescale, 
	clk_div);
   input [5:0] Prescale;
   output [7:0] clk_div;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n1;
   wire n2;
   wire n3;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   AND2X2M U13 (.Y(clk_div[2]), 
	.B(n2), 
	.A(n1));
   AND2X2M U14 (.Y(clk_div[1]), 
	.B(n3), 
	.A(n2));
   OAI21X2M U15 (.Y(clk_div[0]), 
	.B0(n2), 
	.A1(n3), 
	.A0(n1));
   NOR3BX2M U16 (.Y(n1), 
	.C(Prescale[5]), 
	.B(Prescale[4]), 
	.AN(Prescale[3]));
   NOR3X2M U17 (.Y(n2), 
	.C(Prescale[0]), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   NOR3BX2M U18 (.Y(n3), 
	.C(Prescale[5]), 
	.B(Prescale[3]), 
	.AN(Prescale[4]));
   INVX2M U3 (.Y(clk_div[3]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(clk_div[4]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(clk_div[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(clk_div[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U11 (.Y(clk_div[7]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module RST_SYNC_test_0 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \ff[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \ff_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\ff[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \ff_reg[1]  (.SI(\ff[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\ff[0] ), 
	.CK(CLK));
endmodule

module RST_SYNC_test_1 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \ff[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \ff_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\ff[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \ff_reg[1]  (.SI(\ff[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\ff[0] ), 
	.CK(CLK));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	WrEn, 
	RdEn, 
	Address, 
	WrData, 
	RdData, 
	RdData_Valid, 
	CLK_EN, 
	ALU_FUN, 
	EN, 
	ALU_OUT, 
	OUT_Valid, 
	TX_D_VLD, 
	TX_P_DATA, 
	FIFO_FULL, 
	RX_P_DATA, 
	RX_D_VLD, 
	test_si, 
	test_so, 
	test_se, 
	REF_CLK_M__L7_N13, 
	REF_CLK_M__L7_N14, 
	REF_CLK_M__L7_N15, 
	REF_CLK_M__L7_N7);
   input CLK;
   input RST;
   output WrEn;
   output RdEn;
   output [3:0] Address;
   output [7:0] WrData;
   input [7:0] RdData;
   input RdData_Valid;
   output CLK_EN;
   output [3:0] ALU_FUN;
   output EN;
   input [15:0] ALU_OUT;
   input OUT_Valid;
   output TX_D_VLD;
   output [7:0] TX_P_DATA;
   input FIFO_FULL;
   input [7:0] RX_P_DATA;
   input RX_D_VLD;
   input test_si;
   output test_so;
   input test_se;
   input REF_CLK_M__L7_N13;
   input REF_CLK_M__L7_N14;
   input REF_CLK_M__L7_N15;
   input REF_CLK_M__L7_N7;

   // Internal wires
   wire N99;
   wire n1;
   wire n2;
   wire n3;
   wire n6;
   wire n7;
   wire n10;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n29;
   wire n30;
   wire n32;
   wire n33;
   wire n35;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n61;
   wire n62;
   wire n64;
   wire n65;
   wire n66;
   wire n69;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n77;
   wire n107;
   wire n109;
   wire n111;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n11;
   wire n12;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n28;
   wire n31;
   wire n34;
   wire n36;
   wire n60;
   wire n63;
   wire n67;
   wire n68;
   wire n70;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire [2:0] state;

   assign test_so = n142 ;

   SDFFRQX2M CLK_EN_reg (.SI(Address[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CLK_EN), 
	.D(n124), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M EN_reg (.SI(CLK_EN), 
	.SE(test_se), 
	.RN(RST), 
	.Q(EN), 
	.D(n123), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \ALU_FUN_reg[3]  (.SI(ALU_FUN[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[3]), 
	.D(n129), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \TX_P_DATA_reg[7]  (.SI(TX_P_DATA[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[7]), 
	.D(n114), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \TX_P_DATA_reg[6]  (.SI(TX_P_DATA[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[6]), 
	.D(n115), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \TX_P_DATA_reg[5]  (.SI(TX_P_DATA[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[5]), 
	.D(n116), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \TX_P_DATA_reg[4]  (.SI(TX_P_DATA[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[4]), 
	.D(n117), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \TX_P_DATA_reg[3]  (.SI(TX_P_DATA[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[3]), 
	.D(n118), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \TX_P_DATA_reg[2]  (.SI(TX_P_DATA[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[2]), 
	.D(n119), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \TX_P_DATA_reg[1]  (.SI(TX_P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[1]), 
	.D(n120), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \TX_P_DATA_reg[0]  (.SI(TX_D_VLD), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_P_DATA[0]), 
	.D(n121), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M RdEn_reg (.SI(EN), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RdEn), 
	.D(n107), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M WrEn_reg (.SI(WrData[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrEn), 
	.D(n77), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[7]  (.SI(WrData[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[7]), 
	.D(n137), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[4]  (.SI(WrData[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[4]), 
	.D(n134), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[6]  (.SI(WrData[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[6]), 
	.D(n136), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[5]  (.SI(WrData[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[5]), 
	.D(n135), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[3]  (.SI(WrData[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[3]), 
	.D(n133), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[2]  (.SI(WrData[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[2]), 
	.D(n132), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[1]  (.SI(WrData[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[1]), 
	.D(n131), 
	.CK(CLK));
   SDFFRQX2M \WrData_reg[0]  (.SI(TX_P_DATA[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrData[0]), 
	.D(n130), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M TX_D_VLD_reg (.SI(RdEn), 
	.SE(test_se), 
	.RN(RST), 
	.Q(TX_D_VLD), 
	.D(n122), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M \ALU_FUN_reg[1]  (.SI(ALU_FUN[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[1]), 
	.D(n127), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \Address_reg[2]  (.SI(Address[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Address[2]), 
	.D(n140), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \ALU_FUN_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[0]), 
	.D(n126), 
	.CK(CLK));
   SDFFRQX2M \ALU_FUN_reg[2]  (.SI(ALU_FUN[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[2]), 
	.D(n128), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M ALU_Part1_Done_reg (.SI(ALU_FUN[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(N99), 
	.D(n125), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \Address_reg[1]  (.SI(Address[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Address[1]), 
	.D(n139), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \Address_reg[0]  (.SI(n145), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Address[0]), 
	.D(n138), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \state_reg[1]  (.SI(n68), 
	.SE(test_se), 
	.RN(RST), 
	.Q(state[1]), 
	.D(n109), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \state_reg[0]  (.SI(WrEn), 
	.SE(test_se), 
	.RN(RST), 
	.Q(state[0]), 
	.D(n113), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \state_reg[2]  (.SI(n144), 
	.SE(test_se), 
	.RN(RST), 
	.Q(state[2]), 
	.D(n111), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \Address_reg[3]  (.SI(Address[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Address[3]), 
	.D(n141), 
	.CK(REF_CLK_M__L7_N7));
   OAI22X1M U3 (.Y(n13), 
	.B1(n63), 
	.B0(n33), 
	.A1(n144), 
	.A0(n32));
   INVX2M U4 (.Y(n19), 
	.A(n40));
   INVX2M U5 (.Y(n20), 
	.A(FIFO_FULL));
   INVX2M U6 (.Y(n18), 
	.A(n66));
   INVX2M U7 (.Y(n67), 
	.A(n26));
   NOR2X2M U9 (.Y(n40), 
	.B(n58), 
	.A(n65));
   NOR2X2M U10 (.Y(n39), 
	.B(n42), 
	.A(n6));
   NOR2X2M U11 (.Y(n41), 
	.B(n58), 
	.A(n145));
   NAND3X2M U12 (.Y(n66), 
	.C(n69), 
	.B(n61), 
	.A(n19));
   INVX2M U13 (.Y(n11), 
	.A(n13));
   NAND2BX2M U14 (.Y(n74), 
	.B(n75), 
	.AN(n72));
   OAI21X2M U15 (.Y(n125), 
	.B0(n19), 
	.A1(n145), 
	.A0(n70));
   INVX2M U16 (.Y(n70), 
	.A(n58));
   NAND2X2M U17 (.Y(n61), 
	.B(n142), 
	.A(n67));
   NAND2X2M U18 (.Y(n26), 
	.B(n144), 
	.A(n68));
   NAND3X2M U19 (.Y(n64), 
	.C(n70), 
	.B(n66), 
	.A(n65));
   INVX2M U20 (.Y(n143), 
	.A(n24));
   OAI32X1M U22 (.Y(n113), 
	.B1(n13), 
	.B0(n68), 
	.A2(n27), 
	.A1(n11), 
	.A0(n26));
   AOI31X2M U23 (.Y(n27), 
	.B0(state[2]), 
	.A2(n30), 
	.A1(n25), 
	.A0(n29));
   NOR2X2M U24 (.Y(n29), 
	.B(n17), 
	.A(n28));
   NOR3X2M U25 (.Y(n30), 
	.C(RX_P_DATA[2]), 
	.B(RX_P_DATA[6]), 
	.A(n36));
   OAI32X1M U26 (.Y(n109), 
	.B1(n13), 
	.B0(n144), 
	.A2(n11), 
	.A1(state[1]), 
	.A0(n10));
   AOI31X2M U27 (.Y(n10), 
	.B0(state[0]), 
	.A2(n14), 
	.A1(RX_P_DATA[0]), 
	.A0(RX_P_DATA[4]));
   AOI211X2M U28 (.Y(n14), 
	.C0(state[2]), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   NAND4X2M U29 (.Y(n15), 
	.D(n21), 
	.C(n34), 
	.B(RX_P_DATA[1]), 
	.A(RX_P_DATA[5]));
   OAI221X1M U30 (.Y(n111), 
	.C0(n24), 
	.B1(n13), 
	.B0(n142), 
	.A1(n23), 
	.A0(n22));
   NAND4BX1M U31 (.Y(n23), 
	.D(RX_P_DATA[2]), 
	.C(RX_P_DATA[6]), 
	.B(n25), 
	.AN(n17));
   NAND4X2M U32 (.Y(n22), 
	.D(n28), 
	.C(n36), 
	.B(n13), 
	.A(n67));
   AOI21X2M U33 (.Y(n33), 
	.B0(n144), 
	.A1(n142), 
	.A0(n68));
   AOI31X2M U34 (.Y(n32), 
	.B0(n35), 
	.A2(RdData_Valid), 
	.A1(n20), 
	.A0(state[0]));
   AOI21X2M U35 (.Y(n35), 
	.B0(n142), 
	.A1(n145), 
	.A0(n68));
   NOR2X2M U36 (.Y(n3), 
	.B(state[0]), 
	.A(n144));
   NAND2X2M U37 (.Y(n58), 
	.B(state[2]), 
	.A(n3));
   OAI211X2M U38 (.Y(n122), 
	.C0(n12), 
	.B0(n59), 
	.A1(n58), 
	.A0(n57));
   NAND2X2M U39 (.Y(n59), 
	.B(n57), 
	.A(TX_D_VLD));
   INVX2M U40 (.Y(n12), 
	.A(n39));
   AND2X2M U41 (.Y(n57), 
	.B(n61), 
	.A(n42));
   INVX2M U42 (.Y(n142), 
	.A(state[2]));
   NAND3X2M U43 (.Y(n65), 
	.C(OUT_Valid), 
	.B(n145), 
	.A(n20));
   INVX2M U44 (.Y(n144), 
	.A(state[1]));
   NAND3X2M U45 (.Y(n6), 
	.C(state[0]), 
	.B(n142), 
	.A(state[1]));
   NAND2X2M U46 (.Y(n121), 
	.B(n56), 
	.A(n55));
   AOI22X1M U47 (.Y(n55), 
	.B1(n42), 
	.B0(TX_P_DATA[0]), 
	.A1(n41), 
	.A0(ALU_OUT[8]));
   AOI22X1M U48 (.Y(n56), 
	.B1(n40), 
	.B0(ALU_OUT[0]), 
	.A1(n39), 
	.A0(RdData[0]));
   NAND2X2M U49 (.Y(n120), 
	.B(n54), 
	.A(n53));
   AOI22X1M U50 (.Y(n53), 
	.B1(n42), 
	.B0(TX_P_DATA[1]), 
	.A1(n41), 
	.A0(ALU_OUT[9]));
   AOI22X1M U51 (.Y(n54), 
	.B1(n40), 
	.B0(ALU_OUT[1]), 
	.A1(n39), 
	.A0(RdData[1]));
   NAND2X2M U52 (.Y(n119), 
	.B(n52), 
	.A(n51));
   AOI22X1M U53 (.Y(n51), 
	.B1(n42), 
	.B0(TX_P_DATA[2]), 
	.A1(n41), 
	.A0(ALU_OUT[10]));
   AOI22X1M U54 (.Y(n52), 
	.B1(n40), 
	.B0(ALU_OUT[2]), 
	.A1(n39), 
	.A0(RdData[2]));
   NAND2X2M U55 (.Y(n118), 
	.B(n50), 
	.A(n49));
   AOI22X1M U56 (.Y(n49), 
	.B1(n42), 
	.B0(TX_P_DATA[3]), 
	.A1(n41), 
	.A0(ALU_OUT[11]));
   AOI22X1M U57 (.Y(n50), 
	.B1(n40), 
	.B0(ALU_OUT[3]), 
	.A1(n39), 
	.A0(RdData[3]));
   NAND2X2M U58 (.Y(n117), 
	.B(n48), 
	.A(n47));
   AOI22X1M U59 (.Y(n47), 
	.B1(n42), 
	.B0(TX_P_DATA[4]), 
	.A1(n41), 
	.A0(ALU_OUT[12]));
   AOI22X1M U60 (.Y(n48), 
	.B1(n40), 
	.B0(ALU_OUT[4]), 
	.A1(n39), 
	.A0(RdData[4]));
   NAND2X2M U61 (.Y(n116), 
	.B(n46), 
	.A(n45));
   AOI22X1M U62 (.Y(n45), 
	.B1(n42), 
	.B0(TX_P_DATA[5]), 
	.A1(n41), 
	.A0(ALU_OUT[13]));
   AOI22X1M U63 (.Y(n46), 
	.B1(n40), 
	.B0(ALU_OUT[5]), 
	.A1(n39), 
	.A0(RdData[5]));
   NAND2X2M U64 (.Y(n115), 
	.B(n44), 
	.A(n43));
   AOI22X1M U65 (.Y(n43), 
	.B1(n42), 
	.B0(TX_P_DATA[6]), 
	.A1(n41), 
	.A0(ALU_OUT[14]));
   AOI22X1M U66 (.Y(n44), 
	.B1(n40), 
	.B0(ALU_OUT[6]), 
	.A1(n39), 
	.A0(RdData[6]));
   NAND2X2M U67 (.Y(n114), 
	.B(n38), 
	.A(n37));
   AOI22X1M U68 (.Y(n37), 
	.B1(n42), 
	.B0(TX_P_DATA[7]), 
	.A1(n41), 
	.A0(ALU_OUT[15]));
   AOI22X1M U69 (.Y(n38), 
	.B1(n40), 
	.B0(ALU_OUT[7]), 
	.A1(n39), 
	.A0(RdData[7]));
   INVX2M U70 (.Y(n145), 
	.A(N99));
   NOR3BX2M U72 (.Y(n42), 
	.C(n41), 
	.B(n40), 
	.AN(n62));
   NAND3BX2M U73 (.Y(n62), 
	.C(RdData_Valid), 
	.B(n20), 
	.AN(n6));
   OAI2BB1X2M U74 (.Y(n124), 
	.B0(n64), 
	.A1N(n18), 
	.A0N(CLK_EN));
   OAI2BB1X2M U75 (.Y(n123), 
	.B0(n64), 
	.A1N(n18), 
	.A0N(EN));
   AOI2BB2XLM U76 (.Y(n1), 
	.B1(n67), 
	.B0(n7), 
	.A1N(n63), 
	.A0N(n7));
   AOI211X2M U77 (.Y(n7), 
	.C0(n143), 
	.B0(n3), 
	.A1(state[1]), 
	.A0(n142));
   OAI21X2M U78 (.Y(n72), 
	.B0(RX_D_VLD), 
	.A1(n75), 
	.A0(n143));
   NAND2X2M U79 (.Y(n69), 
	.B(RX_D_VLD), 
	.A(n70));
   NOR2X2M U80 (.Y(n75), 
	.B(state[2]), 
	.A(n68));
   OAI2BB2X1M U81 (.Y(n77), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(WrEn));
   AOI21X2M U82 (.Y(n2), 
	.B0(n143), 
	.A1(n142), 
	.A0(n3));
   OAI2BB2X1M U83 (.Y(n130), 
	.B1(n71), 
	.B0(n60), 
	.A1N(n71), 
	.A0N(WrData[0]));
   OAI2BB2X1M U84 (.Y(n131), 
	.B1(n71), 
	.B0(n36), 
	.A1N(n71), 
	.A0N(WrData[1]));
   OAI2BB2X1M U85 (.Y(n132), 
	.B1(n71), 
	.B0(n34), 
	.A1N(n71), 
	.A0N(WrData[2]));
   OAI2BB2X1M U86 (.Y(n133), 
	.B1(n71), 
	.B0(n31), 
	.A1N(n71), 
	.A0N(WrData[3]));
   OAI2BB2X1M U87 (.Y(n135), 
	.B1(n71), 
	.B0(n28), 
	.A1N(n71), 
	.A0N(WrData[5]));
   OAI2BB2X1M U88 (.Y(n136), 
	.B1(n71), 
	.B0(n21), 
	.A1N(n71), 
	.A0N(WrData[6]));
   OAI2BB2X1M U89 (.Y(n139), 
	.B1(n74), 
	.B0(n36), 
	.A1N(n72), 
	.A0N(Address[1]));
   OAI2BB2X1M U90 (.Y(n140), 
	.B1(n74), 
	.B0(n34), 
	.A1N(n72), 
	.A0N(Address[2]));
   OAI2BB2X1M U91 (.Y(n141), 
	.B1(n74), 
	.B0(n31), 
	.A1N(n72), 
	.A0N(Address[3]));
   OAI2BB2X1M U92 (.Y(n126), 
	.B1(n69), 
	.B0(n60), 
	.A1N(n69), 
	.A0N(ALU_FUN[0]));
   OAI2BB2X1M U93 (.Y(n127), 
	.B1(n69), 
	.B0(n36), 
	.A1N(n69), 
	.A0N(ALU_FUN[1]));
   OAI2BB2X1M U94 (.Y(n128), 
	.B1(n69), 
	.B0(n34), 
	.A1N(n69), 
	.A0N(ALU_FUN[2]));
   OAI2BB2X1M U95 (.Y(n129), 
	.B1(n69), 
	.B0(n31), 
	.A1N(n69), 
	.A0N(ALU_FUN[3]));
   OAI2BB2X1M U96 (.Y(n107), 
	.B1(n6), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(RdEn));
   NAND2X2M U97 (.Y(n24), 
	.B(n144), 
	.A(state[2]));
   INVX2M U98 (.Y(n36), 
	.A(RX_P_DATA[1]));
   INVX2M U99 (.Y(n68), 
	.A(state[0]));
   NAND4X2M U100 (.Y(n16), 
	.D(n28), 
	.C(n36), 
	.B(RX_P_DATA[2]), 
	.A(RX_P_DATA[6]));
   OAI221X2M U102 (.Y(n71), 
	.C0(RX_D_VLD), 
	.B1(n144), 
	.B0(n142), 
	.A1(n3), 
	.A0(state[2]));
   INVX2M U103 (.Y(n34), 
	.A(RX_P_DATA[2]));
   INVX2M U104 (.Y(n28), 
	.A(RX_P_DATA[5]));
   NAND2X2M U105 (.Y(n17), 
	.B(RX_P_DATA[3]), 
	.A(RX_P_DATA[7]));
   INVX2M U106 (.Y(n21), 
	.A(RX_P_DATA[6]));
   INVX2M U107 (.Y(n60), 
	.A(RX_P_DATA[0]));
   INVX2M U108 (.Y(n31), 
	.A(RX_P_DATA[3]));
   INVX2M U109 (.Y(n63), 
	.A(RX_D_VLD));
   AO2B2X2M U110 (.Y(n134), 
	.B1(n71), 
	.B0(WrData[4]), 
	.A1N(n71), 
	.A0(RX_P_DATA[4]));
   AO2B2X2M U144 (.Y(n137), 
	.B1(n71), 
	.B0(WrData[7]), 
	.A1N(n71), 
	.A0(RX_P_DATA[7]));
   CLKXOR2X2M U145 (.Y(n25), 
	.B(n60), 
	.A(RX_P_DATA[4]));
   AO21XLM U146 (.Y(n138), 
	.B0(n73), 
	.A1(n72), 
	.A0(Address[0]));
   OAI32X1M U147 (.Y(n73), 
	.B1(n60), 
	.B0(n74), 
	.A2(n24), 
	.A1(n68), 
	.A0(n72));
endmodule

module Register_file_8_16_test_1 (
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	WrData, 
	Address, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	RdData, 
	RdData_Valid, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_SYNC_RST_REF_CLK_M, 
	REF_CLK_M__L7_N1, 
	REF_CLK_M__L7_N12, 
	REF_CLK_M__L7_N2, 
	REF_CLK_M__L7_N3, 
	REF_CLK_M__L7_N4, 
	REF_CLK_M__L7_N5, 
	REF_CLK_M__L7_N6, 
	REF_CLK_M__L7_N7);
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   input [7:0] WrData;
   input [3:0] Address;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   output [7:0] RdData;
   output RdData_Valid;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_SYNC_RST_REF_CLK_M;
   input REF_CLK_M__L7_N1;
   input REF_CLK_M__L7_N12;
   input REF_CLK_M__L7_N2;
   input REF_CLK_M__L7_N3;
   input REF_CLK_M__L7_N4;
   input REF_CLK_M__L7_N5;
   input REF_CLK_M__L7_N6;
   input REF_CLK_M__L7_N7;

   // Internal wires
   wire FE_OFN0_SYNC_RST_REF_CLK_M;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire \Reg_File[4][7] ;
   wire \Reg_File[4][6] ;
   wire \Reg_File[4][5] ;
   wire \Reg_File[4][4] ;
   wire \Reg_File[4][3] ;
   wire \Reg_File[4][2] ;
   wire \Reg_File[4][1] ;
   wire \Reg_File[4][0] ;
   wire \Reg_File[5][7] ;
   wire \Reg_File[5][6] ;
   wire \Reg_File[5][5] ;
   wire \Reg_File[5][4] ;
   wire \Reg_File[5][3] ;
   wire \Reg_File[5][2] ;
   wire \Reg_File[5][1] ;
   wire \Reg_File[5][0] ;
   wire \Reg_File[6][7] ;
   wire \Reg_File[6][6] ;
   wire \Reg_File[6][5] ;
   wire \Reg_File[6][4] ;
   wire \Reg_File[6][3] ;
   wire \Reg_File[6][2] ;
   wire \Reg_File[6][1] ;
   wire \Reg_File[6][0] ;
   wire \Reg_File[7][7] ;
   wire \Reg_File[7][6] ;
   wire \Reg_File[7][5] ;
   wire \Reg_File[7][4] ;
   wire \Reg_File[7][3] ;
   wire \Reg_File[7][2] ;
   wire \Reg_File[7][1] ;
   wire \Reg_File[7][0] ;
   wire \Reg_File[8][7] ;
   wire \Reg_File[8][6] ;
   wire \Reg_File[8][5] ;
   wire \Reg_File[8][4] ;
   wire \Reg_File[8][3] ;
   wire \Reg_File[8][2] ;
   wire \Reg_File[8][1] ;
   wire \Reg_File[8][0] ;
   wire \Reg_File[9][7] ;
   wire \Reg_File[9][6] ;
   wire \Reg_File[9][5] ;
   wire \Reg_File[9][4] ;
   wire \Reg_File[9][3] ;
   wire \Reg_File[9][2] ;
   wire \Reg_File[9][1] ;
   wire \Reg_File[9][0] ;
   wire \Reg_File[10][7] ;
   wire \Reg_File[10][6] ;
   wire \Reg_File[10][5] ;
   wire \Reg_File[10][4] ;
   wire \Reg_File[10][3] ;
   wire \Reg_File[10][2] ;
   wire \Reg_File[10][1] ;
   wire \Reg_File[10][0] ;
   wire \Reg_File[11][7] ;
   wire \Reg_File[11][6] ;
   wire \Reg_File[11][5] ;
   wire \Reg_File[11][4] ;
   wire \Reg_File[11][3] ;
   wire \Reg_File[11][2] ;
   wire \Reg_File[11][1] ;
   wire \Reg_File[11][0] ;
   wire \Reg_File[12][7] ;
   wire \Reg_File[12][6] ;
   wire \Reg_File[12][5] ;
   wire \Reg_File[12][4] ;
   wire \Reg_File[12][3] ;
   wire \Reg_File[12][2] ;
   wire \Reg_File[12][1] ;
   wire \Reg_File[12][0] ;
   wire \Reg_File[13][7] ;
   wire \Reg_File[13][6] ;
   wire \Reg_File[13][5] ;
   wire \Reg_File[13][4] ;
   wire \Reg_File[13][3] ;
   wire \Reg_File[13][2] ;
   wire \Reg_File[13][1] ;
   wire \Reg_File[13][0] ;
   wire \Reg_File[14][7] ;
   wire \Reg_File[14][6] ;
   wire \Reg_File[14][5] ;
   wire \Reg_File[14][4] ;
   wire \Reg_File[14][3] ;
   wire \Reg_File[14][2] ;
   wire \Reg_File[14][1] ;
   wire \Reg_File[14][0] ;
   wire \Reg_File[15][7] ;
   wire \Reg_File[15][6] ;
   wire \Reg_File[15][5] ;
   wire \Reg_File[15][4] ;
   wire \Reg_File[15][3] ;
   wire \Reg_File[15][2] ;
   wire \Reg_File[15][1] ;
   wire \Reg_File[15][0] ;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n336;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;

   assign N10 = Address[0] ;
   assign N11 = Address[1] ;
   assign N12 = Address[2] ;
   assign N13 = Address[3] ;
   assign test_so1 = \Reg_File[10][7]  ;
   assign test_so2 = \Reg_File[15][7]  ;

   BUFX10M FE_OFC0_SYNC_RST_REF_CLK_M (.Y(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.A(RST));
   SDFFQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n359), 
	.Q(RdData[7]), 
	.D(n314), 
	.CK(REF_CLK_M__L7_N6));
   SDFFQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n361), 
	.Q(RdData[6]), 
	.D(n313), 
	.CK(REF_CLK_M__L7_N7));
   SDFFQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n362), 
	.Q(RdData[5]), 
	.D(n312), 
	.CK(REF_CLK_M__L7_N7));
   SDFFQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n361), 
	.Q(RdData[4]), 
	.D(n311), 
	.CK(REF_CLK_M__L7_N7));
   SDFFQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n363), 
	.Q(RdData[3]), 
	.D(n310), 
	.CK(REF_CLK_M__L7_N7));
   SDFFQX2M \RdData_reg[2]  (.SI(test_si2), 
	.SE(n362), 
	.Q(RdData[2]), 
	.D(n309), 
	.CK(REF_CLK_M__L7_N6));
   SDFFQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n360), 
	.Q(RdData[1]), 
	.D(n308), 
	.CK(REF_CLK_M__L7_N7));
   SDFFQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(n359), 
	.Q(RdData[0]), 
	.D(n307), 
	.CK(REF_CLK_M__L7_N7));
   SDFFQX2M \Reg_File_reg[15][7]  (.SI(\Reg_File[15][6] ), 
	.SE(n362), 
	.Q(\Reg_File[15][7] ), 
	.D(n185), 
	.CK(REF_CLK_M__L7_N4));
   SDFFQX2M \Reg_File_reg[15][6]  (.SI(\Reg_File[15][5] ), 
	.SE(n360), 
	.Q(\Reg_File[15][6] ), 
	.D(n184), 
	.CK(REF_CLK_M__L7_N4));
   SDFFQX2M \Reg_File_reg[15][5]  (.SI(\Reg_File[15][4] ), 
	.SE(n363), 
	.Q(\Reg_File[15][5] ), 
	.D(n183), 
	.CK(REF_CLK_M__L7_N4));
   SDFFQX2M \Reg_File_reg[15][4]  (.SI(\Reg_File[15][3] ), 
	.SE(n361), 
	.Q(\Reg_File[15][4] ), 
	.D(n182), 
	.CK(REF_CLK_M__L7_N4));
   SDFFQX2M \Reg_File_reg[15][3]  (.SI(\Reg_File[15][2] ), 
	.SE(n360), 
	.Q(\Reg_File[15][3] ), 
	.D(n181), 
	.CK(REF_CLK_M__L7_N5));
   SDFFQX2M \Reg_File_reg[15][2]  (.SI(\Reg_File[15][1] ), 
	.SE(n363), 
	.Q(\Reg_File[15][2] ), 
	.D(n180), 
	.CK(REF_CLK_M__L7_N5));
   SDFFQX2M \Reg_File_reg[15][1]  (.SI(\Reg_File[15][0] ), 
	.SE(n359), 
	.Q(\Reg_File[15][1] ), 
	.D(n179), 
	.CK(REF_CLK_M__L7_N5));
   SDFFQX2M \Reg_File_reg[15][0]  (.SI(\Reg_File[14][7] ), 
	.SE(n363), 
	.Q(\Reg_File[15][0] ), 
	.D(n178), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[5][7]  (.SI(\Reg_File[5][6] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[5][7] ), 
	.D(n265), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[5][6]  (.SI(\Reg_File[5][5] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[5][6] ), 
	.D(n264), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[5][5]  (.SI(\Reg_File[5][4] ), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[5][5] ), 
	.D(n263), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[5][4]  (.SI(\Reg_File[5][3] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[5][4] ), 
	.D(n262), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[5][3]  (.SI(\Reg_File[5][2] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[5][3] ), 
	.D(n261), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][2]  (.SI(\Reg_File[5][1] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[5][2] ), 
	.D(n260), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][1]  (.SI(\Reg_File[5][0] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[5][1] ), 
	.D(n259), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][0]  (.SI(\Reg_File[4][7] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[5][0] ), 
	.D(n258), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[9][7]  (.SI(\Reg_File[9][6] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][7] ), 
	.D(n233), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[9][6]  (.SI(\Reg_File[9][5] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][6] ), 
	.D(n232), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[9][5]  (.SI(\Reg_File[9][4] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][5] ), 
	.D(n231), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[9][4]  (.SI(\Reg_File[9][3] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][4] ), 
	.D(n230), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[9][3]  (.SI(\Reg_File[9][2] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][3] ), 
	.D(n229), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[9][2]  (.SI(\Reg_File[9][1] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][2] ), 
	.D(n228), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[9][1]  (.SI(\Reg_File[9][0] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][1] ), 
	.D(n227), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[9][0]  (.SI(\Reg_File[8][7] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[9][0] ), 
	.D(n226), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[13][7]  (.SI(\Reg_File[13][6] ), 
	.SE(n363), 
	.RN(RST), 
	.Q(\Reg_File[13][7] ), 
	.D(n201), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[13][6]  (.SI(\Reg_File[13][5] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[13][6] ), 
	.D(n200), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[13][5]  (.SI(\Reg_File[13][4] ), 
	.SE(n361), 
	.RN(RST), 
	.Q(\Reg_File[13][5] ), 
	.D(n199), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[13][4]  (.SI(\Reg_File[13][3] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[13][4] ), 
	.D(n198), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[13][3]  (.SI(\Reg_File[13][2] ), 
	.SE(n361), 
	.RN(RST), 
	.Q(\Reg_File[13][3] ), 
	.D(n197), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[13][2]  (.SI(\Reg_File[13][1] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[13][2] ), 
	.D(n196), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[13][1]  (.SI(\Reg_File[13][0] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[13][1] ), 
	.D(n195), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[13][0]  (.SI(\Reg_File[12][7] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[13][0] ), 
	.D(n194), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[7][7]  (.SI(\Reg_File[7][6] ), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][7] ), 
	.D(n249), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[7][6]  (.SI(\Reg_File[7][5] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][6] ), 
	.D(n248), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[7][5]  (.SI(\Reg_File[7][4] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][5] ), 
	.D(n247), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[7][4]  (.SI(\Reg_File[7][3] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][4] ), 
	.D(n246), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[7][3]  (.SI(\Reg_File[7][2] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][3] ), 
	.D(n245), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][2]  (.SI(\Reg_File[7][1] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][2] ), 
	.D(n244), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][1]  (.SI(\Reg_File[7][0] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][1] ), 
	.D(n243), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[7][0]  (.SI(\Reg_File[6][7] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[7][0] ), 
	.D(n242), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[11][7]  (.SI(\Reg_File[11][6] ), 
	.SE(n359), 
	.RN(RST), 
	.Q(\Reg_File[11][7] ), 
	.D(n217), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[11][6]  (.SI(\Reg_File[11][5] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[11][6] ), 
	.D(n216), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[11][5]  (.SI(\Reg_File[11][4] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[11][5] ), 
	.D(n215), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[11][4]  (.SI(\Reg_File[11][3] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[11][4] ), 
	.D(n214), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[11][3]  (.SI(\Reg_File[11][2] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[11][3] ), 
	.D(n213), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[11][2]  (.SI(\Reg_File[11][1] ), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[11][2] ), 
	.D(n212), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[11][1]  (.SI(\Reg_File[11][0] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[11][1] ), 
	.D(n211), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[11][0]  (.SI(test_si3), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[11][0] ), 
	.D(n210), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[6][7]  (.SI(\Reg_File[6][6] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[6][7] ), 
	.D(n257), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[6][6]  (.SI(\Reg_File[6][5] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[6][6] ), 
	.D(n256), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[6][5]  (.SI(\Reg_File[6][4] ), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[6][5] ), 
	.D(n255), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[6][4]  (.SI(\Reg_File[6][3] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[6][4] ), 
	.D(n254), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[6][3]  (.SI(\Reg_File[6][2] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[6][3] ), 
	.D(n253), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][2]  (.SI(\Reg_File[6][1] ), 
	.SE(n359), 
	.RN(RST), 
	.Q(\Reg_File[6][2] ), 
	.D(n252), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][1]  (.SI(\Reg_File[6][0] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[6][1] ), 
	.D(n251), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][0]  (.SI(\Reg_File[5][7] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[6][0] ), 
	.D(n250), 
	.CK(CLK));
   SDFFRQX4M \Reg_File_reg[10][7]  (.SI(\Reg_File[10][6] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][7] ), 
	.D(n225), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[10][6]  (.SI(\Reg_File[10][5] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][6] ), 
	.D(n224), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[10][5]  (.SI(\Reg_File[10][4] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][5] ), 
	.D(n223), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[10][4]  (.SI(\Reg_File[10][3] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][4] ), 
	.D(n222), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[10][3]  (.SI(\Reg_File[10][2] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][3] ), 
	.D(n221), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[10][2]  (.SI(\Reg_File[10][1] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][2] ), 
	.D(n220), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[10][1]  (.SI(\Reg_File[10][0] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][1] ), 
	.D(n219), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[10][0]  (.SI(\Reg_File[9][7] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[10][0] ), 
	.D(n218), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[14][7]  (.SI(\Reg_File[14][6] ), 
	.SE(n363), 
	.RN(RST), 
	.Q(\Reg_File[14][7] ), 
	.D(n193), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[14][6]  (.SI(\Reg_File[14][5] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[14][6] ), 
	.D(n192), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[14][5]  (.SI(\Reg_File[14][4] ), 
	.SE(n361), 
	.RN(RST), 
	.Q(\Reg_File[14][5] ), 
	.D(n191), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[14][4]  (.SI(\Reg_File[14][3] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[14][4] ), 
	.D(n190), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[14][3]  (.SI(\Reg_File[14][2] ), 
	.SE(n361), 
	.RN(RST), 
	.Q(\Reg_File[14][3] ), 
	.D(n189), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[14][2]  (.SI(\Reg_File[14][1] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[14][2] ), 
	.D(n188), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[14][1]  (.SI(\Reg_File[14][0] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[14][1] ), 
	.D(n187), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[14][0]  (.SI(\Reg_File[13][7] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[14][0] ), 
	.D(n186), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[4][7]  (.SI(\Reg_File[4][6] ), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[4][7] ), 
	.D(n273), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[4][6]  (.SI(\Reg_File[4][5] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[4][6] ), 
	.D(n272), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[4][5]  (.SI(\Reg_File[4][4] ), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[4][5] ), 
	.D(n271), 
	.CK(REF_CLK_M__L7_N3));
   SDFFRQX2M \Reg_File_reg[4][4]  (.SI(\Reg_File[4][3] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[4][4] ), 
	.D(n270), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][3]  (.SI(\Reg_File[4][2] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[4][3] ), 
	.D(n269), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][2]  (.SI(\Reg_File[4][1] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[4][2] ), 
	.D(n268), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][1]  (.SI(\Reg_File[4][0] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[4][1] ), 
	.D(n267), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][0]  (.SI(REG3[7]), 
	.SE(n363), 
	.RN(RST), 
	.Q(\Reg_File[4][0] ), 
	.D(n266), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[8][7]  (.SI(\Reg_File[8][6] ), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][7] ), 
	.D(n241), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[8][6]  (.SI(\Reg_File[8][5] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][6] ), 
	.D(n240), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[8][5]  (.SI(\Reg_File[8][4] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][5] ), 
	.D(n239), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[8][4]  (.SI(\Reg_File[8][3] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][4] ), 
	.D(n238), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[8][3]  (.SI(\Reg_File[8][2] ), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][3] ), 
	.D(n237), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[8][2]  (.SI(\Reg_File[8][1] ), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][2] ), 
	.D(n236), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[8][1]  (.SI(\Reg_File[8][0] ), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][1] ), 
	.D(n235), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[8][0]  (.SI(\Reg_File[7][7] ), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(\Reg_File[8][0] ), 
	.D(n234), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M \Reg_File_reg[12][7]  (.SI(\Reg_File[12][6] ), 
	.SE(n361), 
	.RN(RST), 
	.Q(\Reg_File[12][7] ), 
	.D(n209), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[12][6]  (.SI(\Reg_File[12][5] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[12][6] ), 
	.D(n208), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[12][5]  (.SI(\Reg_File[12][4] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[12][5] ), 
	.D(n207), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[12][4]  (.SI(\Reg_File[12][3] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[12][4] ), 
	.D(n206), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M \Reg_File_reg[12][3]  (.SI(\Reg_File[12][2] ), 
	.SE(n362), 
	.RN(RST), 
	.Q(\Reg_File[12][3] ), 
	.D(n205), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[12][2]  (.SI(\Reg_File[12][1] ), 
	.SE(n359), 
	.RN(RST), 
	.Q(\Reg_File[12][2] ), 
	.D(n204), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[12][1]  (.SI(\Reg_File[12][0] ), 
	.SE(n360), 
	.RN(RST), 
	.Q(\Reg_File[12][1] ), 
	.D(n203), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[12][0]  (.SI(\Reg_File[11][7] ), 
	.SE(n359), 
	.RN(RST), 
	.Q(\Reg_File[12][0] ), 
	.D(n202), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_Valid_reg (.SI(test_si1), 
	.SE(n360), 
	.RN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.Q(RdData_Valid), 
	.D(n306), 
	.CK(REF_CLK_M__L7_N12));
   SDFFRQX2M \Reg_File_reg[3][0]  (.SI(REG2[7]), 
	.SE(n363), 
	.RN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.Q(REG3[0]), 
	.D(n274), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[1][6]  (.SI(REG1[5]), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[6]), 
	.D(n296), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[0][7]  (.SI(REG0[6]), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[7]), 
	.D(n305), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[0][6]  (.SI(REG0[5]), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[6]), 
	.D(n304), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \Reg_File_reg[0][5]  (.SI(REG0[4]), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[5]), 
	.D(n303), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \Reg_File_reg[0][4]  (.SI(REG0[3]), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[4]), 
	.D(n302), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[0][3]  (.SI(REG0[2]), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[3]), 
	.D(n301), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[0][2]  (.SI(REG0[1]), 
	.SE(n363), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[2]), 
	.D(n300), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[0][1]  (.SI(REG0[0]), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[1]), 
	.D(n299), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \Reg_File_reg[0][0]  (.SI(RdData[7]), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG0[0]), 
	.D(n298), 
	.CK(REF_CLK_M__L7_N7));
   SDFFSQX2M \Reg_File_reg[2][0]  (.SN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.SI(REG1[7]), 
	.SE(n361), 
	.Q(REG2[0]), 
	.D(n282), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \Reg_File_reg[1][1]  (.SI(REG1[0]), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[1]), 
	.D(n291), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[1][5]  (.SI(REG1[4]), 
	.SE(n361), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[5]), 
	.D(n295), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[1][4]  (.SI(REG1[3]), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[4]), 
	.D(n294), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[1][7]  (.SI(REG1[6]), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[7]), 
	.D(n297), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[1][3]  (.SI(REG1[2]), 
	.SE(n360), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[3]), 
	.D(n293), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[1][2]  (.SI(REG1[1]), 
	.SE(n362), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[2]), 
	.D(n292), 
	.CK(REF_CLK_M__L7_N2));
   SDFFRQX2M \Reg_File_reg[1][0]  (.SI(REG0[7]), 
	.SE(n359), 
	.RN(FE_OFN0_SYNC_RST_REF_CLK_M), 
	.Q(REG1[0]), 
	.D(n290), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M \Reg_File_reg[3][6]  (.SI(REG3[5]), 
	.SE(n360), 
	.RN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.Q(REG3[6]), 
	.D(n280), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[3][7]  (.SI(REG3[6]), 
	.SE(n359), 
	.RN(RST), 
	.Q(REG3[7]), 
	.D(n281), 
	.CK(REF_CLK_M__L7_N6));
   SDFFSQX2M \Reg_File_reg[3][5]  (.SN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.SI(REG3[4]), 
	.SE(n360), 
	.Q(REG3[5]), 
	.D(n279), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[2][1]  (.SI(REG2[0]), 
	.SE(n360), 
	.RN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.Q(REG2[1]), 
	.D(n283), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[3][4]  (.SI(REG3[3]), 
	.SE(n363), 
	.RN(RST), 
	.Q(REG3[4]), 
	.D(n278), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[3][2]  (.SI(REG3[1]), 
	.SE(n359), 
	.RN(RST), 
	.Q(REG3[2]), 
	.D(n276), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[3][3]  (.SI(REG3[2]), 
	.SE(n363), 
	.RN(RST), 
	.Q(REG3[3]), 
	.D(n277), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[3][1]  (.SI(REG3[0]), 
	.SE(n359), 
	.RN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.Q(REG3[1]), 
	.D(n275), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[2][2]  (.SI(REG2[1]), 
	.SE(n361), 
	.RN(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.Q(REG2[2]), 
	.D(n284), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M \Reg_File_reg[2][3]  (.SI(REG2[2]), 
	.SE(n363), 
	.RN(RST), 
	.Q(REG2[3]), 
	.D(n285), 
	.CK(REF_CLK_M__L7_N5));
   SDFFSQX2M \Reg_File_reg[2][7]  (.SN(RST), 
	.SI(REG2[6]), 
	.SE(n362), 
	.Q(REG2[7]), 
	.D(n289), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[2][5]  (.SI(REG2[4]), 
	.SE(n361), 
	.RN(RST), 
	.Q(REG2[5]), 
	.D(n287), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[2][6]  (.SI(REG2[5]), 
	.SE(n359), 
	.RN(RST), 
	.Q(REG2[6]), 
	.D(n288), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M \Reg_File_reg[2][4]  (.SI(REG2[3]), 
	.SE(n362), 
	.RN(RST), 
	.Q(REG2[4]), 
	.D(n286), 
	.CK(REF_CLK_M__L7_N5));
   NOR2X2M U140 (.Y(n156), 
	.B(N11), 
	.A(n346));
   NOR2X2M U141 (.Y(n152), 
	.B(n341), 
	.A(n346));
   NOR2X2M U142 (.Y(n162), 
	.B(N12), 
	.A(N11));
   NOR2X2M U143 (.Y(n159), 
	.B(N12), 
	.A(n341));
   INVX4M U144 (.Y(n338), 
	.A(n340));
   INVX2M U145 (.Y(n336), 
	.A(n341));
   INVX4M U146 (.Y(n339), 
	.A(n340));
   NAND3X2M U149 (.Y(n150), 
	.C(n152), 
	.B(RST), 
	.A(n151));
   NAND2X2M U150 (.Y(n155), 
	.B(n151), 
	.A(n156));
   NAND2X2M U151 (.Y(n157), 
	.B(n154), 
	.A(n156));
   NAND2X2M U152 (.Y(n153), 
	.B(n152), 
	.A(n154));
   NAND2X2M U153 (.Y(n166), 
	.B(n152), 
	.A(n167));
   NAND2X2M U154 (.Y(n168), 
	.B(n152), 
	.A(n169));
   NAND2X2M U155 (.Y(n170), 
	.B(n156), 
	.A(n167));
   NAND2X2M U156 (.Y(n171), 
	.B(n156), 
	.A(n169));
   INVX2M U157 (.Y(n345), 
	.A(n177));
   NOR2BX2M U160 (.Y(n151), 
	.B(n340), 
	.AN(n163));
   NOR2BX2M U161 (.Y(n154), 
	.B(N10), 
	.AN(n163));
   NOR2BX2M U162 (.Y(n167), 
	.B(n340), 
	.AN(n175));
   NOR2BX2M U163 (.Y(n169), 
	.B(N10), 
	.AN(n175));
   NAND2X2M U164 (.Y(n172), 
	.B(n159), 
	.A(n167));
   NAND2X2M U165 (.Y(n173), 
	.B(n159), 
	.A(n169));
   NAND2X2M U166 (.Y(n174), 
	.B(n162), 
	.A(n167));
   NAND2X2M U167 (.Y(n176), 
	.B(n162), 
	.A(n169));
   NAND2X2M U168 (.Y(n158), 
	.B(n151), 
	.A(n159));
   NAND2X2M U169 (.Y(n160), 
	.B(n154), 
	.A(n159));
   NAND2X2M U170 (.Y(n161), 
	.B(n151), 
	.A(n162));
   NAND2X2M U171 (.Y(n164), 
	.B(n154), 
	.A(n162));
   NAND2X2M U172 (.Y(n177), 
	.B(FE_OFN1_SYNC_RST_REF_CLK_M), 
	.A(n306));
   OAI2BB2X1M U174 (.Y(n178), 
	.B1(n354), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][0] ));
   OAI2BB2X1M U175 (.Y(n179), 
	.B1(n353), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][1] ));
   OAI2BB2X1M U176 (.Y(n180), 
	.B1(n352), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][2] ));
   OAI2BB2X1M U177 (.Y(n181), 
	.B1(n351), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][3] ));
   OAI2BB2X1M U178 (.Y(n182), 
	.B1(n350), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][4] ));
   OAI2BB2X1M U179 (.Y(n183), 
	.B1(n349), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][5] ));
   OAI2BB2X1M U180 (.Y(n184), 
	.B1(n348), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][6] ));
   OAI2BB2X1M U181 (.Y(n185), 
	.B1(n347), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(\Reg_File[15][7] ));
   MX4X1M U182 (.Y(n145), 
	.S1(N11), 
	.S0(n338), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4X1M U183 (.Y(n140), 
	.S1(N11), 
	.S0(N10), 
	.D(\Reg_File[7][0] ), 
	.C(\Reg_File[6][0] ), 
	.B(\Reg_File[5][0] ), 
	.A(\Reg_File[4][0] ));
   MX4X1M U184 (.Y(n144), 
	.S1(N11), 
	.S0(n338), 
	.D(\Reg_File[7][1] ), 
	.C(\Reg_File[6][1] ), 
	.B(\Reg_File[5][1] ), 
	.A(\Reg_File[4][1] ));
   MX4X1M U185 (.Y(n148), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[7][2] ), 
	.C(\Reg_File[6][2] ), 
	.B(\Reg_File[5][2] ), 
	.A(\Reg_File[4][2] ));
   MX4X1M U186 (.Y(n317), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[7][3] ), 
	.C(\Reg_File[6][3] ), 
	.B(\Reg_File[5][3] ), 
	.A(\Reg_File[4][3] ));
   MX4X1M U187 (.Y(n321), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[7][4] ), 
	.C(\Reg_File[6][4] ), 
	.B(\Reg_File[5][4] ), 
	.A(\Reg_File[4][4] ));
   MX4X1M U188 (.Y(n325), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[7][5] ), 
	.C(\Reg_File[6][5] ), 
	.B(\Reg_File[5][5] ), 
	.A(\Reg_File[4][5] ));
   MX4X1M U189 (.Y(n329), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[7][6] ), 
	.C(\Reg_File[6][6] ), 
	.B(\Reg_File[5][6] ), 
	.A(\Reg_File[4][6] ));
   MX4X1M U190 (.Y(n333), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[7][7] ), 
	.C(\Reg_File[6][7] ), 
	.B(\Reg_File[5][7] ), 
	.A(\Reg_File[4][7] ));
   MX4X1M U191 (.Y(n138), 
	.S1(n336), 
	.S0(n339), 
	.D(\Reg_File[15][0] ), 
	.C(\Reg_File[14][0] ), 
	.B(\Reg_File[13][0] ), 
	.A(\Reg_File[12][0] ));
   MX4X1M U192 (.Y(n146), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[15][2] ), 
	.C(\Reg_File[14][2] ), 
	.B(\Reg_File[13][2] ), 
	.A(\Reg_File[12][2] ));
   MX4X1M U193 (.Y(n315), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[15][3] ), 
	.C(\Reg_File[14][3] ), 
	.B(\Reg_File[13][3] ), 
	.A(\Reg_File[12][3] ));
   MX4X1M U194 (.Y(n319), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[15][4] ), 
	.C(\Reg_File[14][4] ), 
	.B(\Reg_File[13][4] ), 
	.A(\Reg_File[12][4] ));
   MX4X1M U195 (.Y(n323), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[15][5] ), 
	.C(\Reg_File[14][5] ), 
	.B(\Reg_File[13][5] ), 
	.A(\Reg_File[12][5] ));
   MX4X1M U196 (.Y(n327), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[15][6] ), 
	.C(\Reg_File[14][6] ), 
	.B(\Reg_File[13][6] ), 
	.A(\Reg_File[12][6] ));
   MX4X1M U197 (.Y(n331), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[15][7] ), 
	.C(\Reg_File[14][7] ), 
	.B(\Reg_File[13][7] ), 
	.A(\Reg_File[12][7] ));
   AND2X2M U198 (.Y(n163), 
	.B(n165), 
	.A(N13));
   AO22X1M U199 (.Y(n307), 
	.B1(n177), 
	.B0(RdData[0]), 
	.A1(n345), 
	.A0(N42));
   MX4X1M U200 (.Y(N42), 
	.S1(N12), 
	.S0(N13), 
	.D(n138), 
	.C(n140), 
	.B(n139), 
	.A(n141));
   MX4X1M U201 (.Y(n141), 
	.S1(N11), 
	.S0(N10), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   MX4X1M U202 (.Y(n139), 
	.S1(N11), 
	.S0(N10), 
	.D(\Reg_File[11][0] ), 
	.C(\Reg_File[10][0] ), 
	.B(\Reg_File[9][0] ), 
	.A(\Reg_File[8][0] ));
   AO22X1M U203 (.Y(n308), 
	.B1(n177), 
	.B0(RdData[1]), 
	.A1(n345), 
	.A0(N41));
   MX4X1M U204 (.Y(N41), 
	.S1(N12), 
	.S0(N13), 
	.D(n142), 
	.C(n144), 
	.B(n143), 
	.A(n145));
   MX4X1M U205 (.Y(n143), 
	.S1(N11), 
	.S0(N10), 
	.D(\Reg_File[11][1] ), 
	.C(\Reg_File[10][1] ), 
	.B(\Reg_File[9][1] ), 
	.A(\Reg_File[8][1] ));
   MX4X1M U206 (.Y(n142), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[15][1] ), 
	.C(\Reg_File[14][1] ), 
	.B(\Reg_File[13][1] ), 
	.A(\Reg_File[12][1] ));
   AO22X1M U207 (.Y(n309), 
	.B1(n177), 
	.B0(RdData[2]), 
	.A1(n345), 
	.A0(N40));
   MX4X1M U208 (.Y(N40), 
	.S1(N12), 
	.S0(N13), 
	.D(n146), 
	.C(n148), 
	.B(n147), 
	.A(n149));
   MX4X1M U209 (.Y(n149), 
	.S1(n336), 
	.S0(n338), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4X1M U210 (.Y(n147), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[11][2] ), 
	.C(\Reg_File[10][2] ), 
	.B(\Reg_File[9][2] ), 
	.A(\Reg_File[8][2] ));
   AO22X1M U211 (.Y(n310), 
	.B1(n177), 
	.B0(RdData[3]), 
	.A1(n345), 
	.A0(N39));
   MX4X1M U212 (.Y(N39), 
	.S1(N12), 
	.S0(N13), 
	.D(n315), 
	.C(n317), 
	.B(n316), 
	.A(n318));
   MX4X1M U213 (.Y(n318), 
	.S1(n336), 
	.S0(n338), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   MX4X1M U214 (.Y(n316), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[11][3] ), 
	.C(\Reg_File[10][3] ), 
	.B(\Reg_File[9][3] ), 
	.A(\Reg_File[8][3] ));
   AO22X1M U215 (.Y(n311), 
	.B1(n177), 
	.B0(RdData[4]), 
	.A1(n345), 
	.A0(N38));
   MX4X1M U216 (.Y(N38), 
	.S1(N12), 
	.S0(N13), 
	.D(n319), 
	.C(n321), 
	.B(n320), 
	.A(n322));
   MX4X1M U217 (.Y(n322), 
	.S1(n336), 
	.S0(n339), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   MX4X1M U218 (.Y(n320), 
	.S1(n336), 
	.S0(n338), 
	.D(\Reg_File[11][4] ), 
	.C(\Reg_File[10][4] ), 
	.B(\Reg_File[9][4] ), 
	.A(\Reg_File[8][4] ));
   AO22X1M U219 (.Y(n312), 
	.B1(n177), 
	.B0(RdData[5]), 
	.A1(n345), 
	.A0(N37));
   MX4X1M U220 (.Y(N37), 
	.S1(N12), 
	.S0(N13), 
	.D(n323), 
	.C(n325), 
	.B(n324), 
	.A(n326));
   MX4X1M U221 (.Y(n326), 
	.S1(N11), 
	.S0(n339), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4X1M U222 (.Y(n324), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[11][5] ), 
	.C(\Reg_File[10][5] ), 
	.B(\Reg_File[9][5] ), 
	.A(\Reg_File[8][5] ));
   AO22X1M U223 (.Y(n313), 
	.B1(n177), 
	.B0(RdData[6]), 
	.A1(n345), 
	.A0(N36));
   MX4X1M U224 (.Y(N36), 
	.S1(N12), 
	.S0(N13), 
	.D(n327), 
	.C(n329), 
	.B(n328), 
	.A(n330));
   MX4X1M U225 (.Y(n330), 
	.S1(N11), 
	.S0(n339), 
	.D(REG3[6]), 
	.C(REG2[6]), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4X1M U226 (.Y(n328), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[11][6] ), 
	.C(\Reg_File[10][6] ), 
	.B(\Reg_File[9][6] ), 
	.A(\Reg_File[8][6] ));
   AO22X1M U227 (.Y(n314), 
	.B1(n177), 
	.B0(RdData[7]), 
	.A1(n345), 
	.A0(N35));
   MX4X1M U228 (.Y(N35), 
	.S1(N12), 
	.S0(N13), 
	.D(n331), 
	.C(n333), 
	.B(n332), 
	.A(n334));
   MX4X1M U229 (.Y(n334), 
	.S1(N11), 
	.S0(n339), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   MX4X1M U230 (.Y(n332), 
	.S1(N11), 
	.S0(n339), 
	.D(\Reg_File[11][7] ), 
	.C(\Reg_File[10][7] ), 
	.B(\Reg_File[9][7] ), 
	.A(\Reg_File[8][7] ));
   INVX2M U231 (.Y(n340), 
	.A(N10));
   INVX2M U232 (.Y(n341), 
	.A(N11));
   INVX2M U233 (.Y(n354), 
	.A(WrData[0]));
   INVX2M U234 (.Y(n353), 
	.A(WrData[1]));
   INVX2M U235 (.Y(n352), 
	.A(WrData[2]));
   INVX2M U236 (.Y(n351), 
	.A(WrData[3]));
   INVX2M U237 (.Y(n349), 
	.A(WrData[5]));
   INVX2M U238 (.Y(n348), 
	.A(WrData[6]));
   INVX2M U239 (.Y(n350), 
	.A(WrData[4]));
   INVX2M U240 (.Y(n347), 
	.A(WrData[7]));
   NOR2BX2M U241 (.Y(n306), 
	.B(WrEn), 
	.AN(RdEn));
   OAI2BB2X1M U242 (.Y(n186), 
	.B1(n153), 
	.B0(n354), 
	.A1N(n153), 
	.A0N(\Reg_File[14][0] ));
   OAI2BB2X1M U243 (.Y(n187), 
	.B1(n153), 
	.B0(n353), 
	.A1N(n153), 
	.A0N(\Reg_File[14][1] ));
   OAI2BB2X1M U244 (.Y(n188), 
	.B1(n153), 
	.B0(n352), 
	.A1N(n153), 
	.A0N(\Reg_File[14][2] ));
   OAI2BB2X1M U245 (.Y(n189), 
	.B1(n153), 
	.B0(n351), 
	.A1N(n153), 
	.A0N(\Reg_File[14][3] ));
   OAI2BB2X1M U246 (.Y(n190), 
	.B1(n153), 
	.B0(n350), 
	.A1N(n153), 
	.A0N(\Reg_File[14][4] ));
   OAI2BB2X1M U247 (.Y(n191), 
	.B1(n153), 
	.B0(n349), 
	.A1N(n153), 
	.A0N(\Reg_File[14][5] ));
   OAI2BB2X1M U248 (.Y(n192), 
	.B1(n153), 
	.B0(n348), 
	.A1N(n153), 
	.A0N(\Reg_File[14][6] ));
   OAI2BB2X1M U249 (.Y(n193), 
	.B1(n153), 
	.B0(n347), 
	.A1N(n153), 
	.A0N(\Reg_File[14][7] ));
   OAI2BB2X1M U250 (.Y(n242), 
	.B1(n166), 
	.B0(n354), 
	.A1N(n166), 
	.A0N(\Reg_File[7][0] ));
   OAI2BB2X1M U251 (.Y(n243), 
	.B1(n166), 
	.B0(n353), 
	.A1N(n166), 
	.A0N(\Reg_File[7][1] ));
   OAI2BB2X1M U252 (.Y(n244), 
	.B1(n166), 
	.B0(n352), 
	.A1N(n166), 
	.A0N(\Reg_File[7][2] ));
   OAI2BB2X1M U253 (.Y(n245), 
	.B1(n166), 
	.B0(n351), 
	.A1N(n166), 
	.A0N(\Reg_File[7][3] ));
   OAI2BB2X1M U254 (.Y(n246), 
	.B1(n166), 
	.B0(n350), 
	.A1N(n166), 
	.A0N(\Reg_File[7][4] ));
   OAI2BB2X1M U255 (.Y(n247), 
	.B1(n166), 
	.B0(n349), 
	.A1N(n166), 
	.A0N(\Reg_File[7][5] ));
   OAI2BB2X1M U256 (.Y(n248), 
	.B1(n166), 
	.B0(n348), 
	.A1N(n166), 
	.A0N(\Reg_File[7][6] ));
   OAI2BB2X1M U257 (.Y(n249), 
	.B1(n166), 
	.B0(n347), 
	.A1N(n166), 
	.A0N(\Reg_File[7][7] ));
   OAI2BB2X1M U258 (.Y(n250), 
	.B1(n168), 
	.B0(n354), 
	.A1N(n168), 
	.A0N(\Reg_File[6][0] ));
   OAI2BB2X1M U259 (.Y(n251), 
	.B1(n168), 
	.B0(n353), 
	.A1N(n168), 
	.A0N(\Reg_File[6][1] ));
   OAI2BB2X1M U260 (.Y(n252), 
	.B1(n168), 
	.B0(n352), 
	.A1N(n168), 
	.A0N(\Reg_File[6][2] ));
   OAI2BB2X1M U261 (.Y(n253), 
	.B1(n168), 
	.B0(n351), 
	.A1N(n168), 
	.A0N(\Reg_File[6][3] ));
   OAI2BB2X1M U262 (.Y(n254), 
	.B1(n168), 
	.B0(n350), 
	.A1N(n168), 
	.A0N(\Reg_File[6][4] ));
   OAI2BB2X1M U263 (.Y(n255), 
	.B1(n168), 
	.B0(n349), 
	.A1N(n168), 
	.A0N(\Reg_File[6][5] ));
   OAI2BB2X1M U264 (.Y(n256), 
	.B1(n168), 
	.B0(n348), 
	.A1N(n168), 
	.A0N(\Reg_File[6][6] ));
   OAI2BB2X1M U265 (.Y(n257), 
	.B1(n168), 
	.B0(n347), 
	.A1N(n168), 
	.A0N(\Reg_File[6][7] ));
   OAI2BB2X1M U266 (.Y(n258), 
	.B1(n170), 
	.B0(n354), 
	.A1N(n170), 
	.A0N(\Reg_File[5][0] ));
   OAI2BB2X1M U267 (.Y(n259), 
	.B1(n170), 
	.B0(n353), 
	.A1N(n170), 
	.A0N(\Reg_File[5][1] ));
   OAI2BB2X1M U268 (.Y(n260), 
	.B1(n170), 
	.B0(n352), 
	.A1N(n170), 
	.A0N(\Reg_File[5][2] ));
   OAI2BB2X1M U269 (.Y(n261), 
	.B1(n170), 
	.B0(n351), 
	.A1N(n170), 
	.A0N(\Reg_File[5][3] ));
   OAI2BB2X1M U270 (.Y(n262), 
	.B1(n170), 
	.B0(n350), 
	.A1N(n170), 
	.A0N(\Reg_File[5][4] ));
   OAI2BB2X1M U271 (.Y(n263), 
	.B1(n170), 
	.B0(n349), 
	.A1N(n170), 
	.A0N(\Reg_File[5][5] ));
   OAI2BB2X1M U272 (.Y(n264), 
	.B1(n170), 
	.B0(n348), 
	.A1N(n170), 
	.A0N(\Reg_File[5][6] ));
   OAI2BB2X1M U273 (.Y(n265), 
	.B1(n170), 
	.B0(n347), 
	.A1N(n170), 
	.A0N(\Reg_File[5][7] ));
   OAI2BB2X1M U274 (.Y(n266), 
	.B1(n171), 
	.B0(n354), 
	.A1N(n171), 
	.A0N(\Reg_File[4][0] ));
   OAI2BB2X1M U275 (.Y(n267), 
	.B1(n171), 
	.B0(n353), 
	.A1N(n171), 
	.A0N(\Reg_File[4][1] ));
   OAI2BB2X1M U276 (.Y(n268), 
	.B1(n171), 
	.B0(n352), 
	.A1N(n171), 
	.A0N(\Reg_File[4][2] ));
   OAI2BB2X1M U277 (.Y(n269), 
	.B1(n171), 
	.B0(n351), 
	.A1N(n171), 
	.A0N(\Reg_File[4][3] ));
   OAI2BB2X1M U278 (.Y(n270), 
	.B1(n171), 
	.B0(n350), 
	.A1N(n171), 
	.A0N(\Reg_File[4][4] ));
   OAI2BB2X1M U279 (.Y(n271), 
	.B1(n171), 
	.B0(n349), 
	.A1N(n171), 
	.A0N(\Reg_File[4][5] ));
   OAI2BB2X1M U280 (.Y(n272), 
	.B1(n171), 
	.B0(n348), 
	.A1N(n171), 
	.A0N(\Reg_File[4][6] ));
   OAI2BB2X1M U281 (.Y(n273), 
	.B1(n171), 
	.B0(n347), 
	.A1N(n171), 
	.A0N(\Reg_File[4][7] ));
   OAI2BB2X1M U282 (.Y(n274), 
	.B1(n172), 
	.B0(n354), 
	.A1N(n172), 
	.A0N(REG3[0]));
   OAI2BB2X1M U283 (.Y(n275), 
	.B1(n172), 
	.B0(n353), 
	.A1N(n172), 
	.A0N(REG3[1]));
   OAI2BB2X1M U284 (.Y(n276), 
	.B1(n172), 
	.B0(n352), 
	.A1N(n172), 
	.A0N(REG3[2]));
   OAI2BB2X1M U285 (.Y(n277), 
	.B1(n172), 
	.B0(n351), 
	.A1N(n172), 
	.A0N(REG3[3]));
   OAI2BB2X1M U286 (.Y(n278), 
	.B1(n172), 
	.B0(n350), 
	.A1N(n172), 
	.A0N(REG3[4]));
   OAI2BB2X1M U287 (.Y(n280), 
	.B1(n172), 
	.B0(n348), 
	.A1N(n172), 
	.A0N(REG3[6]));
   OAI2BB2X1M U288 (.Y(n281), 
	.B1(n172), 
	.B0(n347), 
	.A1N(n172), 
	.A0N(REG3[7]));
   OAI2BB2X1M U289 (.Y(n283), 
	.B1(n173), 
	.B0(n353), 
	.A1N(n173), 
	.A0N(REG2[1]));
   OAI2BB2X1M U290 (.Y(n284), 
	.B1(n173), 
	.B0(n352), 
	.A1N(n173), 
	.A0N(REG2[2]));
   OAI2BB2X1M U291 (.Y(n285), 
	.B1(n173), 
	.B0(n351), 
	.A1N(n173), 
	.A0N(REG2[3]));
   OAI2BB2X1M U292 (.Y(n286), 
	.B1(n173), 
	.B0(n350), 
	.A1N(n173), 
	.A0N(REG2[4]));
   OAI2BB2X1M U293 (.Y(n287), 
	.B1(n173), 
	.B0(n349), 
	.A1N(n173), 
	.A0N(REG2[5]));
   OAI2BB2X1M U294 (.Y(n288), 
	.B1(n173), 
	.B0(n348), 
	.A1N(n173), 
	.A0N(REG2[6]));
   OAI2BB2X1M U295 (.Y(n290), 
	.B1(n174), 
	.B0(n354), 
	.A1N(n174), 
	.A0N(REG1[0]));
   OAI2BB2X1M U296 (.Y(n291), 
	.B1(n174), 
	.B0(n353), 
	.A1N(n174), 
	.A0N(REG1[1]));
   OAI2BB2X1M U297 (.Y(n292), 
	.B1(n174), 
	.B0(n352), 
	.A1N(n174), 
	.A0N(REG1[2]));
   OAI2BB2X1M U298 (.Y(n293), 
	.B1(n174), 
	.B0(n351), 
	.A1N(n174), 
	.A0N(REG1[3]));
   OAI2BB2X1M U299 (.Y(n294), 
	.B1(n174), 
	.B0(n350), 
	.A1N(n174), 
	.A0N(REG1[4]));
   OAI2BB2X1M U300 (.Y(n295), 
	.B1(n174), 
	.B0(n349), 
	.A1N(n174), 
	.A0N(REG1[5]));
   OAI2BB2X1M U301 (.Y(n296), 
	.B1(n174), 
	.B0(n348), 
	.A1N(n174), 
	.A0N(REG1[6]));
   OAI2BB2X1M U302 (.Y(n297), 
	.B1(n174), 
	.B0(n347), 
	.A1N(n174), 
	.A0N(REG1[7]));
   OAI2BB2X1M U303 (.Y(n298), 
	.B1(n176), 
	.B0(n354), 
	.A1N(n176), 
	.A0N(REG0[0]));
   OAI2BB2X1M U304 (.Y(n299), 
	.B1(n176), 
	.B0(n353), 
	.A1N(n176), 
	.A0N(REG0[1]));
   OAI2BB2X1M U305 (.Y(n300), 
	.B1(n176), 
	.B0(n352), 
	.A1N(n176), 
	.A0N(REG0[2]));
   OAI2BB2X1M U306 (.Y(n301), 
	.B1(n176), 
	.B0(n351), 
	.A1N(n176), 
	.A0N(REG0[3]));
   OAI2BB2X1M U307 (.Y(n302), 
	.B1(n176), 
	.B0(n350), 
	.A1N(n176), 
	.A0N(REG0[4]));
   OAI2BB2X1M U308 (.Y(n303), 
	.B1(n176), 
	.B0(n349), 
	.A1N(n176), 
	.A0N(REG0[5]));
   OAI2BB2X1M U309 (.Y(n304), 
	.B1(n176), 
	.B0(n348), 
	.A1N(n176), 
	.A0N(REG0[6]));
   OAI2BB2X1M U310 (.Y(n305), 
	.B1(n176), 
	.B0(n347), 
	.A1N(n176), 
	.A0N(REG0[7]));
   OAI2BB2X1M U311 (.Y(n194), 
	.B1(n155), 
	.B0(n354), 
	.A1N(n155), 
	.A0N(\Reg_File[13][0] ));
   OAI2BB2X1M U312 (.Y(n195), 
	.B1(n155), 
	.B0(n353), 
	.A1N(n155), 
	.A0N(\Reg_File[13][1] ));
   OAI2BB2X1M U313 (.Y(n196), 
	.B1(n155), 
	.B0(n352), 
	.A1N(n155), 
	.A0N(\Reg_File[13][2] ));
   OAI2BB2X1M U314 (.Y(n197), 
	.B1(n155), 
	.B0(n351), 
	.A1N(n155), 
	.A0N(\Reg_File[13][3] ));
   OAI2BB2X1M U315 (.Y(n198), 
	.B1(n155), 
	.B0(n350), 
	.A1N(n155), 
	.A0N(\Reg_File[13][4] ));
   OAI2BB2X1M U316 (.Y(n199), 
	.B1(n155), 
	.B0(n349), 
	.A1N(n155), 
	.A0N(\Reg_File[13][5] ));
   OAI2BB2X1M U317 (.Y(n200), 
	.B1(n155), 
	.B0(n348), 
	.A1N(n155), 
	.A0N(\Reg_File[13][6] ));
   OAI2BB2X1M U318 (.Y(n201), 
	.B1(n155), 
	.B0(n347), 
	.A1N(n155), 
	.A0N(\Reg_File[13][7] ));
   OAI2BB2X1M U319 (.Y(n202), 
	.B1(n157), 
	.B0(n354), 
	.A1N(n157), 
	.A0N(\Reg_File[12][0] ));
   OAI2BB2X1M U320 (.Y(n203), 
	.B1(n157), 
	.B0(n353), 
	.A1N(n157), 
	.A0N(\Reg_File[12][1] ));
   OAI2BB2X1M U321 (.Y(n204), 
	.B1(n157), 
	.B0(n352), 
	.A1N(n157), 
	.A0N(\Reg_File[12][2] ));
   OAI2BB2X1M U322 (.Y(n205), 
	.B1(n157), 
	.B0(n351), 
	.A1N(n157), 
	.A0N(\Reg_File[12][3] ));
   OAI2BB2X1M U323 (.Y(n206), 
	.B1(n157), 
	.B0(n350), 
	.A1N(n157), 
	.A0N(\Reg_File[12][4] ));
   OAI2BB2X1M U324 (.Y(n207), 
	.B1(n157), 
	.B0(n349), 
	.A1N(n157), 
	.A0N(\Reg_File[12][5] ));
   OAI2BB2X1M U325 (.Y(n208), 
	.B1(n157), 
	.B0(n348), 
	.A1N(n157), 
	.A0N(\Reg_File[12][6] ));
   OAI2BB2X1M U326 (.Y(n209), 
	.B1(n157), 
	.B0(n347), 
	.A1N(n157), 
	.A0N(\Reg_File[12][7] ));
   OAI2BB2X1M U327 (.Y(n210), 
	.B1(n158), 
	.B0(n354), 
	.A1N(n158), 
	.A0N(\Reg_File[11][0] ));
   OAI2BB2X1M U328 (.Y(n211), 
	.B1(n158), 
	.B0(n353), 
	.A1N(n158), 
	.A0N(\Reg_File[11][1] ));
   OAI2BB2X1M U329 (.Y(n212), 
	.B1(n158), 
	.B0(n352), 
	.A1N(n158), 
	.A0N(\Reg_File[11][2] ));
   OAI2BB2X1M U330 (.Y(n213), 
	.B1(n158), 
	.B0(n351), 
	.A1N(n158), 
	.A0N(\Reg_File[11][3] ));
   OAI2BB2X1M U331 (.Y(n214), 
	.B1(n158), 
	.B0(n350), 
	.A1N(n158), 
	.A0N(\Reg_File[11][4] ));
   OAI2BB2X1M U332 (.Y(n215), 
	.B1(n158), 
	.B0(n349), 
	.A1N(n158), 
	.A0N(\Reg_File[11][5] ));
   OAI2BB2X1M U333 (.Y(n216), 
	.B1(n158), 
	.B0(n348), 
	.A1N(n158), 
	.A0N(\Reg_File[11][6] ));
   OAI2BB2X1M U334 (.Y(n217), 
	.B1(n158), 
	.B0(n347), 
	.A1N(n158), 
	.A0N(\Reg_File[11][7] ));
   OAI2BB2X1M U335 (.Y(n218), 
	.B1(n160), 
	.B0(n354), 
	.A1N(n160), 
	.A0N(\Reg_File[10][0] ));
   OAI2BB2X1M U336 (.Y(n219), 
	.B1(n160), 
	.B0(n353), 
	.A1N(n160), 
	.A0N(\Reg_File[10][1] ));
   OAI2BB2X1M U337 (.Y(n220), 
	.B1(n160), 
	.B0(n352), 
	.A1N(n160), 
	.A0N(\Reg_File[10][2] ));
   OAI2BB2X1M U338 (.Y(n221), 
	.B1(n160), 
	.B0(n351), 
	.A1N(n160), 
	.A0N(\Reg_File[10][3] ));
   OAI2BB2X1M U339 (.Y(n222), 
	.B1(n160), 
	.B0(n350), 
	.A1N(n160), 
	.A0N(\Reg_File[10][4] ));
   OAI2BB2X1M U340 (.Y(n223), 
	.B1(n160), 
	.B0(n349), 
	.A1N(n160), 
	.A0N(\Reg_File[10][5] ));
   OAI2BB2X1M U341 (.Y(n224), 
	.B1(n160), 
	.B0(n348), 
	.A1N(n160), 
	.A0N(\Reg_File[10][6] ));
   OAI2BB2X1M U342 (.Y(n225), 
	.B1(n160), 
	.B0(n347), 
	.A1N(n160), 
	.A0N(\Reg_File[10][7] ));
   OAI2BB2X1M U343 (.Y(n226), 
	.B1(n161), 
	.B0(n354), 
	.A1N(n161), 
	.A0N(\Reg_File[9][0] ));
   OAI2BB2X1M U344 (.Y(n227), 
	.B1(n161), 
	.B0(n353), 
	.A1N(n161), 
	.A0N(\Reg_File[9][1] ));
   OAI2BB2X1M U345 (.Y(n228), 
	.B1(n161), 
	.B0(n352), 
	.A1N(n161), 
	.A0N(\Reg_File[9][2] ));
   OAI2BB2X1M U346 (.Y(n229), 
	.B1(n161), 
	.B0(n351), 
	.A1N(n161), 
	.A0N(\Reg_File[9][3] ));
   OAI2BB2X1M U347 (.Y(n230), 
	.B1(n161), 
	.B0(n350), 
	.A1N(n161), 
	.A0N(\Reg_File[9][4] ));
   OAI2BB2X1M U348 (.Y(n231), 
	.B1(n161), 
	.B0(n349), 
	.A1N(n161), 
	.A0N(\Reg_File[9][5] ));
   OAI2BB2X1M U349 (.Y(n232), 
	.B1(n161), 
	.B0(n348), 
	.A1N(n161), 
	.A0N(\Reg_File[9][6] ));
   OAI2BB2X1M U350 (.Y(n233), 
	.B1(n161), 
	.B0(n347), 
	.A1N(n161), 
	.A0N(\Reg_File[9][7] ));
   OAI2BB2X1M U351 (.Y(n234), 
	.B1(n164), 
	.B0(n354), 
	.A1N(n164), 
	.A0N(\Reg_File[8][0] ));
   OAI2BB2X1M U352 (.Y(n235), 
	.B1(n164), 
	.B0(n353), 
	.A1N(n164), 
	.A0N(\Reg_File[8][1] ));
   OAI2BB2X1M U353 (.Y(n236), 
	.B1(n164), 
	.B0(n352), 
	.A1N(n164), 
	.A0N(\Reg_File[8][2] ));
   OAI2BB2X1M U354 (.Y(n237), 
	.B1(n164), 
	.B0(n351), 
	.A1N(n164), 
	.A0N(\Reg_File[8][3] ));
   OAI2BB2X1M U355 (.Y(n238), 
	.B1(n164), 
	.B0(n350), 
	.A1N(n164), 
	.A0N(\Reg_File[8][4] ));
   OAI2BB2X1M U356 (.Y(n239), 
	.B1(n164), 
	.B0(n349), 
	.A1N(n164), 
	.A0N(\Reg_File[8][5] ));
   OAI2BB2X1M U357 (.Y(n240), 
	.B1(n164), 
	.B0(n348), 
	.A1N(n164), 
	.A0N(\Reg_File[8][6] ));
   OAI2BB2X1M U358 (.Y(n241), 
	.B1(n164), 
	.B0(n347), 
	.A1N(n164), 
	.A0N(\Reg_File[8][7] ));
   OAI2BB2X1M U359 (.Y(n279), 
	.B1(n172), 
	.B0(n349), 
	.A1N(n172), 
	.A0N(REG3[5]));
   OAI2BB2X1M U360 (.Y(n282), 
	.B1(n173), 
	.B0(n354), 
	.A1N(n173), 
	.A0N(REG2[0]));
   OAI2BB2X1M U361 (.Y(n289), 
	.B1(n173), 
	.B0(n347), 
	.A1N(n173), 
	.A0N(REG2[7]));
   NOR2BX2M U362 (.Y(n175), 
	.B(N13), 
	.AN(n165));
   NOR2BX2M U363 (.Y(n165), 
	.B(RdEn), 
	.AN(WrEn));
   INVX2M U364 (.Y(n346), 
	.A(N12));
   DLY1X4M U365 (.Y(n359), 
	.A(test_se));
   DLY1X4M U366 (.Y(n360), 
	.A(test_se));
   DLY1X4M U367 (.Y(n361), 
	.A(test_se));
   DLY1X4M U368 (.Y(n362), 
	.A(test_se));
   DLY1X4M U369 (.Y(n363), 
	.A(test_se));
endmodule

module ALU_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n165, 
	n166, 
	n167, 
	n189, 
	n191, 
	n190, 
	n188, 
	n187, 
	n186, 
	n185, 
	n184, 
	n183, 
	n182, 
	n168);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n165;
   input n166;
   input n167;
   input n189;
   input n191;
   input n190;
   input n188;
   input n187;
   input n186;
   input n185;
   input n184;
   input n183;
   input n182;
   input n168;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   XNOR2X2M U8 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   OR2X2M U9 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   NAND2X2M U10 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n10), 
	.A(n2));
   NAND2X2M U11 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   INVX2M U12 (.Y(n3), 
	.A(a[5]));
   INVX2M U13 (.Y(n2), 
	.A(n18));
   NAND2X2M U14 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n5), 
	.A(n2));
   INVX2M U15 (.Y(n5), 
	.A(a[4]));
   NAND2X2M U17 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n2));
   INVX2M U18 (.Y(n7), 
	.A(a[3]));
   NAND2X2M U20 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n2));
   INVX2M U21 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U22 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n2));
   INVX2M U23 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U24 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   INVX2M U25 (.Y(n1), 
	.A(a[6]));
   INVX2M U26 (.Y(n12), 
	.A(b[6]));
   INVX2M U27 (.Y(n10), 
	.A(a[0]));
   INVX2M U28 (.Y(n17), 
	.A(b[1]));
   INVX2M U29 (.Y(n16), 
	.A(b[2]));
   INVX2M U30 (.Y(n15), 
	.A(b[3]));
   INVX2M U31 (.Y(n14), 
	.A(b[4]));
   INVX2M U32 (.Y(n13), 
	.A(b[5]));
   INVX2M U33 (.Y(n11), 
	.A(b[7]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U62 (.Y(quotient[7]), 
	.D(n16), 
	.C(n17), 
	.B(n19), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U63 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n16), 
	.A(n19));
   AND2X1M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U65 (.Y(n19), 
	.B(n15), 
	.A(n20));
   AND2X1M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U67 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND3X1M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   AND2X1M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U71 (.Y(quotient[1]), 
	.B(n11), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n165, 
	n166, 
	n167, 
	n189, 
	n191, 
	n190, 
	n188, 
	n168);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n165;
   input n166;
   input n167;
   input n189;
   input n191;
   input n190;
   input n188;
   input n168;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U2 (.Y(n3), 
	.A(B[6]));
   INVX2M U3 (.Y(n9), 
	.A(B[0]));
   INVX2M U4 (.Y(n7), 
	.A(B[2]));
   INVX2M U5 (.Y(n6), 
	.A(B[3]));
   INVX2M U6 (.Y(n5), 
	.A(B[4]));
   INVX2M U7 (.Y(n4), 
	.A(B[5]));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   INVX2M U10 (.Y(n1), 
	.A(A[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   NAND2X2M U2 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   AOI21BX2M U3 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   INVX2M U4 (.Y(n9), 
	.A(A[6]));
   INVX2M U5 (.Y(SUM[6]), 
	.A(n9));
   XNOR2X2M U6 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U7 (.Y(n8), 
	.A(B[7]));
   XNOR2X2M U8 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n165, 
	n166, 
	n167, 
	n189, 
	n191, 
	n190, 
	n188, 
	n187, 
	n186, 
	n185, 
	n184, 
	n183, 
	n182, 
	n171, 
	n168);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n165;
   input n166;
   input n167;
   input n189;
   input n191;
   input n190;
   input n188;
   input n187;
   input n186;
   input n185;
   input n184;
   input n183;
   input n182;
   input n171;
   input n168;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;

   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n9), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n8), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n7), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n6), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n5), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n4), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n23), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U12 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U13 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U14 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U15 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U16 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U17 (.Y(n24), 
	.A(\ab[0][7] ));
   INVX2M U18 (.Y(n21), 
	.A(\ab[0][4] ));
   INVX2M U19 (.Y(n22), 
	.A(\ab[0][5] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][3] ));
   INVX2M U21 (.Y(n19), 
	.A(\ab[0][2] ));
   XNOR2X2M U22 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U23 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U24 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U25 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U26 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U27 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U28 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U29 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U30 (.Y(PRODUCT[1]), 
	.B(n18), 
	.A(\ab[1][0] ));
   INVX2M U31 (.Y(n18), 
	.A(\ab[0][1] ));
   XNOR2X2M U32 (.Y(\SUMB[1][6] ), 
	.B(n24), 
	.A(\ab[1][6] ));
   XNOR2X2M U33 (.Y(\SUMB[1][2] ), 
	.B(n20), 
	.A(\ab[1][2] ));
   XNOR2X2M U34 (.Y(\SUMB[1][3] ), 
	.B(n21), 
	.A(\ab[1][3] ));
   XNOR2X2M U35 (.Y(\SUMB[1][4] ), 
	.B(n22), 
	.A(\ab[1][4] ));
   XNOR2X2M U36 (.Y(\SUMB[1][5] ), 
	.B(n23), 
	.A(\ab[1][5] ));
   XNOR2X2M U37 (.Y(\SUMB[1][1] ), 
	.B(n19), 
	.A(\ab[1][1] ));
   INVX2M U38 (.Y(n25), 
	.A(A[7]));
   INVX2M U39 (.Y(n26), 
	.A(A[6]));
   INVX2M U40 (.Y(n31), 
	.A(A[1]));
   INVX2M U41 (.Y(n32), 
	.A(A[0]));
   INVX2M U42 (.Y(n29), 
	.A(A[3]));
   INVX2M U43 (.Y(n30), 
	.A(A[2]));
   INVX2M U44 (.Y(n28), 
	.A(A[4]));
   INVX2M U45 (.Y(n27), 
	.A(A[5]));
   INVX2M U46 (.Y(n34), 
	.A(B[6]));
   INVX2M U47 (.Y(n40), 
	.A(B[0]));
   INVX2M U48 (.Y(n38), 
	.A(B[2]));
   INVX2M U49 (.Y(n37), 
	.A(B[3]));
   INVX2M U50 (.Y(n33), 
	.A(B[7]));
   INVX2M U51 (.Y(n35), 
	.A(B[5]));
   INVX2M U52 (.Y(n36), 
	.A(B[4]));
   INVX2M U53 (.Y(n39), 
	.A(B[1]));
   NOR2X1M U55 (.Y(\ab[7][7] ), 
	.B(n33), 
	.A(n25));
   NOR2X1M U56 (.Y(\ab[7][6] ), 
	.B(n34), 
	.A(n25));
   NOR2X1M U57 (.Y(\ab[7][5] ), 
	.B(n35), 
	.A(n25));
   NOR2X1M U58 (.Y(\ab[7][4] ), 
	.B(n36), 
	.A(n25));
   NOR2X1M U59 (.Y(\ab[7][3] ), 
	.B(n37), 
	.A(n25));
   NOR2X1M U60 (.Y(\ab[7][2] ), 
	.B(n38), 
	.A(n25));
   NOR2X1M U61 (.Y(\ab[7][1] ), 
	.B(n39), 
	.A(n25));
   NOR2X1M U62 (.Y(\ab[7][0] ), 
	.B(n40), 
	.A(n25));
   NOR2X1M U63 (.Y(\ab[6][7] ), 
	.B(n26), 
	.A(n33));
   NOR2X1M U64 (.Y(\ab[6][6] ), 
	.B(n26), 
	.A(n34));
   NOR2X1M U65 (.Y(\ab[6][5] ), 
	.B(n26), 
	.A(n35));
   NOR2X1M U66 (.Y(\ab[6][4] ), 
	.B(n26), 
	.A(n36));
   NOR2X1M U67 (.Y(\ab[6][3] ), 
	.B(n26), 
	.A(n37));
   NOR2X1M U68 (.Y(\ab[6][2] ), 
	.B(n26), 
	.A(n38));
   NOR2X1M U69 (.Y(\ab[6][1] ), 
	.B(n26), 
	.A(n39));
   NOR2X1M U70 (.Y(\ab[6][0] ), 
	.B(n26), 
	.A(n40));
   NOR2X1M U71 (.Y(\ab[5][7] ), 
	.B(n27), 
	.A(n33));
   NOR2X1M U72 (.Y(\ab[5][6] ), 
	.B(n27), 
	.A(n34));
   NOR2X1M U73 (.Y(\ab[5][5] ), 
	.B(n27), 
	.A(n35));
   NOR2X1M U74 (.Y(\ab[5][4] ), 
	.B(n27), 
	.A(n36));
   NOR2X1M U75 (.Y(\ab[5][3] ), 
	.B(n27), 
	.A(n37));
   NOR2X1M U76 (.Y(\ab[5][2] ), 
	.B(n27), 
	.A(n38));
   NOR2X1M U77 (.Y(\ab[5][1] ), 
	.B(n27), 
	.A(n39));
   NOR2X1M U78 (.Y(\ab[5][0] ), 
	.B(n27), 
	.A(n40));
   NOR2X1M U79 (.Y(\ab[4][7] ), 
	.B(n28), 
	.A(n33));
   NOR2X1M U80 (.Y(\ab[4][6] ), 
	.B(n28), 
	.A(n34));
   NOR2X1M U81 (.Y(\ab[4][5] ), 
	.B(n28), 
	.A(n35));
   NOR2X1M U82 (.Y(\ab[4][4] ), 
	.B(n28), 
	.A(n36));
   NOR2X1M U83 (.Y(\ab[4][3] ), 
	.B(n28), 
	.A(n37));
   NOR2X1M U84 (.Y(\ab[4][2] ), 
	.B(n28), 
	.A(n38));
   NOR2X1M U85 (.Y(\ab[4][1] ), 
	.B(n28), 
	.A(n39));
   NOR2X1M U86 (.Y(\ab[4][0] ), 
	.B(n28), 
	.A(n40));
   NOR2X1M U87 (.Y(\ab[3][7] ), 
	.B(n29), 
	.A(n33));
   NOR2X1M U88 (.Y(\ab[3][6] ), 
	.B(n29), 
	.A(n34));
   NOR2X1M U89 (.Y(\ab[3][5] ), 
	.B(n29), 
	.A(n35));
   NOR2X1M U90 (.Y(\ab[3][4] ), 
	.B(n29), 
	.A(n36));
   NOR2X1M U91 (.Y(\ab[3][3] ), 
	.B(n29), 
	.A(n37));
   NOR2X1M U92 (.Y(\ab[3][2] ), 
	.B(n29), 
	.A(n38));
   NOR2X1M U93 (.Y(\ab[3][1] ), 
	.B(n29), 
	.A(n39));
   NOR2X1M U94 (.Y(\ab[3][0] ), 
	.B(n29), 
	.A(n40));
   NOR2X1M U95 (.Y(\ab[2][7] ), 
	.B(n30), 
	.A(n33));
   NOR2X1M U96 (.Y(\ab[2][6] ), 
	.B(n30), 
	.A(n34));
   NOR2X1M U97 (.Y(\ab[2][5] ), 
	.B(n30), 
	.A(n35));
   NOR2X1M U98 (.Y(\ab[2][4] ), 
	.B(n30), 
	.A(n36));
   NOR2X1M U99 (.Y(\ab[2][3] ), 
	.B(n30), 
	.A(n37));
   NOR2X1M U100 (.Y(\ab[2][2] ), 
	.B(n30), 
	.A(n38));
   NOR2X1M U101 (.Y(\ab[2][1] ), 
	.B(n30), 
	.A(n39));
   NOR2X1M U102 (.Y(\ab[2][0] ), 
	.B(n30), 
	.A(n40));
   NOR2X1M U103 (.Y(\ab[1][7] ), 
	.B(n31), 
	.A(n33));
   NOR2X1M U104 (.Y(\ab[1][6] ), 
	.B(n31), 
	.A(n34));
   NOR2X1M U105 (.Y(\ab[1][5] ), 
	.B(n31), 
	.A(n35));
   NOR2X1M U106 (.Y(\ab[1][4] ), 
	.B(n31), 
	.A(n36));
   NOR2X1M U107 (.Y(\ab[1][3] ), 
	.B(n31), 
	.A(n37));
   NOR2X1M U108 (.Y(\ab[1][2] ), 
	.B(n31), 
	.A(n38));
   NOR2X1M U109 (.Y(\ab[1][1] ), 
	.B(n31), 
	.A(n39));
   NOR2X1M U110 (.Y(\ab[1][0] ), 
	.B(n31), 
	.A(n40));
   NOR2X1M U111 (.Y(\ab[0][7] ), 
	.B(n32), 
	.A(n33));
   NOR2X1M U112 (.Y(\ab[0][6] ), 
	.B(n32), 
	.A(n34));
   NOR2X1M U113 (.Y(\ab[0][5] ), 
	.B(n32), 
	.A(n35));
   NOR2X1M U114 (.Y(\ab[0][4] ), 
	.B(n32), 
	.A(n36));
   NOR2X1M U115 (.Y(\ab[0][3] ), 
	.B(n32), 
	.A(n37));
   NOR2X1M U116 (.Y(\ab[0][2] ), 
	.B(n32), 
	.A(n38));
   NOR2X1M U117 (.Y(\ab[0][1] ), 
	.B(n32), 
	.A(n39));
   NOR2X1M U118 (.Y(PRODUCT[0]), 
	.B(n32), 
	.A(n40));
   ALU_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_test_1 (
	CLK, 
	RST, 
	Enable, 
	A, 
	B, 
	ALU_FUN, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input Enable;
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_OFN4_n75;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N133;
   wire N134;
   wire N159;
   wire N160;
   wire N161;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;

   BUFX2M FE_OFC4_n75 (.Y(FE_OFN4_n75), 
	.A(n75));
   SDFFQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.Q(ALU_OUT[7]), 
	.D(n159), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.Q(ALU_OUT[6]), 
	.D(n158), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.Q(ALU_OUT[5]), 
	.D(n157), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.Q(ALU_OUT[4]), 
	.D(n156), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.Q(ALU_OUT[3]), 
	.D(n155), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.Q(ALU_OUT[2]), 
	.D(n154), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.Q(ALU_OUT[1]), 
	.D(n153), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.Q(ALU_OUT[0]), 
	.D(n152), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.Q(ALU_OUT[8]), 
	.D(n160), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.Q(ALU_OUT[15]), 
	.D(n172), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.Q(ALU_OUT[14]), 
	.D(n173), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.Q(ALU_OUT[13]), 
	.D(n174), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.Q(ALU_OUT[12]), 
	.D(n175), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.Q(ALU_OUT[11]), 
	.D(n176), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.Q(ALU_OUT[10]), 
	.D(n177), 
	.CK(CLK));
   SDFFQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.Q(ALU_OUT[9]), 
	.D(n178), 
	.CK(CLK));
   SDFFX1M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.QN(n181), 
	.Q(OUT_VALID), 
	.D(n161), 
	.CK(CLK));
   NOR3X2M U23 (.Y(n75), 
	.C(n133), 
	.B(ALU_FUN[2]), 
	.A(n194));
   NOR3X2M U24 (.Y(n76), 
	.C(n136), 
	.B(ALU_FUN[2]), 
	.A(n194));
   INVX2M U26 (.Y(n179), 
	.A(n138));
   INVX2M U27 (.Y(n180), 
	.A(n140));
   OAI21X2M U28 (.Y(n138), 
	.B0(n140), 
	.A1(n150), 
	.A0(n74));
   AO21XLM U29 (.Y(n150), 
	.B0(n62), 
	.A1(n77), 
	.A0(N110));
   NOR2X2M U30 (.Y(n140), 
	.B(n57), 
	.A(n151));
   AOI21X2M U32 (.Y(n57), 
	.B0(n33), 
	.A1(n196), 
	.A0(n181));
   AND2X2M U33 (.Y(n143), 
	.B(n140), 
	.A(FE_OFN4_n75));
   INVX2M U34 (.Y(n168), 
	.A(B[6]));
   AOI222X1M U35 (.Y(n80), 
	.C1(n77), 
	.C0(N103), 
	.B1(FE_OFN4_n75), 
	.B0(N112), 
	.A1(n78), 
	.A0(N94));
   AOI222X1M U36 (.Y(n60), 
	.C1(n76), 
	.C0(N127), 
	.B1(A[0]), 
	.B0(n69), 
	.A1(FE_OFN4_n75), 
	.A0(N111));
   AOI222X1M U37 (.Y(n92), 
	.C1(n76), 
	.C0(N129), 
	.B1(n69), 
	.B0(A[2]), 
	.A1(FE_OFN4_n75), 
	.A0(N113));
   AOI222X1M U38 (.Y(n99), 
	.C1(n76), 
	.C0(N130), 
	.B1(n69), 
	.B0(A[3]), 
	.A1(FE_OFN4_n75), 
	.A0(N114));
   AOI222X1M U39 (.Y(n106), 
	.C1(n76), 
	.C0(N131), 
	.B1(n69), 
	.B0(A[4]), 
	.A1(FE_OFN4_n75), 
	.A0(N115));
   AOI222X1M U40 (.Y(n113), 
	.C1(n76), 
	.C0(N132), 
	.B1(n69), 
	.B0(A[5]), 
	.A1(FE_OFN4_n75), 
	.A0(N116));
   AOI222X1M U41 (.Y(n120), 
	.C1(n76), 
	.C0(N133), 
	.B1(n69), 
	.B0(A[6]), 
	.A1(FE_OFN4_n75), 
	.A0(N117));
   OAI21X2M U42 (.Y(n74), 
	.B0(n134), 
	.A1(n136), 
	.A0(n141));
   OAI222X1M U43 (.Y(n122), 
	.C1(n183), 
	.C0(n192), 
	.B1(n124), 
	.B0(B[6]), 
	.A1(n168), 
	.A0(n123));
   AOI221XLM U44 (.Y(n124), 
	.C0(n62), 
	.B1(n182), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[6]));
   AOI221XLM U45 (.Y(n123), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[6]), 
	.A1(n182), 
	.A0(n67));
   NOR3X2M U46 (.Y(n65), 
	.C(n195), 
	.B(n89), 
	.A(n193));
   OAI21X2M U47 (.Y(n68), 
	.B0(n134), 
	.A1(n133), 
	.A0(n89));
   AOI221XLM U48 (.Y(n130), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[7]), 
	.A1(n171), 
	.A0(n67));
   NOR2BX2M U49 (.Y(n77), 
	.B(n136), 
	.AN(n135));
   NOR2BX2M U50 (.Y(n78), 
	.B(n133), 
	.AN(n135));
   NAND2X2M U51 (.Y(n133), 
	.B(n195), 
	.A(n193));
   INVX2M U52 (.Y(n192), 
	.A(n132));
   NOR2X2M U54 (.Y(n62), 
	.B(n141), 
	.A(n133));
   NOR2X2M U56 (.Y(n69), 
	.B(n89), 
	.A(n136));
   INVX2M U57 (.Y(n188), 
	.A(A[0]));
   CLKINVX2M U58 (.Y(n33), 
	.A(RST));
   INVX2M U59 (.Y(n182), 
	.A(A[6]));
   INVX2M U60 (.Y(n187), 
	.A(A[1]));
   INVX2M U61 (.Y(n185), 
	.A(A[3]));
   INVX2M U62 (.Y(n186), 
	.A(A[2]));
   INVX2M U63 (.Y(n184), 
	.A(A[4]));
   INVX2M U64 (.Y(n183), 
	.A(A[5]));
   INVX2M U65 (.Y(n196), 
	.A(n151));
   INVX2M U66 (.Y(n171), 
	.A(A[7]));
   OAI32X1M U67 (.Y(n161), 
	.B1(n151), 
	.B0(OUT_VALID), 
	.A2(n33), 
	.A1(n196), 
	.A0(n181));
   OAI211X2M U68 (.Y(n160), 
	.C0(n139), 
	.B0(n138), 
	.A1(n180), 
	.A0(n137));
   AOI222X1M U69 (.Y(n137), 
	.C1(FE_OFN4_n75), 
	.C0(N119), 
	.B1(n132), 
	.B0(A[7]), 
	.A1(n78), 
	.A0(N101));
   NAND2X2M U70 (.Y(n139), 
	.B(n57), 
	.A(ALU_OUT[8]));
   INVX2M U71 (.Y(n178), 
	.A(n142));
   AOI221XLM U72 (.Y(n142), 
	.C0(n179), 
	.B1(n143), 
	.B0(N120), 
	.A1(n57), 
	.A0(ALU_OUT[9]));
   INVX2M U73 (.Y(n177), 
	.A(n144));
   AOI221XLM U74 (.Y(n144), 
	.C0(n179), 
	.B1(n143), 
	.B0(N121), 
	.A1(n57), 
	.A0(ALU_OUT[10]));
   INVX2M U75 (.Y(n176), 
	.A(n145));
   AOI221XLM U76 (.Y(n145), 
	.C0(n179), 
	.B1(n143), 
	.B0(N122), 
	.A1(n57), 
	.A0(ALU_OUT[11]));
   INVX2M U77 (.Y(n175), 
	.A(n146));
   AOI221XLM U78 (.Y(n146), 
	.C0(n179), 
	.B1(n143), 
	.B0(N123), 
	.A1(n57), 
	.A0(ALU_OUT[12]));
   INVX2M U79 (.Y(n174), 
	.A(n147));
   AOI221XLM U80 (.Y(n147), 
	.C0(n179), 
	.B1(n143), 
	.B0(N124), 
	.A1(n57), 
	.A0(ALU_OUT[13]));
   INVX2M U81 (.Y(n173), 
	.A(n148));
   AOI221XLM U82 (.Y(n148), 
	.C0(n179), 
	.B1(n143), 
	.B0(N125), 
	.A1(n57), 
	.A0(ALU_OUT[14]));
   INVX2M U83 (.Y(n172), 
	.A(n149));
   AOI221XLM U84 (.Y(n149), 
	.C0(n179), 
	.B1(n143), 
	.B0(N126), 
	.A1(n57), 
	.A0(ALU_OUT[15]));
   AO21XLM U85 (.Y(n152), 
	.B0(n58), 
	.A1(n57), 
	.A0(ALU_OUT[0]));
   AOI31X2M U86 (.Y(n58), 
	.B0(n180), 
	.A2(n61), 
	.A1(n60), 
	.A0(n59));
   AOI22X1M U87 (.Y(n59), 
	.B1(n78), 
	.B0(N93), 
	.A1(n77), 
	.A0(N102));
   AOI211X2M U88 (.Y(n61), 
	.C0(n64), 
	.B0(n63), 
	.A1(n188), 
	.A0(n62));
   AO21XLM U89 (.Y(n153), 
	.B0(n79), 
	.A1(n57), 
	.A0(ALU_OUT[1]));
   AOI31X2M U90 (.Y(n79), 
	.B0(n180), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI211X2M U91 (.Y(n82), 
	.C0(n84), 
	.B0(n83), 
	.A1(n65), 
	.A0(A[2]));
   AOI222X1M U92 (.Y(n81), 
	.C1(A[1]), 
	.C0(n69), 
	.B1(n187), 
	.B0(n62), 
	.A1(n76), 
	.A0(N128));
   AO21XLM U93 (.Y(n154), 
	.B0(n90), 
	.A1(n57), 
	.A0(ALU_OUT[2]));
   AOI31X2M U94 (.Y(n90), 
	.B0(n180), 
	.A2(n93), 
	.A1(n92), 
	.A0(n91));
   AOI22X1M U95 (.Y(n91), 
	.B1(n78), 
	.B0(N95), 
	.A1(n77), 
	.A0(N104));
   AOI221XLM U96 (.Y(n93), 
	.C0(n94), 
	.B1(n186), 
	.B0(n62), 
	.A1(n65), 
	.A0(A[3]));
   AO21XLM U97 (.Y(n155), 
	.B0(n97), 
	.A1(n57), 
	.A0(ALU_OUT[3]));
   AOI31X2M U98 (.Y(n97), 
	.B0(n180), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI22X1M U99 (.Y(n98), 
	.B1(n78), 
	.B0(N96), 
	.A1(n77), 
	.A0(N105));
   AOI221XLM U100 (.Y(n100), 
	.C0(n101), 
	.B1(n185), 
	.B0(n62), 
	.A1(n65), 
	.A0(A[4]));
   AO21XLM U101 (.Y(n156), 
	.B0(n104), 
	.A1(n57), 
	.A0(ALU_OUT[4]));
   AOI31X2M U102 (.Y(n104), 
	.B0(n180), 
	.A2(n107), 
	.A1(n106), 
	.A0(n105));
   AOI22X1M U103 (.Y(n105), 
	.B1(n78), 
	.B0(N97), 
	.A1(n77), 
	.A0(N106));
   AOI221XLM U104 (.Y(n107), 
	.C0(n108), 
	.B1(n184), 
	.B0(n62), 
	.A1(n65), 
	.A0(A[5]));
   AO21XLM U105 (.Y(n157), 
	.B0(n111), 
	.A1(n57), 
	.A0(ALU_OUT[5]));
   AOI31X2M U106 (.Y(n111), 
	.B0(n180), 
	.A2(n114), 
	.A1(n113), 
	.A0(n112));
   AOI22X1M U107 (.Y(n112), 
	.B1(n78), 
	.B0(N98), 
	.A1(n77), 
	.A0(N107));
   AOI221XLM U108 (.Y(n114), 
	.C0(n115), 
	.B1(n183), 
	.B0(n62), 
	.A1(n65), 
	.A0(A[6]));
   AO21XLM U109 (.Y(n158), 
	.B0(n118), 
	.A1(n57), 
	.A0(ALU_OUT[6]));
   AOI31X2M U110 (.Y(n118), 
	.B0(n180), 
	.A2(n121), 
	.A1(n120), 
	.A0(n119));
   AOI22X1M U111 (.Y(n119), 
	.B1(n78), 
	.B0(N99), 
	.A1(n77), 
	.A0(N108));
   AOI221XLM U112 (.Y(n121), 
	.C0(n122), 
	.B1(n182), 
	.B0(n62), 
	.A1(n65), 
	.A0(A[7]));
   AO21XLM U113 (.Y(n159), 
	.B0(n125), 
	.A1(n57), 
	.A0(ALU_OUT[7]));
   AOI31X2M U114 (.Y(n125), 
	.B0(n180), 
	.A2(n128), 
	.A1(n127), 
	.A0(n126));
   AOI22X1M U115 (.Y(n127), 
	.B1(FE_OFN4_n75), 
	.B0(N118), 
	.A1(n76), 
	.A0(N134));
   AOI22X1M U116 (.Y(n126), 
	.B1(n78), 
	.B0(N100), 
	.A1(n77), 
	.A0(N109));
   OAI222X1M U117 (.Y(n94), 
	.C1(n192), 
	.C0(n187), 
	.B1(n96), 
	.B0(B[2]), 
	.A1(n166), 
	.A0(n95));
   AOI221XLM U118 (.Y(n96), 
	.C0(n62), 
	.B1(n186), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[2]));
   AOI221XLM U119 (.Y(n95), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[2]), 
	.A1(n186), 
	.A0(n67));
   OAI222X1M U120 (.Y(n101), 
	.C1(n186), 
	.C0(n192), 
	.B1(n103), 
	.B0(B[3]), 
	.A1(n167), 
	.A0(n102));
   AOI221XLM U121 (.Y(n103), 
	.C0(n62), 
	.B1(n185), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[3]));
   AOI221XLM U122 (.Y(n102), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[3]), 
	.A1(n185), 
	.A0(n67));
   OAI222X1M U123 (.Y(n108), 
	.C1(n185), 
	.C0(n192), 
	.B1(n110), 
	.B0(B[4]), 
	.A1(n191), 
	.A0(n109));
   INVX2M U124 (.Y(n191), 
	.A(B[4]));
   AOI221XLM U125 (.Y(n110), 
	.C0(n62), 
	.B1(n184), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[4]));
   AOI221XLM U126 (.Y(n109), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[4]), 
	.A1(n184), 
	.A0(n67));
   OAI222X1M U127 (.Y(n115), 
	.C1(n184), 
	.C0(n192), 
	.B1(n117), 
	.B0(B[5]), 
	.A1(n190), 
	.A0(n116));
   INVX2M U128 (.Y(n190), 
	.A(B[5]));
   AOI221XLM U129 (.Y(n117), 
	.C0(n62), 
	.B1(n183), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[5]));
   AOI221XLM U130 (.Y(n116), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[5]), 
	.A1(n183), 
	.A0(n67));
   AOI221XLM U131 (.Y(n128), 
	.C0(n129), 
	.B1(n69), 
	.B0(A[7]), 
	.A1(n171), 
	.A0(n62));
   OAI222X1M U132 (.Y(n129), 
	.C1(n182), 
	.C0(n192), 
	.B1(n131), 
	.B0(B[7]), 
	.A1(n189), 
	.A0(n130));
   INVX2M U133 (.Y(n189), 
	.A(B[7]));
   AOI221XLM U134 (.Y(n131), 
	.C0(n62), 
	.B1(n171), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[7]));
   NOR4BX1M U135 (.Y(n73), 
	.D(ALU_FUN[0]), 
	.C(n89), 
	.B(n193), 
	.AN(N161));
   NOR3X2M U136 (.Y(n132), 
	.C(n141), 
	.B(ALU_FUN[0]), 
	.A(n193));
   INVX2M U137 (.Y(n169), 
	.A(n34));
   OAI2B2X1M U138 (.Y(n84), 
	.B1(n192), 
	.B0(n188), 
	.A1N(B[1]), 
	.A0(n85));
   AOI221XLM U139 (.Y(n85), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[1]), 
	.A1(n187), 
	.A0(n67));
   NOR2X2M U140 (.Y(n135), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   AND3X2M U141 (.Y(n67), 
	.C(n195), 
	.B(ALU_FUN[3]), 
	.A(n135));
   NAND2X2M U142 (.Y(n136), 
	.B(n193), 
	.A(ALU_FUN[0]));
   NAND2X2M U143 (.Y(n89), 
	.B(n194), 
	.A(ALU_FUN[2]));
   INVX2M U144 (.Y(n193), 
	.A(ALU_FUN[3]));
   NAND2X2M U145 (.Y(n141), 
	.B(ALU_FUN[2]), 
	.A(ALU_FUN[1]));
   INVX2M U146 (.Y(n170), 
	.A(n45));
   OAI21X2M U147 (.Y(n63), 
	.B0(n71), 
	.A1(n70), 
	.A0(B[0]));
   AOI31X2M U148 (.Y(n71), 
	.B0(n73), 
	.A2(n72), 
	.A1(ALU_FUN[1]), 
	.A0(N159));
   AOI221XLM U149 (.Y(n70), 
	.C0(n62), 
	.B1(n188), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[0]));
   NOR3X2M U150 (.Y(n72), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n193));
   OAI21X2M U151 (.Y(n83), 
	.B0(n87), 
	.A1(n86), 
	.A0(B[1]));
   AOI31X2M U152 (.Y(n87), 
	.B0(n73), 
	.A2(n88), 
	.A1(ALU_FUN[0]), 
	.A0(N160));
   AOI221XLM U153 (.Y(n86), 
	.C0(n62), 
	.B1(n187), 
	.B0(n74), 
	.A1(n67), 
	.A0(A[1]));
   NOR3X2M U154 (.Y(n88), 
	.C(n193), 
	.B(ALU_FUN[2]), 
	.A(n194));
   NAND3X2M U155 (.Y(n134), 
	.C(n135), 
	.B(ALU_FUN[3]), 
	.A(ALU_FUN[0]));
   INVX2M U156 (.Y(n195), 
	.A(ALU_FUN[0]));
   INVX2M U157 (.Y(n194), 
	.A(ALU_FUN[1]));
   NAND2BX2M U160 (.Y(n151), 
	.B(Enable), 
	.AN(n33));
   INVX2M U167 (.Y(n165), 
	.A(B[0]));
   INVX2M U168 (.Y(n166), 
	.A(B[2]));
   INVX2M U169 (.Y(n167), 
	.A(B[3]));
   AO2B2X2M U170 (.Y(n64), 
	.B1(A[1]), 
	.B0(n65), 
	.A1N(n66), 
	.A0(B[0]));
   AOI221XLM U171 (.Y(n66), 
	.C0(n69), 
	.B1(n68), 
	.B0(A[0]), 
	.A1(n188), 
	.A0(n67));
   NOR2X1M U172 (.Y(n56), 
	.B(B[7]), 
	.A(n171));
   NAND2BX1M U173 (.Y(n49), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U174 (.Y(n38), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U175 (.Y(n51), 
	.B(n38), 
	.A(n49));
   NOR2X1M U176 (.Y(n46), 
	.B(A[3]), 
	.A(n167));
   NOR2X1M U177 (.Y(n37), 
	.B(A[2]), 
	.A(n166));
   NOR2X1M U178 (.Y(n34), 
	.B(A[0]), 
	.A(n165));
   CLKNAND2X2M U179 (.Y(n48), 
	.B(n166), 
	.A(A[2]));
   NAND2BX1M U180 (.Y(n43), 
	.B(n48), 
	.AN(n37));
   AOI21X1M U181 (.Y(n35), 
	.B0(B[1]), 
	.A1(n187), 
	.A0(n34));
   AOI211X1M U182 (.Y(n36), 
	.C0(n35), 
	.B0(n43), 
	.A1(n169), 
	.A0(A[1]));
   CLKNAND2X2M U183 (.Y(n47), 
	.B(n167), 
	.A(A[3]));
   OAI31X1M U184 (.Y(n39), 
	.B0(n47), 
	.A2(n36), 
	.A1(n37), 
	.A0(n46));
   NAND2BX1M U185 (.Y(n54), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U186 (.Y(n40), 
	.C0(n54), 
	.B0(n38), 
	.A1(n39), 
	.A0(n51));
   NAND2BX1M U187 (.Y(n50), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U188 (.Y(n53), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U189 (.Y(n41), 
	.B1(n182), 
	.B0(B[6]), 
	.A2(n53), 
	.A1(n50), 
	.A0(n40));
   CLKNAND2X2M U190 (.Y(n162), 
	.B(n171), 
	.A(B[7]));
   OAI21X1M U191 (.Y(N161), 
	.B0(n162), 
	.A1(n41), 
	.A0(n56));
   CLKNAND2X2M U192 (.Y(n44), 
	.B(n165), 
	.A(A[0]));
   OA21X1M U193 (.Y(n42), 
	.B0(B[1]), 
	.A1(n187), 
	.A0(n44));
   AOI211X1M U194 (.Y(n45), 
	.C0(n42), 
	.B0(n43), 
	.A1(n187), 
	.A0(n44));
   AOI31X1M U195 (.Y(n52), 
	.B0(n46), 
	.A2(n47), 
	.A1(n48), 
	.A0(n170));
   OAI2B11X1M U196 (.Y(n55), 
	.C0(n49), 
	.B0(n50), 
	.A1N(n52), 
	.A0(n51));
   AOI32X1M U197 (.Y(n163), 
	.B1(n168), 
	.B0(A[6]), 
	.A2(n53), 
	.A1(n54), 
	.A0(n55));
   AOI2B1X1M U198 (.Y(n164), 
	.B0(n56), 
	.A1N(n163), 
	.A0(n162));
   CLKINVX1M U199 (.Y(N160), 
	.A(n164));
   NOR2X1M U200 (.Y(N159), 
	.B(N160), 
	.A(N161));
   ALU_DW_div_uns_0 div_25 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N134,
		N133,
		N132,
		N131,
		N130,
		N129,
		N128,
		N127 }), 
	.n165(n165), 
	.n166(n166), 
	.n167(n167), 
	.n189(n189), 
	.n191(n191), 
	.n190(n190), 
	.n188(n188), 
	.n187(n187), 
	.n186(n186), 
	.n185(n185), 
	.n184(n184), 
	.n183(n183), 
	.n182(n182), 
	.n168(n168));
   ALU_DW01_sub_0 sub_23 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N110,
		N109,
		N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102 }), 
	.n165(n165), 
	.n166(n166), 
	.n167(n167), 
	.n189(n189), 
	.n191(n191), 
	.n190(n190), 
	.n188(n188), 
	.n168(n168));
   ALU_DW01_add_0 add_22 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N101,
		N100,
		N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93 }));
   ALU_DW02_mult_0 mult_24 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N126,
		N125,
		N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111 }), 
	.n165(n165), 
	.n166(n166), 
	.n167(n167), 
	.n189(n189), 
	.n191(n191), 
	.n190(n190), 
	.n188(n188), 
	.n187(n187), 
	.n186(n186), 
	.n185(n185), 
	.n184(n184), 
	.n183(n183), 
	.n182(n182), 
	.n171(n171), 
	.n168(n168));
endmodule

module PULSE_GEN_test_1 (
	RST, 
	CLK, 
	LVL_SIG, 
	PULSE_SIG, 
	test_si, 
	test_so, 
	test_se);
   input RST;
   input CLK;
   input LVL_SIG;
   output PULSE_SIG;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pulse_done;
   wire n3;

   assign test_so = pulse_done ;

   SDFFRQX2M pulse_done_reg (.SI(PULSE_SIG), 
	.SE(test_se), 
	.RN(RST), 
	.Q(pulse_done), 
	.D(LVL_SIG), 
	.CK(CLK));
   SDFFRQX2M PULSE_SIG_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(PULSE_SIG), 
	.D(n3), 
	.CK(CLK));
   AOI2BB1X2M U5 (.Y(n3), 
	.B0(pulse_done), 
	.A1N(LVL_SIG), 
	.A0N(PULSE_SIG));
endmodule

module delay_one_period_test_1 (
	CLK, 
	Signal, 
	Signal_delayed, 
	test_si, 
	test_se);
   input CLK;
   input Signal;
   output Signal_delayed;
   input test_si;
   input test_se;

   SDFFQX1M Signal_delayed_reg (.SI(test_si), 
	.SE(test_se), 
	.Q(Signal_delayed), 
	.D(Signal), 
	.CK(CLK));
endmodule

module FSM_TX_test_1 (
	CLK, 
	nRESET, 
	Data_Valid, 
	PAR_EN, 
	ser_done, 
	mux_sel, 
	busy, 
	ser_en, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input nRESET;
   input Data_Valid;
   input PAR_EN;
   input ser_done;
   output [1:0] mux_sel;
   output busy;
   output ser_en;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n32;
   wire [2:0] state;

   assign test_so = n12 ;

   SDFFRQX2M ser_en_reg (.SI(mux_sel[1]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(ser_en), 
	.D(n26), 
	.CK(CLK));
   SDFFRQX2M busy_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(busy), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \mux_sel_reg[1]  (.SI(mux_sel[0]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(mux_sel[1]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M \state_reg[2]  (.SI(state[1]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(state[2]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \state_reg[0]  (.SI(ser_en), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(state[0]), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M \state_reg[1]  (.SI(state[0]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(state[1]), 
	.D(n29), 
	.CK(CLK));
   SDFFSQX1M \mux_sel_reg[0]  (.SN(nRESET), 
	.SI(busy), 
	.SE(test_se), 
	.Q(mux_sel[0]), 
	.D(n28), 
	.CK(CLK));
   INVX2M U11 (.Y(n9), 
	.A(n18));
   NAND4BX1M U12 (.Y(n18), 
	.D(n22), 
	.C(n10), 
	.B(n17), 
	.AN(n30));
   OAI2BB1X2M U13 (.Y(n30), 
	.B0(n21), 
	.A1N(n23), 
	.A0N(n24));
   OAI21X2M U14 (.Y(n15), 
	.B0(n17), 
	.A1(n32), 
	.A0(n10));
   OAI21X2M U15 (.Y(n29), 
	.B0(n17), 
	.A1(n11), 
	.A0(n23));
   OAI21X2M U16 (.Y(n31), 
	.B0(n22), 
	.A1(n32), 
	.A0(n10));
   INVX2M U17 (.Y(n11), 
	.A(n24));
   NAND2X2M U18 (.Y(n16), 
	.B(n21), 
	.A(n11));
   INVX2M U19 (.Y(n10), 
	.A(n20));
   NOR3X2M U20 (.Y(n24), 
	.C(n13), 
	.B(state[2]), 
	.A(state[0]));
   INVX2M U21 (.Y(n13), 
	.A(state[1]));
   AO22X1M U22 (.Y(n27), 
	.B1(n9), 
	.B0(mux_sel[1]), 
	.A1(n29), 
	.A0(n18));
   NOR2X2M U23 (.Y(n20), 
	.B(state[0]), 
	.A(state[1]));
   OAI2BB2X1M U24 (.Y(n25), 
	.B1(n14), 
	.B0(n9), 
	.A1N(n9), 
	.A0N(busy));
   NOR2X2M U25 (.Y(n14), 
	.B(n16), 
	.A(n15));
   OAI2BB2X1M U26 (.Y(n28), 
	.B1(n19), 
	.B0(n9), 
	.A1N(n9), 
	.A0N(mux_sel[0]));
   AOI21X2M U27 (.Y(n19), 
	.B0(n16), 
	.A1(n32), 
	.A0(n20));
   NAND3X2M U28 (.Y(n17), 
	.C(state[0]), 
	.B(n12), 
	.A(n13));
   NOR2BX2M U29 (.Y(n23), 
	.B(PAR_EN), 
	.AN(ser_done));
   NAND3X2M U30 (.Y(n21), 
	.C(state[0]), 
	.B(n12), 
	.A(state[1]));
   NAND3X2M U31 (.Y(n22), 
	.C(ser_done), 
	.B(n24), 
	.A(PAR_EN));
   INVX2M U32 (.Y(n12), 
	.A(state[2]));
   INVX2M U33 (.Y(n32), 
	.A(Data_Valid));
   AO21XLM U34 (.Y(n26), 
	.B0(n15), 
	.A1(n9), 
	.A0(ser_en));
endmodule

module mux (
	mux_sel, 
	ser_data, 
	par_bit, 
	TX_OUT);
   input [1:0] mux_sel;
   input ser_data;
   input par_bit;
   output TX_OUT;

   // Internal wires
   wire n2;
   wire n3;
   wire n1;

   OAI21X6M U3 (.Y(TX_OUT), 
	.B0(n3), 
	.A1(n1), 
	.A0(n2));
   NAND3X2M U4 (.Y(n3), 
	.C(ser_data), 
	.B(n1), 
	.A(mux_sel[1]));
   NOR2BX2M U5 (.Y(n2), 
	.B(par_bit), 
	.AN(mux_sel[1]));
   INVX2M U6 (.Y(n1), 
	.A(mux_sel[0]));
endmodule

module parity_calc (
	PAR_TYP, 
	P_DATA_save, 
	par_bit);
   input PAR_TYP;
   input [7:0] P_DATA_save;
   output par_bit;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;

   XNOR2X2M U1 (.Y(n3), 
	.B(P_DATA_save[2]), 
	.A(P_DATA_save[3]));
   XOR3XLM U2 (.Y(par_bit), 
	.C(n2), 
	.B(n1), 
	.A(PAR_TYP));
   XOR3XLM U3 (.Y(n1), 
	.C(n4), 
	.B(P_DATA_save[4]), 
	.A(P_DATA_save[5]));
   XOR3XLM U4 (.Y(n2), 
	.C(n3), 
	.B(P_DATA_save[0]), 
	.A(P_DATA_save[1]));
   XNOR2X2M U5 (.Y(n4), 
	.B(P_DATA_save[6]), 
	.A(P_DATA_save[7]));
endmodule

module serializer_test_1 (
	CLK, 
	nRESET, 
	ser_en, 
	P_DATA, 
	ser_data, 
	ser_done, 
	P_DATA_save, 
	test_si, 
	test_se);
   input CLK;
   input nRESET;
   input ser_en;
   input [7:0] P_DATA;
   output ser_data;
   output ser_done;
   output [7:0] P_DATA_save;
   input test_si;
   input test_se;

   // Internal wires
   wire N2;
   wire N3;
   wire N4;
   wire N11;
   wire n2;
   wire n5;
   wire n6;
   wire n8;
   wire n10;
   wire n13;
   wire n20;
   wire n22;
   wire n24;
   wire n26;
   wire n28;
   wire n30;
   wire n32;
   wire n34;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n4;
   wire n7;
   wire n9;
   wire n11;
   wire n12;
   wire n14;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n47;
   wire n48;

   SDFFRQX2M \P_DATA_save_reg[5]  (.SI(P_DATA_save[4]), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[5]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_save_reg[1]  (.SI(P_DATA_save[0]), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[1]), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_save_reg[4]  (.SI(P_DATA_save[3]), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[4]), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_save_reg[0]  (.SI(test_si), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[0]), 
	.D(n20), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_save_reg[3]  (.SI(P_DATA_save[2]), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[3]), 
	.D(n26), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_save_reg[6]  (.SI(P_DATA_save[5]), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[6]), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_save_reg[2]  (.SI(P_DATA_save[1]), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[2]), 
	.D(n24), 
	.CK(CLK));
   SDFFRQX2M ser_data_reg (.SI(N4), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(ser_data), 
	.D(n36), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_save_reg[7]  (.SI(P_DATA_save[6]), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(P_DATA_save[7]), 
	.D(n34), 
	.CK(CLK));
   SDFFRQX2M \count_reg[2]  (.SI(N3), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(N4), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M \count_reg[1]  (.SI(N2), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(N3), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX2M \count_reg[0]  (.SI(n41), 
	.SE(n48), 
	.RN(nRESET), 
	.Q(N2), 
	.D(n40), 
	.CK(CLK));
   SDFFRX1M ser_done_reg (.SI(ser_data), 
	.SE(n48), 
	.RN(nRESET), 
	.QN(n42), 
	.Q(ser_done), 
	.D(n38), 
	.CK(CLK));
   NOR2X2M U4 (.Y(n6), 
	.B(n13), 
	.A(n9));
   INVX2M U5 (.Y(n11), 
	.A(n13));
   NOR3X2M U6 (.Y(n13), 
	.C(n43), 
	.B(n12), 
	.A(n44));
   OAI32X1M U7 (.Y(n39), 
	.B1(n43), 
	.B0(n13), 
	.A2(n44), 
	.A1(n12), 
	.A0(n8));
   OAI21X2M U8 (.Y(n38), 
	.B0(n11), 
	.A1(n42), 
	.A0(n2));
   INVX2M U9 (.Y(n14), 
	.A(n2));
   INVX2M U10 (.Y(n9), 
	.A(n8));
   OAI32X1M U11 (.Y(n37), 
	.B1(n44), 
	.B0(n10), 
	.A2(n12), 
	.A1(N3), 
	.A0(n8));
   NOR2X2M U12 (.Y(n10), 
	.B(n12), 
	.A(n6));
   NAND3X2M U13 (.Y(n8), 
	.C(ser_en), 
	.B(n42), 
	.A(n11));
   OAI2BB2X1M U14 (.Y(n34), 
	.B1(n41), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(P_DATA[7]));
   OAI2BB2X1M U15 (.Y(n40), 
	.B1(n8), 
	.B0(N2), 
	.A1N(n6), 
	.A0N(N2));
   OAI21X2M U16 (.Y(n36), 
	.B0(n5), 
	.A1(n11), 
	.A0(n41));
   AOI22X1M U17 (.Y(n5), 
	.B1(n9), 
	.B0(N11), 
	.A1(n6), 
	.A0(ser_data));
   MX2X2M U18 (.Y(N11), 
	.S0(N4), 
	.B(n4), 
	.A(n7));
   MX4X1M U19 (.Y(n7), 
	.S1(N3), 
	.S0(N2), 
	.D(P_DATA_save[3]), 
	.C(P_DATA_save[2]), 
	.B(P_DATA_save[1]), 
	.A(P_DATA_save[0]));
   INVX2M U20 (.Y(n12), 
	.A(N2));
   MX4X1M U21 (.Y(n4), 
	.S1(N3), 
	.S0(N2), 
	.D(P_DATA_save[7]), 
	.C(P_DATA_save[6]), 
	.B(P_DATA_save[5]), 
	.A(P_DATA_save[4]));
   NOR3X2M U23 (.Y(n2), 
	.C(N2), 
	.B(N4), 
	.A(N3));
   INVX2M U24 (.Y(n44), 
	.A(N3));
   INVX2M U25 (.Y(n43), 
	.A(N4));
   INVX2M U26 (.Y(n41), 
	.A(P_DATA_save[7]));
   AO22X1M U27 (.Y(n20), 
	.B1(n2), 
	.B0(P_DATA[0]), 
	.A1(n14), 
	.A0(P_DATA_save[0]));
   AO22X1M U28 (.Y(n22), 
	.B1(n2), 
	.B0(P_DATA[1]), 
	.A1(n14), 
	.A0(P_DATA_save[1]));
   AO22X1M U29 (.Y(n24), 
	.B1(n2), 
	.B0(P_DATA[2]), 
	.A1(n14), 
	.A0(P_DATA_save[2]));
   AO22X1M U43 (.Y(n26), 
	.B1(n2), 
	.B0(P_DATA[3]), 
	.A1(n14), 
	.A0(P_DATA_save[3]));
   AO22X1M U44 (.Y(n28), 
	.B1(n2), 
	.B0(P_DATA[4]), 
	.A1(n14), 
	.A0(P_DATA_save[4]));
   AO22X1M U45 (.Y(n30), 
	.B1(n2), 
	.B0(P_DATA[5]), 
	.A1(n14), 
	.A0(P_DATA_save[5]));
   AO22X1M U46 (.Y(n32), 
	.B1(n2), 
	.B0(P_DATA[6]), 
	.A1(n14), 
	.A0(P_DATA_save[6]));
   INVXLM U47 (.Y(n47), 
	.A(test_se));
   CLKINVX2M U48 (.Y(n48), 
	.A(n47));
endmodule

module UART_TX_TOP_test_1 (
	CLK, 
	nRESET, 
	P_DATA, 
	Data_Valid, 
	PAR_EN, 
	PAR_TYP, 
	TX_OUT, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input nRESET;
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_EN;
   input PAR_TYP;
   output TX_OUT;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire ser_en;
   wire ser_done;
   wire ser_data;
   wire par_bit;
   wire n3;
   wire [1:0] mux_sel;
   wire [7:0] P_DATA_save;

   FSM_TX_test_1 linkFSM (.CLK(CLK), 
	.nRESET(nRESET), 
	.Data_Valid(Data_Valid), 
	.PAR_EN(PAR_EN), 
	.ser_done(ser_done), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.busy(busy), 
	.ser_en(ser_en), 
	.test_si(test_si), 
	.test_so(n3), 
	.test_se(test_se));
   mux linkmux (.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.ser_data(ser_data), 
	.par_bit(par_bit), 
	.TX_OUT(TX_OUT));
   parity_calc linkparity_calc (.PAR_TYP(PAR_TYP), 
	.P_DATA_save({ P_DATA_save[7],
		P_DATA_save[6],
		P_DATA_save[5],
		P_DATA_save[4],
		P_DATA_save[3],
		P_DATA_save[2],
		P_DATA_save[1],
		P_DATA_save[0] }), 
	.par_bit(par_bit));
   serializer_test_1 linkserializer (.CLK(CLK), 
	.nRESET(nRESET), 
	.ser_en(ser_en), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_data(ser_data), 
	.ser_done(ser_done), 
	.P_DATA_save({ P_DATA_save[7],
		P_DATA_save[6],
		P_DATA_save[5],
		P_DATA_save[4],
		P_DATA_save[3],
		P_DATA_save[2],
		P_DATA_save[1],
		P_DATA_save[0] }), 
	.test_si(n3), 
	.test_se(test_se));
   BUFX2M U3 (.Y(test_so), 
	.A(ser_done));
endmodule

module FSM_RX_test_1 (
	CLK, 
	nRESET, 
	RX_IN, 
	PAR_EN, 
	par_err, 
	strt_glitch, 
	stp_err, 
	bit_cnt, 
	edge_cnt, 
	Prescale, 
	dat_samp_en, 
	enable, 
	deser_en, 
	data_valid, 
	stp_chk_en, 
	strt_chk_en, 
	par_chk_en, 
	test_si, 
	test_se);
   input CLK;
   input nRESET;
   input RX_IN;
   input PAR_EN;
   input par_err;
   input strt_glitch;
   input stp_err;
   input [3:0] bit_cnt;
   input [4:0] edge_cnt;
   input [5:0] Prescale;
   output dat_samp_en;
   output enable;
   output deser_en;
   output data_valid;
   output stp_chk_en;
   output strt_chk_en;
   output par_chk_en;
   input test_si;
   input test_se;

   // Internal wires
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire \add_119/carry[4] ;
   wire \add_119/carry[3] ;
   wire \r99/carry[4] ;
   wire \r99/carry[3] ;
   wire \r99/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n92;
   wire n93;
   wire [2:0] state;

   assign N96 = Prescale[1] ;

   SDFFRQX2M data_valid_reg (.SI(dat_samp_en), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(data_valid), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M stp_chk_en_reg (.SI(n88), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(stp_chk_en), 
	.D(n76), 
	.CK(CLK));
   SDFFRQX2M strt_chk_en_reg (.SI(stp_chk_en), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(strt_chk_en), 
	.D(n77), 
	.CK(CLK));
   SDFFRQX2M par_chk_en_reg (.SI(enable), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(par_chk_en), 
	.D(n75), 
	.CK(CLK));
   SDFFRQX2M deser_en_reg (.SI(data_valid), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(deser_en), 
	.D(n78), 
	.CK(CLK));
   SDFFRQX2M enable_reg (.SI(deser_en), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(enable), 
	.D(n80), 
	.CK(CLK));
   SDFFRQX2M dat_samp_en_reg (.SI(test_si), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(dat_samp_en), 
	.D(n79), 
	.CK(CLK));
   SDFFRQX2M \state_reg[1]  (.SI(n85), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(state[1]), 
	.D(n81), 
	.CK(CLK));
   SDFFRQX2M \state_reg[2]  (.SI(n87), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(state[2]), 
	.D(n82), 
	.CK(CLK));
   SDFFRQX2M \state_reg[0]  (.SI(par_chk_en), 
	.SE(n93), 
	.RN(nRESET), 
	.Q(state[0]), 
	.D(n83), 
	.CK(CLK));
   NOR3X2M U5 (.Y(n55), 
	.C(n87), 
	.B(state[2]), 
	.A(state[0]));
   NOR2X2M U6 (.Y(n59), 
	.B(n41), 
	.A(n61));
   INVX2M U7 (.Y(n42), 
	.A(n66));
   INVX2M U8 (.Y(n84), 
	.A(n60));
   NAND4BX1M U9 (.Y(n67), 
	.D(n61), 
	.C(n73), 
	.B(n62), 
	.AN(n71));
   OAI21X2M U10 (.Y(n73), 
	.B0(n42), 
	.A1(n48), 
	.A0(n56));
   NAND2X2M U19 (.Y(n61), 
	.B(n44), 
	.A(N45));
   NOR3BX2M U20 (.Y(n71), 
	.C(par_err), 
	.B(n46), 
	.AN(N45));
   NAND2X2M U21 (.Y(n66), 
	.B(n49), 
	.A(N45));
   NAND3BXLM U22 (.Y(n69), 
	.C(N45), 
	.B(n86), 
	.AN(strt_glitch));
   OAI21X2M U23 (.Y(n63), 
	.B0(n89), 
	.A1(n84), 
	.A0(n72));
   NOR2X2M U24 (.Y(n72), 
	.B(n61), 
	.A(stp_err));
   OAI211X2M U25 (.Y(n81), 
	.C0(n69), 
	.B0(n68), 
	.A1(n67), 
	.A0(n87));
   OAI211X2M U26 (.Y(n83), 
	.C0(n63), 
	.B0(n68), 
	.A1(n67), 
	.A0(n85));
   INVX2M U27 (.Y(n40), 
	.A(n64));
   OAI211X2M U28 (.Y(n64), 
	.C0(n60), 
	.B0(n61), 
	.A1(n66), 
	.A0(n65));
   AOI22X1M U29 (.Y(n65), 
	.B1(n48), 
	.B0(par_err), 
	.A1(n56), 
	.A0(strt_glitch));
   NAND3X2M U30 (.Y(n60), 
	.C(n85), 
	.B(n88), 
	.A(n87));
   INVX2M U31 (.Y(n86), 
	.A(n53));
   INVX2M U32 (.Y(n41), 
	.A(stp_err));
   INVX2M U33 (.Y(n44), 
	.A(n51));
   INVX2M U34 (.Y(n89), 
	.A(RX_IN));
   OAI2B2X1M U35 (.Y(n82), 
	.B1(n67), 
	.B0(n88), 
	.A1N(n67), 
	.A0(n70));
   AOI2B1X1M U36 (.Y(n70), 
	.B0(n71), 
	.A1N(PAR_EN), 
	.A0(n55));
   NAND3X2M U37 (.Y(n68), 
	.C(PAR_EN), 
	.B(n67), 
	.A(n55));
   OAI2BB2X1M U38 (.Y(n78), 
	.B1(n53), 
	.B0(n62), 
	.A1N(n62), 
	.A0N(deser_en));
   OR2X2M U39 (.Y(n1), 
	.B(Prescale[0]), 
	.A(N96));
   AND3X2M U40 (.Y(n62), 
	.C(n74), 
	.B(n60), 
	.A(n69));
   NAND4X2M U41 (.Y(n74), 
	.D(n43), 
	.C(bit_cnt[3]), 
	.B(n55), 
	.A(n42));
   INVX2M U42 (.Y(n39), 
	.A(n57));
   AOI32X1M U43 (.Y(n57), 
	.B1(n58), 
	.B0(data_valid), 
	.A2(N102), 
	.A1(n41), 
	.A0(n44));
   OAI32X1M U44 (.Y(n58), 
	.B1(n89), 
	.B0(n60), 
	.A2(n86), 
	.A1(n84), 
	.A0(n59));
   OAI2BB1X2M U45 (.Y(n80), 
	.B0(n63), 
	.A1N(n40), 
	.A0N(enable));
   OAI2BB1X2M U46 (.Y(n79), 
	.B0(n63), 
	.A1N(n40), 
	.A0N(dat_samp_en));
   OAI2BB2X1M U47 (.Y(n76), 
	.B1(n51), 
	.B0(n50), 
	.A1N(n50), 
	.A0N(stp_chk_en));
   AOI211X2M U48 (.Y(n50), 
	.C0(n84), 
	.B0(n86), 
	.A1(n44), 
	.A0(N36));
   ADDHX1M U49 (.S(N34), 
	.CO(N35), 
	.B(\r99/carry[4] ), 
	.A(Prescale[5]));
   OAI2BB2X1M U50 (.Y(n75), 
	.B1(n46), 
	.B0(n45), 
	.A1N(n45), 
	.A0N(par_chk_en));
   NOR3BX2M U51 (.Y(n45), 
	.C(n84), 
	.B(n44), 
	.AN(n47));
   NAND3X2M U52 (.Y(n47), 
	.C(N36), 
	.B(n49), 
	.A(n48));
   OAI2BB2X1M U53 (.Y(n77), 
	.B1(n53), 
	.B0(n52), 
	.A1N(n52), 
	.A0N(strt_chk_en));
   NOR3BX2M U54 (.Y(n52), 
	.C(n84), 
	.B(n55), 
	.AN(n54));
   NAND3X2M U55 (.Y(n54), 
	.C(n56), 
	.B(n49), 
	.A(N36));
   ADDHX1M U56 (.S(N31), 
	.CO(\r99/carry[2] ), 
	.B(N96), 
	.A(Prescale[2]));
   ADDHX1M U57 (.S(N33), 
	.CO(\r99/carry[4] ), 
	.B(\r99/carry[3] ), 
	.A(Prescale[4]));
   ADDHX1M U58 (.S(N32), 
	.CO(\r99/carry[3] ), 
	.B(\r99/carry[2] ), 
	.A(Prescale[3]));
   NOR3BX2M U59 (.Y(n48), 
	.C(n46), 
	.B(n43), 
	.AN(bit_cnt[3]));
   NOR3X2M U60 (.Y(n56), 
	.C(n53), 
	.B(bit_cnt[3]), 
	.A(bit_cnt[0]));
   NOR2X2M U61 (.Y(n49), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   NAND3X2M U62 (.Y(n53), 
	.C(state[0]), 
	.B(n88), 
	.A(n87));
   INVX2M U63 (.Y(n43), 
	.A(bit_cnt[0]));
   INVX2M U64 (.Y(n87), 
	.A(state[1]));
   NAND3X2M U65 (.Y(n46), 
	.C(state[1]), 
	.B(n88), 
	.A(state[0]));
   INVX2M U66 (.Y(n88), 
	.A(state[2]));
   INVX2M U67 (.Y(n85), 
	.A(state[0]));
   NAND3X2M U68 (.Y(n51), 
	.C(state[2]), 
	.B(n87), 
	.A(n85));
   INVX2M U69 (.Y(N97), 
	.A(Prescale[2]));
   AND2X1M U70 (.Y(N101), 
	.B(Prescale[5]), 
	.A(\add_119/carry[4] ));
   CLKXOR2X2M U71 (.Y(N100), 
	.B(\add_119/carry[4] ), 
	.A(Prescale[5]));
   AND2X1M U72 (.Y(\add_119/carry[4] ), 
	.B(Prescale[4]), 
	.A(\add_119/carry[3] ));
   CLKXOR2X2M U73 (.Y(N99), 
	.B(\add_119/carry[3] ), 
	.A(Prescale[4]));
   AND2X1M U74 (.Y(\add_119/carry[3] ), 
	.B(Prescale[3]), 
	.A(Prescale[2]));
   CLKXOR2X2M U75 (.Y(N98), 
	.B(Prescale[2]), 
	.A(Prescale[3]));
   CLKINVX1M U76 (.Y(N30), 
	.A(N96));
   CLKINVX1M U77 (.Y(N38), 
	.A(Prescale[0]));
   OAI2BB1X1M U78 (.Y(N39), 
	.B0(n1), 
	.A1N(N96), 
	.A0N(Prescale[0]));
   OR2X1M U79 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   OAI2BB1X1M U80 (.Y(N40), 
	.B0(n2), 
	.A1N(Prescale[2]), 
	.A0N(n1));
   OR2X1M U81 (.Y(n3), 
	.B(Prescale[3]), 
	.A(n2));
   OAI2BB1X1M U82 (.Y(N41), 
	.B0(n3), 
	.A1N(Prescale[3]), 
	.A0N(n2));
   OR2X1M U83 (.Y(n4), 
	.B(Prescale[4]), 
	.A(n3));
   OAI2BB1X1M U84 (.Y(N42), 
	.B0(n4), 
	.A1N(Prescale[4]), 
	.A0N(n3));
   NOR2X1M U85 (.Y(N44), 
	.B(Prescale[5]), 
	.A(n4));
   AO21XLM U86 (.Y(N43), 
	.B0(N44), 
	.A1(Prescale[5]), 
	.A0(n4));
   NOR2BX1M U87 (.Y(n5), 
	.B(edge_cnt[0]), 
	.AN(N30));
   OAI2B2X1M U88 (.Y(n8), 
	.B1(n5), 
	.B0(N31), 
	.A1N(edge_cnt[1]), 
	.A0(n5));
   NOR2BX1M U89 (.Y(n6), 
	.B(N30), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U90 (.Y(n7), 
	.B1(n6), 
	.B0(edge_cnt[1]), 
	.A1N(N31), 
	.A0(n6));
   NAND3BX1M U91 (.Y(n12), 
	.C(n7), 
	.B(n8), 
	.AN(N35));
   CLKXOR2X2M U92 (.Y(n11), 
	.B(edge_cnt[4]), 
	.A(N34));
   CLKXOR2X2M U93 (.Y(n10), 
	.B(edge_cnt[2]), 
	.A(N32));
   CLKXOR2X2M U94 (.Y(n9), 
	.B(edge_cnt[3]), 
	.A(N33));
   NOR4X1M U95 (.Y(N36), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.A(n12));
   NOR2BX1M U96 (.Y(n13), 
	.B(N38), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U97 (.Y(n16), 
	.B1(n13), 
	.B0(edge_cnt[1]), 
	.A1N(N39), 
	.A0(n13));
   NOR2BX1M U98 (.Y(n14), 
	.B(edge_cnt[0]), 
	.AN(N38));
   OAI2B2X1M U99 (.Y(n15), 
	.B1(n14), 
	.B0(N39), 
	.A1N(edge_cnt[1]), 
	.A0(n14));
   NAND4BBX1M U100 (.Y(n20), 
	.D(n15), 
	.C(n16), 
	.BN(N43), 
	.AN(N44));
   CLKXOR2X2M U101 (.Y(n19), 
	.B(edge_cnt[4]), 
	.A(N42));
   CLKXOR2X2M U102 (.Y(n18), 
	.B(edge_cnt[2]), 
	.A(N40));
   CLKXOR2X2M U103 (.Y(n17), 
	.B(edge_cnt[3]), 
	.A(N41));
   NOR4X1M U104 (.Y(N45), 
	.D(n17), 
	.C(n18), 
	.B(n19), 
	.A(n20));
   NOR2BX1M U105 (.Y(n21), 
	.B(edge_cnt[0]), 
	.AN(N96));
   OAI2B2X1M U106 (.Y(n34), 
	.B1(n21), 
	.B0(N97), 
	.A1N(edge_cnt[1]), 
	.A0(n21));
   NOR2BX1M U107 (.Y(n22), 
	.B(N96), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U108 (.Y(n33), 
	.B1(n22), 
	.B0(edge_cnt[1]), 
	.A1N(N97), 
	.A0(n22));
   NAND3BX1M U109 (.Y(n38), 
	.C(n33), 
	.B(n34), 
	.AN(N101));
   CLKXOR2X2M U110 (.Y(n37), 
	.B(edge_cnt[4]), 
	.A(N100));
   CLKXOR2X2M U111 (.Y(n36), 
	.B(edge_cnt[2]), 
	.A(N98));
   CLKXOR2X2M U112 (.Y(n35), 
	.B(edge_cnt[3]), 
	.A(N99));
   NOR4X1M U113 (.Y(N102), 
	.D(n35), 
	.C(n36), 
	.B(n37), 
	.A(n38));
   INVXLM U114 (.Y(n92), 
	.A(test_se));
   CLKINVX2M U115 (.Y(n93), 
	.A(n92));
endmodule

module parity_Check (
	nRESET, 
	PAR_TYP, 
	par_chk_en, 
	sampled_bit, 
	P_DATA, 
	par_err);
   input nRESET;
   input PAR_TYP;
   input par_chk_en;
   input sampled_bit;
   input [7:0] P_DATA;
   output par_err;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;

   AND3X4M U2 (.Y(par_err), 
	.C(par_chk_en), 
	.B(n1), 
	.A(nRESET));
   XOR3XLM U3 (.Y(n1), 
	.C(n4), 
	.B(n3), 
	.A(n2));
   XOR3XLM U4 (.Y(n4), 
	.C(n5), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   CLKXOR2X2M U5 (.Y(n2), 
	.B(PAR_TYP), 
	.A(sampled_bit));
   XNOR2X2M U6 (.Y(n5), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   XOR3XLM U7 (.Y(n3), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U8 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
endmodule

module Stop_Check (
	nRESET, 
	stp_chk_en, 
	sampled_bit, 
	stp_err);
   input nRESET;
   input stp_chk_en;
   input sampled_bit;
   output stp_err;

   // Internal wires
   wire n1;

   AND3X4M U2 (.Y(stp_err), 
	.C(stp_chk_en), 
	.B(nRESET), 
	.A(n1));
   INVX2M U3 (.Y(n1), 
	.A(sampled_bit));
endmodule

module strt_Check (
	nRESET, 
	strt_chk_en, 
	sampled_bit, 
	strt_glitch);
   input nRESET;
   input strt_chk_en;
   input sampled_bit;
   output strt_glitch;

   AND3X2M U2 (.Y(strt_glitch), 
	.C(strt_chk_en), 
	.B(nRESET), 
	.A(sampled_bit));
endmodule

module edge_bit_counter_test_1 (
	enable, 
	CLK, 
	nRESET, 
	PAR_EN, 
	Prescale, 
	bit_cnt, 
	edge_cnt, 
	test_si, 
	test_se);
   input enable;
   input CLK;
   input nRESET;
   input PAR_EN;
   input [5:0] Prescale;
   output [3:0] bit_cnt;
   output [4:0] edge_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N38;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire n18;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire \add_22/carry[4] ;
   wire \add_22/carry[3] ;
   wire \add_22/carry[2] ;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n17;
   wire n19;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;

   SDFFRQX2M \bit_cnt_reg[2]  (.SI(bit_cnt[1]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(bit_cnt[2]), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(edge_cnt[4]), 
	.D(N73), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(bit_cnt[3]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(edge_cnt[0]), 
	.D(N69), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(edge_cnt[2]), 
	.D(N71), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(edge_cnt[3]), 
	.D(N72), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(edge_cnt[0]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(edge_cnt[1]), 
	.D(N70), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(bit_cnt[0]), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(bit_cnt[1]), 
	.D(n34), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(nRESET), 
	.Q(bit_cnt[0]), 
	.D(n35), 
	.CK(CLK));
   SDFFRX1M \bit_cnt_reg[3]  (.SI(bit_cnt[2]), 
	.SE(test_se), 
	.RN(nRESET), 
	.QN(n18), 
	.Q(bit_cnt[3]), 
	.D(n36), 
	.CK(CLK));
   NAND2X2M U8 (.Y(n24), 
	.B(n25), 
	.A(n50));
   NAND2BX2M U9 (.Y(n25), 
	.B(n50), 
	.AN(N21));
   INVX2M U15 (.Y(n50), 
	.A(n29));
   NOR2BX2M U16 (.Y(N72), 
	.B(n25), 
	.AN(N12));
   NOR2BX2M U17 (.Y(N71), 
	.B(n25), 
	.AN(N11));
   NOR2BX2M U18 (.Y(N70), 
	.B(n25), 
	.AN(N10));
   OAI32X1M U19 (.Y(n36), 
	.B1(n18), 
	.B0(n28), 
	.A2(n27), 
	.A1(n24), 
	.A0(n26));
   NAND2X2M U20 (.Y(n26), 
	.B(n18), 
	.A(bit_cnt[0]));
   AOI21X2M U21 (.Y(n28), 
	.B0(n22), 
	.A1(n27), 
	.A0(n50));
   NAND2X2M U22 (.Y(n27), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   OAI21X2M U23 (.Y(n22), 
	.B0(n25), 
	.A1(n29), 
	.A0(bit_cnt[0]));
   NAND3X2M U24 (.Y(n29), 
	.C(enable), 
	.B(n31), 
	.A(n30));
   NAND4X2M U25 (.Y(n30), 
	.D(n51), 
	.C(bit_cnt[1]), 
	.B(n32), 
	.A(PAR_EN));
   NAND3BX2M U26 (.Y(n31), 
	.C(n32), 
	.B(n23), 
	.AN(PAR_EN));
   NOR3BX2M U27 (.Y(n32), 
	.C(n18), 
	.B(bit_cnt[2]), 
	.AN(N38));
   OR2X2M U28 (.Y(n3), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   AO2B2X2M U29 (.Y(n34), 
	.B1(bit_cnt[1]), 
	.B0(n22), 
	.A1N(n24), 
	.A0(n23));
   OAI22X1M U30 (.Y(n35), 
	.B1(n24), 
	.B0(bit_cnt[0]), 
	.A1(n25), 
	.A0(n51));
   NOR2BX2M U31 (.Y(n33), 
	.B(n20), 
	.AN(enable));
   CLKXOR2X2M U32 (.Y(n20), 
	.B(bit_cnt[2]), 
	.A(n21));
   NAND3X2M U33 (.Y(n21), 
	.C(N21), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   NOR2X2M U34 (.Y(N73), 
	.B(n25), 
	.A(n2));
   XNOR2X2M U35 (.Y(n2), 
	.B(edge_cnt[4]), 
	.A(\add_22/carry[4] ));
   NOR2X2M U36 (.Y(N69), 
	.B(n25), 
	.A(edge_cnt[0]));
   INVX2M U37 (.Y(n51), 
	.A(bit_cnt[0]));
   NOR2X2M U38 (.Y(n23), 
	.B(bit_cnt[1]), 
	.A(n51));
   ADDHX1M U39 (.S(N10), 
	.CO(\add_22/carry[2] ), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U40 (.S(N11), 
	.CO(\add_22/carry[3] ), 
	.B(\add_22/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U41 (.S(N12), 
	.CO(\add_22/carry[4] ), 
	.B(\add_22/carry[3] ), 
	.A(edge_cnt[3]));
   CLKINVX1M U42 (.Y(N14), 
	.A(Prescale[0]));
   OAI2BB1X1M U43 (.Y(N15), 
	.B0(n3), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   OR2X1M U44 (.Y(n4), 
	.B(Prescale[2]), 
	.A(n3));
   OAI2BB1X1M U45 (.Y(N16), 
	.B0(n4), 
	.A1N(Prescale[2]), 
	.A0N(n3));
   OR2X1M U46 (.Y(n5), 
	.B(Prescale[3]), 
	.A(n4));
   OAI2BB1X1M U47 (.Y(N17), 
	.B0(n5), 
	.A1N(Prescale[3]), 
	.A0N(n4));
   OR2X1M U48 (.Y(n6), 
	.B(Prescale[4]), 
	.A(n5));
   OAI2BB1X1M U49 (.Y(N18), 
	.B0(n6), 
	.A1N(Prescale[4]), 
	.A0N(n5));
   NOR2X1M U50 (.Y(N20), 
	.B(Prescale[5]), 
	.A(n6));
   AO21XLM U51 (.Y(N19), 
	.B0(N20), 
	.A1(Prescale[5]), 
	.A0(n6));
   NOR2BX1M U52 (.Y(n7), 
	.B(edge_cnt[0]), 
	.AN(N14));
   OAI2B2X1M U53 (.Y(n37), 
	.B1(n7), 
	.B0(N15), 
	.A1N(edge_cnt[1]), 
	.A0(n7));
   NOR2BX1M U54 (.Y(n17), 
	.B(N14), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U55 (.Y(n19), 
	.B1(n17), 
	.B0(edge_cnt[1]), 
	.A1N(N15), 
	.A0(n17));
   NAND3BX1M U56 (.Y(n41), 
	.C(n19), 
	.B(n37), 
	.AN(N19));
   CLKXOR2X2M U57 (.Y(n40), 
	.B(edge_cnt[4]), 
	.A(N18));
   CLKXOR2X2M U58 (.Y(n39), 
	.B(edge_cnt[2]), 
	.A(N16));
   CLKXOR2X2M U59 (.Y(n38), 
	.B(edge_cnt[3]), 
	.A(N17));
   NOR4X1M U60 (.Y(N38), 
	.D(n38), 
	.C(n39), 
	.B(n40), 
	.A(n41));
   NOR2BX1M U61 (.Y(n42), 
	.B(N14), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U62 (.Y(n45), 
	.B1(n42), 
	.B0(edge_cnt[1]), 
	.A1N(N15), 
	.A0(n42));
   NOR2BX1M U63 (.Y(n43), 
	.B(edge_cnt[0]), 
	.AN(N14));
   OAI2B2X1M U64 (.Y(n44), 
	.B1(n43), 
	.B0(N15), 
	.A1N(edge_cnt[1]), 
	.A0(n43));
   NAND4BBX1M U65 (.Y(n49), 
	.D(n44), 
	.C(n45), 
	.BN(N19), 
	.AN(N20));
   CLKXOR2X2M U66 (.Y(n48), 
	.B(edge_cnt[4]), 
	.A(N18));
   CLKXOR2X2M U67 (.Y(n47), 
	.B(edge_cnt[2]), 
	.A(N16));
   CLKXOR2X2M U68 (.Y(n46), 
	.B(edge_cnt[3]), 
	.A(N17));
   NOR4X1M U69 (.Y(N21), 
	.D(n46), 
	.C(n47), 
	.B(n48), 
	.A(n49));
endmodule

module deserializer_test_1 (
	CLK, 
	deser_en, 
	sampled_bit, 
	bit_cnt, 
	Prescale, 
	edge_cnt, 
	P_DATA, 
	test_si, 
	test_se);
   input CLK;
   input deser_en;
   input sampled_bit;
   input [3:0] bit_cnt;
   input [5:0] Prescale;
   input [4:0] edge_cnt;
   output [7:0] P_DATA;
   input test_si;
   input test_se;

   // Internal wires
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire \add_12/carry[4] ;
   wire \add_12/carry[3] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n38;
   wire n39;
   wire n40;
   wire n41;

   assign N9 = Prescale[1] ;

   SDFFQX2M \P_DATA_reg[5]  (.SI(P_DATA[4]), 
	.SE(test_se), 
	.Q(P_DATA[5]), 
	.D(n35), 
	.CK(CLK));
   SDFFQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.Q(P_DATA[1]), 
	.D(n31), 
	.CK(CLK));
   SDFFQX2M \P_DATA_reg[4]  (.SI(P_DATA[3]), 
	.SE(test_se), 
	.Q(P_DATA[4]), 
	.D(n34), 
	.CK(CLK));
   SDFFQX2M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.Q(P_DATA[0]), 
	.D(n30), 
	.CK(CLK));
   SDFFQX2M \P_DATA_reg[7]  (.SI(P_DATA[6]), 
	.SE(test_se), 
	.Q(P_DATA[7]), 
	.D(n37), 
	.CK(CLK));
   SDFFQX2M \P_DATA_reg[3]  (.SI(P_DATA[2]), 
	.SE(test_se), 
	.Q(P_DATA[3]), 
	.D(n33), 
	.CK(CLK));
   SDFFQX2M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(test_se), 
	.Q(P_DATA[6]), 
	.D(n36), 
	.CK(CLK));
   SDFFQX2M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(test_se), 
	.Q(P_DATA[2]), 
	.D(n32), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(n18), 
	.B(bit_cnt[3]), 
	.AN(n27));
   AND3X2M U5 (.Y(n20), 
	.C(bit_cnt[1]), 
	.B(n41), 
	.A(n18));
   OAI2BB2X1M U13 (.Y(n31), 
	.B1(n19), 
	.B0(n38), 
	.A1N(n19), 
	.A0N(P_DATA[1]));
   NAND2X2M U14 (.Y(n19), 
	.B(n39), 
	.A(n20));
   OAI2BB2X1M U15 (.Y(n33), 
	.B1(n22), 
	.B0(n38), 
	.A1N(n22), 
	.A0N(P_DATA[3]));
   NAND3X2M U16 (.Y(n22), 
	.C(n23), 
	.B(n40), 
	.A(n39));
   OAI2BB2X1M U17 (.Y(n34), 
	.B1(n24), 
	.B0(n38), 
	.A1N(n24), 
	.A0N(P_DATA[4]));
   NAND3X2M U18 (.Y(n24), 
	.C(n23), 
	.B(n40), 
	.A(bit_cnt[0]));
   OAI2BB2X1M U19 (.Y(n32), 
	.B1(n21), 
	.B0(n38), 
	.A1N(n21), 
	.A0N(P_DATA[2]));
   NAND2X2M U20 (.Y(n21), 
	.B(bit_cnt[0]), 
	.A(n20));
   OAI2BB2X1M U21 (.Y(n35), 
	.B1(n25), 
	.B0(n38), 
	.A1N(n25), 
	.A0N(P_DATA[5]));
   NAND3X2M U22 (.Y(n25), 
	.C(n23), 
	.B(n39), 
	.A(bit_cnt[1]));
   OAI2BB2X1M U23 (.Y(n36), 
	.B1(n26), 
	.B0(n38), 
	.A1N(n26), 
	.A0N(P_DATA[6]));
   NAND3X2M U24 (.Y(n26), 
	.C(n23), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   AND2X2M U25 (.Y(n23), 
	.B(bit_cnt[2]), 
	.A(n18));
   AND2X2M U26 (.Y(n27), 
	.B(N15), 
	.A(deser_en));
   OAI2BB2X1M U27 (.Y(n37), 
	.B1(n28), 
	.B0(n38), 
	.A1N(n28), 
	.A0N(P_DATA[7]));
   NAND4X2M U28 (.Y(n28), 
	.D(n39), 
	.C(n29), 
	.B(n27), 
	.A(bit_cnt[3]));
   NOR2X2M U29 (.Y(n29), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   OAI2BB2X1M U30 (.Y(n30), 
	.B1(n38), 
	.B0(n17), 
	.A1N(n17), 
	.A0N(P_DATA[0]));
   NAND4X2M U31 (.Y(n17), 
	.D(n41), 
	.C(n40), 
	.B(n18), 
	.A(bit_cnt[0]));
   INVX2M U32 (.Y(N10), 
	.A(Prescale[2]));
   INVX2M U33 (.Y(n39), 
	.A(bit_cnt[0]));
   INVX2M U34 (.Y(n40), 
	.A(bit_cnt[1]));
   INVX2M U35 (.Y(n38), 
	.A(sampled_bit));
   INVX2M U36 (.Y(n41), 
	.A(bit_cnt[2]));
   AND2X1M U37 (.Y(N14), 
	.B(Prescale[5]), 
	.A(\add_12/carry[4] ));
   CLKXOR2X2M U38 (.Y(N13), 
	.B(\add_12/carry[4] ), 
	.A(Prescale[5]));
   AND2X1M U39 (.Y(\add_12/carry[4] ), 
	.B(Prescale[4]), 
	.A(\add_12/carry[3] ));
   CLKXOR2X2M U40 (.Y(N12), 
	.B(\add_12/carry[3] ), 
	.A(Prescale[4]));
   AND2X1M U41 (.Y(\add_12/carry[3] ), 
	.B(Prescale[3]), 
	.A(Prescale[2]));
   CLKXOR2X2M U42 (.Y(N11), 
	.B(Prescale[2]), 
	.A(Prescale[3]));
   NOR2BX1M U43 (.Y(n1), 
	.B(edge_cnt[0]), 
	.AN(N9));
   OAI2B2X1M U44 (.Y(n4), 
	.B1(n1), 
	.B0(N10), 
	.A1N(edge_cnt[1]), 
	.A0(n1));
   NOR2BX1M U45 (.Y(n2), 
	.B(N9), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U46 (.Y(n3), 
	.B1(n2), 
	.B0(edge_cnt[1]), 
	.A1N(N10), 
	.A0(n2));
   NAND3BX1M U47 (.Y(n16), 
	.C(n3), 
	.B(n4), 
	.AN(N14));
   CLKXOR2X2M U48 (.Y(n15), 
	.B(edge_cnt[4]), 
	.A(N13));
   CLKXOR2X2M U49 (.Y(n14), 
	.B(edge_cnt[2]), 
	.A(N11));
   CLKXOR2X2M U50 (.Y(n13), 
	.B(edge_cnt[3]), 
	.A(N12));
   NOR4X1M U51 (.Y(N15), 
	.D(n13), 
	.C(n14), 
	.B(n15), 
	.A(n16));
endmodule

module data_sampling_test_1 (
	CLK, 
	RX_IN, 
	dat_samp_en, 
	edge_cnt, 
	Prescale, 
	sampled_bit, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RX_IN;
   input dat_samp_en;
   input [4:0] edge_cnt;
   input [5:0] Prescale;
   output sampled_bit;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire \r91/carry[4] ;
   wire \r91/carry[3] ;
   wire \r91/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n30;
   wire n40;
   wire [2:0] saving;

   assign test_so = saving[1] ;

   SDFFQX2M \saving_reg[1]  (.SI(saving[0]), 
	.SE(test_se), 
	.Q(saving[1]), 
	.D(n39), 
	.CK(CLK));
   SDFFQX2M \saving_reg[0]  (.SI(sampled_bit), 
	.SE(test_se), 
	.Q(saving[0]), 
	.D(n38), 
	.CK(CLK));
   SDFFQX2M sampled_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.Q(sampled_bit), 
	.D(n37), 
	.CK(CLK));
   INVX2M U6 (.Y(n40), 
	.A(RX_IN));
   NOR4BBX1M U7 (.Y(n34), 
	.D(N10), 
	.C(N9), 
	.BN(saving[0]), 
	.AN(saving[1]));
   OAI2BB2X1M U8 (.Y(n37), 
	.B1(n32), 
	.B0(n31), 
	.A1N(n32), 
	.A0N(sampled_bit));
   NAND2X2M U9 (.Y(n32), 
	.B(N17), 
	.A(dat_samp_en));
   AOI21X2M U10 (.Y(n31), 
	.B0(n34), 
	.A1(n33), 
	.A0(RX_IN));
   OAI2BB2X1M U11 (.Y(n39), 
	.B1(n36), 
	.B0(n40), 
	.A1N(saving[1]), 
	.A0N(n36));
   NAND2X2M U12 (.Y(n36), 
	.B(dat_samp_en), 
	.A(N10));
   OAI2BB2X1M U13 (.Y(n38), 
	.B1(n35), 
	.B0(n40), 
	.A1N(saving[0]), 
	.A0N(n35));
   NAND2X2M U14 (.Y(n35), 
	.B(dat_samp_en), 
	.A(N9));
   OR2X2M U15 (.Y(n1), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   OR4X1M U16 (.Y(n33), 
	.D(saving[1]), 
	.C(saving[0]), 
	.B(N9), 
	.A(N10));
   ADDHX1M U17 (.S(N15), 
	.CO(N16), 
	.B(\r91/carry[4] ), 
	.A(Prescale[5]));
   ADDHX1M U18 (.S(N12), 
	.CO(\r91/carry[2] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   ADDHX1M U19 (.S(N14), 
	.CO(\r91/carry[4] ), 
	.B(\r91/carry[3] ), 
	.A(Prescale[4]));
   ADDHX1M U20 (.S(N13), 
	.CO(\r91/carry[3] ), 
	.B(\r91/carry[2] ), 
	.A(Prescale[3]));
   CLKINVX1M U21 (.Y(N11), 
	.A(Prescale[1]));
   OAI2BB1X1M U22 (.Y(N4), 
	.B0(n1), 
	.A1N(Prescale[2]), 
	.A0N(Prescale[1]));
   OR2X1M U23 (.Y(n2), 
	.B(Prescale[3]), 
	.A(n1));
   OAI2BB1X1M U24 (.Y(N5), 
	.B0(n2), 
	.A1N(Prescale[3]), 
	.A0N(n1));
   XNOR2X1M U25 (.Y(N6), 
	.B(n2), 
	.A(Prescale[4]));
   NOR3X1M U26 (.Y(N8), 
	.C(n2), 
	.B(Prescale[5]), 
	.A(Prescale[4]));
   OAI21X1M U27 (.Y(n3), 
	.B0(Prescale[5]), 
	.A1(n2), 
	.A0(Prescale[4]));
   NAND2BX1M U28 (.Y(N7), 
	.B(n3), 
	.AN(N8));
   NOR2BX1M U29 (.Y(n4), 
	.B(edge_cnt[0]), 
	.AN(N11));
   OAI2B2X1M U30 (.Y(n7), 
	.B1(n4), 
	.B0(N12), 
	.A1N(edge_cnt[1]), 
	.A0(n4));
   NOR2BX1M U31 (.Y(n5), 
	.B(N11), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U32 (.Y(n6), 
	.B1(n5), 
	.B0(edge_cnt[1]), 
	.A1N(N12), 
	.A0(n5));
   NAND3BX1M U33 (.Y(n11), 
	.C(n6), 
	.B(n7), 
	.AN(N16));
   CLKXOR2X2M U34 (.Y(n10), 
	.B(edge_cnt[4]), 
	.A(N15));
   CLKXOR2X2M U35 (.Y(n9), 
	.B(edge_cnt[2]), 
	.A(N13));
   CLKXOR2X2M U36 (.Y(n8), 
	.B(edge_cnt[3]), 
	.A(N14));
   NOR4X1M U37 (.Y(N17), 
	.D(n8), 
	.C(n9), 
	.B(n10), 
	.A(n11));
   NOR2BX1M U38 (.Y(n12), 
	.B(edge_cnt[0]), 
	.AN(N11));
   OAI2B2X1M U39 (.Y(n15), 
	.B1(n12), 
	.B0(N4), 
	.A1N(edge_cnt[1]), 
	.A0(n12));
   NOR2BX1M U40 (.Y(n13), 
	.B(N11), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U41 (.Y(n14), 
	.B1(n13), 
	.B0(edge_cnt[1]), 
	.A1N(N4), 
	.A0(n13));
   NAND3BX1M U42 (.Y(n19), 
	.C(n14), 
	.B(n15), 
	.AN(N8));
   CLKXOR2X2M U43 (.Y(n18), 
	.B(edge_cnt[4]), 
	.A(N7));
   CLKXOR2X2M U44 (.Y(n17), 
	.B(edge_cnt[2]), 
	.A(N5));
   CLKXOR2X2M U45 (.Y(n16), 
	.B(edge_cnt[3]), 
	.A(N6));
   NOR4X1M U46 (.Y(N9), 
	.D(n16), 
	.C(n17), 
	.B(n18), 
	.A(n19));
   CLKXOR2X2M U47 (.Y(n30), 
	.B(edge_cnt[2]), 
	.A(Prescale[3]));
   NOR2BX1M U48 (.Y(n20), 
	.B(edge_cnt[0]), 
	.AN(Prescale[1]));
   OAI2B2X1M U49 (.Y(n23), 
	.B1(n20), 
	.B0(Prescale[2]), 
	.A1N(edge_cnt[1]), 
	.A0(n20));
   NOR2BX1M U50 (.Y(n21), 
	.B(Prescale[1]), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U51 (.Y(n22), 
	.B1(n21), 
	.B0(edge_cnt[1]), 
	.A1N(Prescale[2]), 
	.A0(n21));
   CLKNAND2X2M U52 (.Y(n26), 
	.B(n22), 
	.A(n23));
   CLKXOR2X2M U53 (.Y(n25), 
	.B(edge_cnt[3]), 
	.A(Prescale[4]));
   CLKXOR2X2M U54 (.Y(n24), 
	.B(edge_cnt[4]), 
	.A(Prescale[5]));
   NOR4X1M U55 (.Y(N10), 
	.D(n24), 
	.C(n25), 
	.B(n26), 
	.A(n30));
endmodule

module UART_RX_TOP_test_1 (
	CLK, 
	nRESET, 
	RX_IN, 
	PAR_EN, 
	PAR_TYP, 
	Prescale, 
	data_valid, 
	P_DATA, 
	par_err, 
	stp_err, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input nRESET;
   input RX_IN;
   input PAR_EN;
   input PAR_TYP;
   input [5:0] Prescale;
   output data_valid;
   output [7:0] P_DATA;
   output par_err;
   output stp_err;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire strt_glitch;
   wire dat_samp_en;
   wire enable;
   wire deser_en;
   wire stp_chk_en;
   wire strt_chk_en;
   wire par_chk_en;
   wire sampled_bit;
   wire n3;
   wire [3:0] bit_cnt;
   wire [4:0] edge_cnt;

   assign test_so = edge_cnt[4] ;

   FSM_RX_test_1 FSM_block (.CLK(CLK), 
	.nRESET(nRESET), 
	.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.par_err(par_err), 
	.strt_glitch(strt_glitch), 
	.stp_err(stp_err), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.dat_samp_en(dat_samp_en), 
	.enable(enable), 
	.deser_en(deser_en), 
	.data_valid(data_valid), 
	.stp_chk_en(stp_chk_en), 
	.strt_chk_en(strt_chk_en), 
	.par_chk_en(par_chk_en), 
	.test_si(test_si), 
	.test_se(test_se));
   parity_Check parity_Check_block (.nRESET(nRESET), 
	.PAR_TYP(PAR_TYP), 
	.par_chk_en(par_chk_en), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_err(par_err));
   Stop_Check Stop_Check_block (.nRESET(nRESET), 
	.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.stp_err(stp_err));
   strt_Check strt_Check_block (.nRESET(nRESET), 
	.strt_chk_en(strt_chk_en), 
	.sampled_bit(sampled_bit), 
	.strt_glitch(strt_glitch));
   edge_bit_counter_test_1 edge_bit_counter_block (.enable(enable), 
	.CLK(CLK), 
	.nRESET(nRESET), 
	.PAR_EN(PAR_EN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.test_si(P_DATA[7]), 
	.test_se(test_se));
   deserializer_test_1 deserializer_block (.CLK(CLK), 
	.deser_en(deser_en), 
	.sampled_bit(sampled_bit), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n3), 
	.test_se(test_se));
   data_sampling_test_1 data_sampling_block (.CLK(CLK), 
	.RX_IN(RX_IN), 
	.dat_samp_en(dat_samp_en), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.sampled_bit(sampled_bit), 
	.test_si(strt_chk_en), 
	.test_so(n3), 
	.test_se(test_se));
endmodule

module UART_TOP_test_1 (
	TX_CLK, 
	RX_CLK, 
	RST, 
	Prescale, 
	TX_IN_P, 
	TX_IN_V, 
	TX_OUT_S, 
	TX_OUT_V, 
	RX_IN_S, 
	RX_OUT_P, 
	RX_OUT_V, 
	parity_error, 
	framing_error, 
	PAR_TYP, 
	PAR_EN, 
	test_si, 
	test_so, 
	test_se);
   input TX_CLK;
   input RX_CLK;
   input RST;
   input [5:0] Prescale;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   output TX_OUT_S;
   output TX_OUT_V;
   input RX_IN_S;
   output [7:0] RX_OUT_P;
   output RX_OUT_V;
   output parity_error;
   output framing_error;
   input PAR_TYP;
   input PAR_EN;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n4;

   UART_TX_TOP_test_1 UART_Tx (.CLK(TX_CLK), 
	.nRESET(RST), 
	.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.Data_Valid(TX_IN_V), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.TX_OUT(TX_OUT_S), 
	.busy(TX_OUT_V), 
	.test_si(n4), 
	.test_so(test_so), 
	.test_se(test_se));
   UART_RX_TOP_test_1 UART_Rx (.CLK(RX_CLK), 
	.nRESET(RST), 
	.RX_IN(RX_IN_S), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.data_valid(RX_OUT_V), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.par_err(parity_error), 
	.stp_err(framing_error), 
	.test_si(test_si), 
	.test_so(n4), 
	.test_se(test_se));
endmodule

module FIFO_WR_test_1 (
	wclk, 
	wrst_n, 
	winc, 
	wq2_rptr, 
	waddr, 
	wptr, 
	wfull, 
	test_si, 
	test_se, 
	REF_CLK_M__L7_N15);
   input wclk;
   input wrst_n;
   input winc;
   input [3:0] wq2_rptr;
   output [2:0] waddr;
   output [3:0] wptr;
   output wfull;
   input test_si;
   input test_se;
   input REF_CLK_M__L7_N15;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n6;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n22;
   wire n24;
   wire n26;
   wire n28;
   wire n30;
   wire n32;
   wire n34;
   wire n36;
   wire n38;
   wire n40;
   wire n42;
   wire n4;
   wire n5;
   wire n7;
   wire n16;
   wire [3:0] wptr_bin;

   SDFFRQX2M \wptr_bin_reg[3]  (.SI(wptr_bin[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_bin[3]), 
	.D(n34), 
	.CK(wclk));
   SDFFRQX2M \waddr_reg[2]  (.SI(waddr[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(waddr[2]), 
	.D(n22), 
	.CK(wclk));
   SDFFRQX2M \wptr_bin_reg[2]  (.SI(wptr_bin[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_bin[2]), 
	.D(n36), 
	.CK(wclk));
   SDFFRQX2M \wptr_bin_reg[1]  (.SI(n5), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_bin[1]), 
	.D(n38), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \wptr_bin_reg[0]  (.SI(waddr[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_bin[0]), 
	.D(n40), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M \waddr_reg[1]  (.SI(waddr[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(waddr[1]), 
	.D(n24), 
	.CK(wclk));
   SDFFRQX2M \waddr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(waddr[0]), 
	.D(n26), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[1]  (.SI(wptr[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[1]), 
	.D(n32), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[0]  (.SI(wptr_bin[3]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[0]), 
	.D(n42), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[2]  (.SI(wptr[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[2]), 
	.D(n30), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[3]  (.SI(wptr[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[3]), 
	.D(n28), 
	.CK(wclk));
   INVX2M U3 (.Y(wfull), 
	.A(n1));
   NOR2X2M U4 (.Y(n3), 
	.B(n9), 
	.A(n2));
   INVX2M U5 (.Y(n4), 
	.A(n2));
   INVX2M U6 (.Y(n16), 
	.A(n8));
   INVX2M U7 (.Y(n7), 
	.A(n12));
   NAND4X2M U8 (.Y(n1), 
	.D(n20), 
	.C(n19), 
	.B(n18), 
	.A(n17));
   XNOR2X2M U9 (.Y(n17), 
	.B(wq2_rptr[0]), 
	.A(wptr[0]));
   XNOR2X2M U10 (.Y(n18), 
	.B(wq2_rptr[1]), 
	.A(wptr[1]));
   CLKXOR2X2M U11 (.Y(n19), 
	.B(wptr[2]), 
	.A(wq2_rptr[2]));
   CLKXOR2X2M U12 (.Y(n20), 
	.B(wptr[3]), 
	.A(wq2_rptr[3]));
   NAND2X2M U13 (.Y(n2), 
	.B(n1), 
	.A(winc));
   XNOR2X2M U14 (.Y(n8), 
	.B(n10), 
	.A(wptr_bin[3]));
   XNOR2X2M U15 (.Y(n40), 
	.B(n2), 
	.A(wptr_bin[0]));
   OAI2BB2X1M U16 (.Y(n24), 
	.B1(n2), 
	.B0(n7), 
	.A1N(n2), 
	.A0N(waddr[1]));
   OAI2BB2X1M U17 (.Y(n26), 
	.B1(n2), 
	.B0(wptr_bin[0]), 
	.A1N(n2), 
	.A0N(waddr[0]));
   OAI2BB2X1M U18 (.Y(n28), 
	.B1(n2), 
	.B0(n16), 
	.A1N(wptr[3]), 
	.A0N(n2));
   OAI2BB2X1M U19 (.Y(n42), 
	.B1(n2), 
	.B0(wptr_bin[1]), 
	.A1N(wptr[0]), 
	.A0N(n2));
   NAND2BX2M U20 (.Y(n10), 
	.B(wptr_bin[2]), 
	.AN(n14));
   NAND2X2M U21 (.Y(n14), 
	.B(wptr_bin[0]), 
	.A(wptr_bin[1]));
   CLKXOR2X2M U22 (.Y(n9), 
	.B(wptr_bin[2]), 
	.A(n14));
   CLKXOR2X2M U23 (.Y(n12), 
	.B(wptr_bin[1]), 
	.A(wptr_bin[0]));
   OAI2BB1X2M U24 (.Y(n30), 
	.B0(n6), 
	.A1N(wptr[2]), 
	.A0N(n2));
   AOI32X1M U25 (.Y(n6), 
	.B1(n16), 
	.B0(n3), 
	.A2(n9), 
	.A1(n8), 
	.A0(n4));
   OAI2BB1X2M U26 (.Y(n32), 
	.B0(n11), 
	.A1N(wptr[1]), 
	.A0N(n2));
   AOI32X1M U27 (.Y(n11), 
	.B1(n3), 
	.B0(n7), 
	.A2(n9), 
	.A1(n12), 
	.A0(n4));
   AO21XLM U28 (.Y(n22), 
	.B0(n3), 
	.A1(n2), 
	.A0(waddr[2]));
   AO21XLM U29 (.Y(n36), 
	.B0(n3), 
	.A1(wptr_bin[2]), 
	.A0(n2));
   CLKXOR2X2M U30 (.Y(n34), 
	.B(n13), 
	.A(wptr_bin[3]));
   NOR2X2M U31 (.Y(n13), 
	.B(n10), 
	.A(n2));
   CLKXOR2X2M U32 (.Y(n38), 
	.B(n15), 
	.A(wptr_bin[1]));
   NOR2X2M U33 (.Y(n15), 
	.B(n2), 
	.A(n5));
   INVX2M U34 (.Y(n5), 
	.A(wptr_bin[0]));
endmodule

module DF_SYNC_test_1 (
	clk, 
	rst_n, 
	ptr, 
	q2_ptr, 
	test_si, 
	test_se, 
	REF_CLK_M__L7_N14);
   input clk;
   input rst_n;
   input [3:0] ptr;
   output [3:0] q2_ptr;
   input test_si;
   input test_se;
   input REF_CLK_M__L7_N14;

   // Internal wires
   wire [3:0] ff1;

   SDFFRQX2M \q2_ptr_reg[1]  (.SI(q2_ptr[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[1]), 
	.D(ff1[1]), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M \q2_ptr_reg[0]  (.SI(ff1[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[0]), 
	.D(ff1[0]), 
	.CK(clk));
   SDFFRQX2M \q2_ptr_reg[3]  (.SI(q2_ptr[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[3]), 
	.D(ff1[3]), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M \q2_ptr_reg[2]  (.SI(q2_ptr[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[2]), 
	.D(ff1[2]), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M \ff1_reg[3]  (.SI(ff1[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[3]), 
	.D(ptr[3]), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M \ff1_reg[2]  (.SI(ff1[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[2]), 
	.D(ptr[2]), 
	.CK(clk));
   SDFFRQX2M \ff1_reg[1]  (.SI(ff1[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[1]), 
	.D(ptr[1]), 
	.CK(clk));
   SDFFRQX2M \ff1_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[0]), 
	.D(ptr[0]), 
	.CK(clk));
endmodule

module FIFO_RD_test_1 (
	rclk, 
	rrst_n, 
	rinc, 
	rq2_wptr, 
	rempty, 
	raddr, 
	rptr, 
	test_si, 
	test_se);
   input rclk;
   input rrst_n;
   input rinc;
   input [3:0] rq2_wptr;
   output rempty;
   output [2:0] raddr;
   output [3:0] rptr;
   input test_si;
   input test_se;

   // Internal wires
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n12;
   wire n13;
   wire n14;
   wire n40;
   wire [3:0] rptr_bin;

   SDFFRQX2M \rptr_bin_reg[3]  (.SI(rptr_bin[2]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr_bin[3]), 
	.D(n35), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[0]  (.SI(rptr_bin[3]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[0]), 
	.D(n39), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[3]  (.SI(rptr[2]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[3]), 
	.D(n32), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[2]  (.SI(rptr[1]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[2]), 
	.D(n33), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[1]  (.SI(rptr[0]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[1]), 
	.D(n34), 
	.CK(rclk));
   SDFFRQX2M \raddr_reg[2]  (.SI(raddr[1]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[2]), 
	.D(n29), 
	.CK(rclk));
   SDFFRQX2M \rptr_bin_reg[2]  (.SI(rptr_bin[1]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr_bin[2]), 
	.D(n36), 
	.CK(rclk));
   SDFFRQX2M \raddr_reg[1]  (.SI(raddr[0]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[1]), 
	.D(n30), 
	.CK(rclk));
   SDFFRQX2M \rptr_bin_reg[1]  (.SI(rptr_bin[0]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr_bin[1]), 
	.D(n37), 
	.CK(rclk));
   SDFFRQX2M \raddr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[0]), 
	.D(n31), 
	.CK(rclk));
   SDFFRQX2M \rptr_bin_reg[0]  (.SI(raddr[2]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr_bin[0]), 
	.D(n38), 
	.CK(rclk));
   INVX2M U14 (.Y(n40), 
	.A(n21));
   INVX2M U15 (.Y(n13), 
	.A(n17));
   XNOR2X2M U16 (.Y(n18), 
	.B(n22), 
	.A(rptr_bin[3]));
   NOR2BX2M U17 (.Y(n22), 
	.B(n23), 
	.AN(rptr_bin[2]));
   XNOR2X2M U18 (.Y(n21), 
	.B(rptr_bin[2]), 
	.A(n23));
   XNOR2X2M U19 (.Y(n28), 
	.B(rq2_wptr[2]), 
	.A(rptr[2]));
   NAND2X2M U20 (.Y(n12), 
	.B(n15), 
	.A(rinc));
   NAND4X2M U21 (.Y(n15), 
	.D(n28), 
	.C(n27), 
	.B(n26), 
	.A(n25));
   XNOR2X2M U22 (.Y(n25), 
	.B(rq2_wptr[1]), 
	.A(rptr[1]));
   XNOR2X2M U23 (.Y(n26), 
	.B(rq2_wptr[0]), 
	.A(rptr[0]));
   XNOR2X2M U24 (.Y(n27), 
	.B(rq2_wptr[3]), 
	.A(rptr[3]));
   NAND2X2M U25 (.Y(n16), 
	.B(n15), 
	.A(rinc));
   XNOR2X2M U26 (.Y(n38), 
	.B(n12), 
	.A(rptr_bin[0]));
   OAI2BB2X1M U27 (.Y(n39), 
	.B1(n24), 
	.B0(n16), 
	.A1N(rptr[0]), 
	.A0N(n16));
   XNOR2X2M U28 (.Y(n24), 
	.B(n13), 
	.A(n14));
   OAI2BB2X1M U29 (.Y(n34), 
	.B1(n16), 
	.B0(n20), 
	.A1N(rptr[1]), 
	.A0N(n12));
   XNOR2X2M U30 (.Y(n20), 
	.B(n13), 
	.A(n21));
   OAI2BB2X1M U31 (.Y(n35), 
	.B1(n12), 
	.B0(n18), 
	.A1N(rptr_bin[3]), 
	.A0N(n16));
   OAI2BB2X1M U32 (.Y(n33), 
	.B1(n12), 
	.B0(n19), 
	.A1N(rptr[2]), 
	.A0N(n16));
   XNOR2X2M U33 (.Y(n19), 
	.B(n40), 
	.A(n18));
   OAI2BB2X1M U34 (.Y(n32), 
	.B1(n16), 
	.B0(n18), 
	.A1N(rptr[3]), 
	.A0N(n12));
   OAI2BB2X1M U35 (.Y(n36), 
	.B1(n16), 
	.B0(n40), 
	.A1N(rptr_bin[2]), 
	.A0N(n12));
   OAI2BB2X1M U36 (.Y(n29), 
	.B1(n12), 
	.B0(n40), 
	.A1N(n16), 
	.A0N(raddr[2]));
   OAI2BB2X1M U37 (.Y(n31), 
	.B1(n12), 
	.B0(rptr_bin[0]), 
	.A1N(n16), 
	.A0N(raddr[0]));
   OAI2BB2X1M U38 (.Y(n37), 
	.B1(n12), 
	.B0(n17), 
	.A1N(rptr_bin[1]), 
	.A0N(n16));
   OAI2BB2X1M U39 (.Y(n30), 
	.B1(n16), 
	.B0(n17), 
	.A1N(n12), 
	.A0N(raddr[1]));
   NAND2X2M U40 (.Y(n23), 
	.B(rptr_bin[0]), 
	.A(rptr_bin[1]));
   CLKXOR2X2M U41 (.Y(n17), 
	.B(n14), 
	.A(rptr_bin[1]));
   INVX2M U42 (.Y(rempty), 
	.A(n15));
   INVX2M U43 (.Y(n14), 
	.A(rptr_bin[0]));
endmodule

module DF_SYNC_test_0 (
	clk, 
	rst_n, 
	ptr, 
	q2_ptr, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [3:0] ptr;
   output [3:0] q2_ptr;
   input test_si;
   input test_se;

   // Internal wires
   wire [3:0] ff1;

   SDFFRQX2M \q2_ptr_reg[3]  (.SI(q2_ptr[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[3]), 
	.D(ff1[3]), 
	.CK(clk));
   SDFFRQX2M \q2_ptr_reg[2]  (.SI(q2_ptr[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[2]), 
	.D(ff1[2]), 
	.CK(clk));
   SDFFRQX2M \q2_ptr_reg[1]  (.SI(q2_ptr[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[1]), 
	.D(ff1[1]), 
	.CK(clk));
   SDFFRQX2M \q2_ptr_reg[0]  (.SI(ff1[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q2_ptr[0]), 
	.D(ff1[0]), 
	.CK(clk));
   SDFFRQX2M \ff1_reg[3]  (.SI(ff1[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[3]), 
	.D(ptr[3]), 
	.CK(clk));
   SDFFRQX2M \ff1_reg[2]  (.SI(ff1[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[2]), 
	.D(ptr[2]), 
	.CK(clk));
   SDFFRQX2M \ff1_reg[1]  (.SI(ff1[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[1]), 
	.D(ptr[1]), 
	.CK(clk));
   SDFFRQX2M \ff1_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(ff1[0]), 
	.D(ptr[0]), 
	.CK(clk));
endmodule

module FIFO_MEM_CNTRL_test_1 (
	wclk, 
	waddr, 
	raddr, 
	wdata, 
	winc, 
	wfull, 
	rdata, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	REF_CLK_M__L7_N11, 
	REF_CLK_M__L7_N14, 
	REF_CLK_M__L7_N15, 
	REF_CLK_M__L7_N8, 
	REF_CLK_M__L7_N9);
   input wclk;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   input winc;
   input wfull;
   output [7:0] rdata;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input REF_CLK_M__L7_N11;
   input REF_CLK_M__L7_N14;
   input REF_CLK_M__L7_N15;
   input REF_CLK_M__L7_N8;
   input REF_CLK_M__L7_N9;

   // Internal wires
   wire FE_OFN3_N10;
   wire N9;
   wire N10;
   wire N11;
   wire \RAM[0][7] ;
   wire \RAM[0][6] ;
   wire \RAM[0][5] ;
   wire \RAM[0][4] ;
   wire \RAM[0][3] ;
   wire \RAM[0][2] ;
   wire \RAM[0][1] ;
   wire \RAM[0][0] ;
   wire \RAM[1][7] ;
   wire \RAM[1][6] ;
   wire \RAM[1][5] ;
   wire \RAM[1][4] ;
   wire \RAM[1][3] ;
   wire \RAM[1][2] ;
   wire \RAM[1][1] ;
   wire \RAM[1][0] ;
   wire \RAM[2][7] ;
   wire \RAM[2][6] ;
   wire \RAM[2][5] ;
   wire \RAM[2][4] ;
   wire \RAM[2][3] ;
   wire \RAM[2][2] ;
   wire \RAM[2][1] ;
   wire \RAM[2][0] ;
   wire \RAM[3][7] ;
   wire \RAM[3][6] ;
   wire \RAM[3][5] ;
   wire \RAM[3][4] ;
   wire \RAM[3][3] ;
   wire \RAM[3][2] ;
   wire \RAM[3][1] ;
   wire \RAM[3][0] ;
   wire \RAM[4][7] ;
   wire \RAM[4][6] ;
   wire \RAM[4][5] ;
   wire \RAM[4][4] ;
   wire \RAM[4][3] ;
   wire \RAM[4][2] ;
   wire \RAM[4][1] ;
   wire \RAM[4][0] ;
   wire \RAM[5][7] ;
   wire \RAM[5][6] ;
   wire \RAM[5][5] ;
   wire \RAM[5][4] ;
   wire \RAM[5][3] ;
   wire \RAM[5][2] ;
   wire \RAM[5][1] ;
   wire \RAM[5][0] ;
   wire \RAM[6][7] ;
   wire \RAM[6][6] ;
   wire \RAM[6][5] ;
   wire \RAM[6][4] ;
   wire \RAM[6][3] ;
   wire \RAM[6][2] ;
   wire \RAM[6][1] ;
   wire \RAM[6][0] ;
   wire \RAM[7][7] ;
   wire \RAM[7][6] ;
   wire \RAM[7][5] ;
   wire \RAM[7][4] ;
   wire \RAM[7][3] ;
   wire \RAM[7][2] ;
   wire \RAM[7][1] ;
   wire \RAM[7][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n170;
   wire n171;
   wire n172;

   assign test_so1 = \RAM[6][6]  ;
   assign test_so2 = \RAM[7][7]  ;

   BUFX2M FE_OFC3_N10 (.Y(FE_OFN3_N10), 
	.A(N10));
   SDFFQX2M \RAM_reg[1][7]  (.SI(\RAM[1][6] ), 
	.SE(n170), 
	.Q(\RAM[1][7] ), 
	.D(n142), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[1][6]  (.SI(\RAM[1][5] ), 
	.SE(n172), 
	.Q(\RAM[1][6] ), 
	.D(n141), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[1][5]  (.SI(\RAM[1][4] ), 
	.SE(n171), 
	.Q(\RAM[1][5] ), 
	.D(n140), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[1][4]  (.SI(\RAM[1][3] ), 
	.SE(n170), 
	.Q(\RAM[1][4] ), 
	.D(n139), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[1][3]  (.SI(\RAM[1][2] ), 
	.SE(n172), 
	.Q(\RAM[1][3] ), 
	.D(n138), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[1][2]  (.SI(\RAM[1][1] ), 
	.SE(n171), 
	.Q(\RAM[1][2] ), 
	.D(n137), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[1][1]  (.SI(\RAM[1][0] ), 
	.SE(n170), 
	.Q(\RAM[1][1] ), 
	.D(n136), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[1][0]  (.SI(\RAM[0][7] ), 
	.SE(n172), 
	.Q(\RAM[1][0] ), 
	.D(n135), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[5][7]  (.SI(\RAM[5][6] ), 
	.SE(n171), 
	.Q(\RAM[5][7] ), 
	.D(n110), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[5][6]  (.SI(\RAM[5][5] ), 
	.SE(n170), 
	.Q(\RAM[5][6] ), 
	.D(n109), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[5][5]  (.SI(\RAM[5][4] ), 
	.SE(n172), 
	.Q(\RAM[5][5] ), 
	.D(n108), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[5][4]  (.SI(\RAM[5][3] ), 
	.SE(n171), 
	.Q(\RAM[5][4] ), 
	.D(n107), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[5][3]  (.SI(\RAM[5][2] ), 
	.SE(n170), 
	.Q(\RAM[5][3] ), 
	.D(n106), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[5][2]  (.SI(\RAM[5][1] ), 
	.SE(n172), 
	.Q(\RAM[5][2] ), 
	.D(n105), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[5][1]  (.SI(\RAM[5][0] ), 
	.SE(n171), 
	.Q(\RAM[5][1] ), 
	.D(n104), 
	.CK(REF_CLK_M__L7_N15));
   SDFFQX2M \RAM_reg[5][0]  (.SI(\RAM[4][7] ), 
	.SE(n170), 
	.Q(\RAM[5][0] ), 
	.D(n103), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[3][7]  (.SI(\RAM[3][6] ), 
	.SE(n172), 
	.Q(\RAM[3][7] ), 
	.D(n126), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[3][6]  (.SI(\RAM[3][5] ), 
	.SE(n171), 
	.Q(\RAM[3][6] ), 
	.D(n125), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[3][5]  (.SI(\RAM[3][4] ), 
	.SE(n170), 
	.Q(\RAM[3][5] ), 
	.D(n124), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[3][4]  (.SI(\RAM[3][3] ), 
	.SE(n172), 
	.Q(\RAM[3][4] ), 
	.D(n123), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[3][3]  (.SI(\RAM[3][2] ), 
	.SE(n171), 
	.Q(\RAM[3][3] ), 
	.D(n122), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[3][2]  (.SI(\RAM[3][1] ), 
	.SE(n170), 
	.Q(\RAM[3][2] ), 
	.D(n121), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[3][1]  (.SI(\RAM[3][0] ), 
	.SE(n172), 
	.Q(\RAM[3][1] ), 
	.D(n120), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[3][0]  (.SI(\RAM[2][7] ), 
	.SE(n171), 
	.Q(\RAM[3][0] ), 
	.D(n119), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[7][7]  (.SI(\RAM[7][6] ), 
	.SE(n170), 
	.Q(\RAM[7][7] ), 
	.D(n94), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[7][6]  (.SI(\RAM[7][5] ), 
	.SE(n172), 
	.Q(\RAM[7][6] ), 
	.D(n93), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[7][5]  (.SI(\RAM[7][4] ), 
	.SE(n171), 
	.Q(\RAM[7][5] ), 
	.D(n92), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[7][4]  (.SI(\RAM[7][3] ), 
	.SE(n170), 
	.Q(\RAM[7][4] ), 
	.D(n91), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[7][3]  (.SI(\RAM[7][2] ), 
	.SE(n172), 
	.Q(\RAM[7][3] ), 
	.D(n90), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[7][2]  (.SI(\RAM[7][1] ), 
	.SE(n171), 
	.Q(\RAM[7][2] ), 
	.D(n89), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[7][1]  (.SI(\RAM[7][0] ), 
	.SE(n170), 
	.Q(\RAM[7][1] ), 
	.D(n88), 
	.CK(REF_CLK_M__L7_N15));
   SDFFQX2M \RAM_reg[7][0]  (.SI(\RAM[6][7] ), 
	.SE(n172), 
	.Q(\RAM[7][0] ), 
	.D(n87), 
	.CK(REF_CLK_M__L7_N15));
   SDFFQX2M \RAM_reg[2][7]  (.SI(\RAM[2][6] ), 
	.SE(n171), 
	.Q(\RAM[2][7] ), 
	.D(n134), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[2][6]  (.SI(\RAM[2][5] ), 
	.SE(n170), 
	.Q(\RAM[2][6] ), 
	.D(n133), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[2][5]  (.SI(\RAM[2][4] ), 
	.SE(n172), 
	.Q(\RAM[2][5] ), 
	.D(n132), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[2][4]  (.SI(\RAM[2][3] ), 
	.SE(n171), 
	.Q(\RAM[2][4] ), 
	.D(n131), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[2][3]  (.SI(\RAM[2][2] ), 
	.SE(n170), 
	.Q(\RAM[2][3] ), 
	.D(n130), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[2][2]  (.SI(\RAM[2][1] ), 
	.SE(n172), 
	.Q(\RAM[2][2] ), 
	.D(n129), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[2][1]  (.SI(\RAM[2][0] ), 
	.SE(n171), 
	.Q(\RAM[2][1] ), 
	.D(n128), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[2][0]  (.SI(\RAM[1][7] ), 
	.SE(n170), 
	.Q(\RAM[2][0] ), 
	.D(n127), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[6][7]  (.SI(test_si2), 
	.SE(n172), 
	.Q(\RAM[6][7] ), 
	.D(n102), 
	.CK(REF_CLK_M__L7_N15));
   SDFFQX2M \RAM_reg[6][6]  (.SI(\RAM[6][5] ), 
	.SE(n171), 
	.Q(\RAM[6][6] ), 
	.D(n101), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[6][5]  (.SI(\RAM[6][4] ), 
	.SE(n170), 
	.Q(\RAM[6][5] ), 
	.D(n100), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[6][4]  (.SI(\RAM[6][3] ), 
	.SE(n172), 
	.Q(\RAM[6][4] ), 
	.D(n99), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[6][3]  (.SI(\RAM[6][2] ), 
	.SE(n171), 
	.Q(\RAM[6][3] ), 
	.D(n98), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[6][2]  (.SI(\RAM[6][1] ), 
	.SE(n170), 
	.Q(\RAM[6][2] ), 
	.D(n97), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[6][1]  (.SI(\RAM[6][0] ), 
	.SE(n172), 
	.Q(\RAM[6][1] ), 
	.D(n96), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[6][0]  (.SI(\RAM[5][7] ), 
	.SE(n171), 
	.Q(\RAM[6][0] ), 
	.D(n95), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[0][7]  (.SI(\RAM[0][6] ), 
	.SE(n170), 
	.Q(\RAM[0][7] ), 
	.D(n150), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[0][6]  (.SI(\RAM[0][5] ), 
	.SE(n172), 
	.Q(\RAM[0][6] ), 
	.D(n149), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[0][5]  (.SI(\RAM[0][4] ), 
	.SE(n171), 
	.Q(\RAM[0][5] ), 
	.D(n148), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[0][4]  (.SI(\RAM[0][3] ), 
	.SE(n170), 
	.Q(\RAM[0][4] ), 
	.D(n147), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[0][3]  (.SI(\RAM[0][2] ), 
	.SE(n172), 
	.Q(\RAM[0][3] ), 
	.D(n146), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[0][2]  (.SI(\RAM[0][1] ), 
	.SE(n171), 
	.Q(\RAM[0][2] ), 
	.D(n145), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M \RAM_reg[0][1]  (.SI(\RAM[0][0] ), 
	.SE(n170), 
	.Q(\RAM[0][1] ), 
	.D(n144), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[0][0]  (.SI(test_si1), 
	.SE(n172), 
	.Q(\RAM[0][0] ), 
	.D(n143), 
	.CK(REF_CLK_M__L7_N14));
   SDFFQX2M \RAM_reg[4][7]  (.SI(\RAM[4][6] ), 
	.SE(n171), 
	.Q(\RAM[4][7] ), 
	.D(n118), 
	.CK(REF_CLK_M__L7_N9));
   SDFFQX2M \RAM_reg[4][6]  (.SI(\RAM[4][5] ), 
	.SE(n170), 
	.Q(\RAM[4][6] ), 
	.D(n117), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[4][5]  (.SI(\RAM[4][4] ), 
	.SE(n172), 
	.Q(\RAM[4][5] ), 
	.D(n116), 
	.CK(wclk));
   SDFFQX2M \RAM_reg[4][4]  (.SI(\RAM[4][3] ), 
	.SE(n171), 
	.Q(\RAM[4][4] ), 
	.D(n115), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[4][3]  (.SI(\RAM[4][2] ), 
	.SE(n170), 
	.Q(\RAM[4][3] ), 
	.D(n114), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[4][2]  (.SI(\RAM[4][1] ), 
	.SE(n172), 
	.Q(\RAM[4][2] ), 
	.D(n113), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[4][1]  (.SI(\RAM[4][0] ), 
	.SE(n171), 
	.Q(\RAM[4][1] ), 
	.D(n112), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M \RAM_reg[4][0]  (.SI(\RAM[3][7] ), 
	.SE(n170), 
	.Q(\RAM[4][0] ), 
	.D(n111), 
	.CK(REF_CLK_M__L7_N9));
   NOR2BX2M U67 (.Y(n82), 
	.B(waddr[2]), 
	.AN(n80));
   NAND3X2M U68 (.Y(n79), 
	.C(n76), 
	.B(n158), 
	.A(n157));
   NAND3X2M U69 (.Y(n85), 
	.C(n82), 
	.B(n158), 
	.A(n157));
   NAND3X2M U70 (.Y(n81), 
	.C(n82), 
	.B(waddr[0]), 
	.A(waddr[1]));
   NAND3X2M U71 (.Y(n83), 
	.C(n82), 
	.B(n157), 
	.A(waddr[1]));
   NAND3X2M U72 (.Y(n84), 
	.C(n82), 
	.B(n158), 
	.A(waddr[0]));
   NAND3X2M U73 (.Y(n77), 
	.C(waddr[1]), 
	.B(n157), 
	.A(n76));
   NAND3X2M U74 (.Y(n78), 
	.C(waddr[0]), 
	.B(n158), 
	.A(n76));
   NAND3X2M U75 (.Y(n75), 
	.C(waddr[1]), 
	.B(n76), 
	.A(waddr[0]));
   OAI2BB2X1M U76 (.Y(n87), 
	.B1(n166), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][0] ));
   OAI2BB2X1M U77 (.Y(n88), 
	.B1(n165), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][1] ));
   OAI2BB2X1M U78 (.Y(n89), 
	.B1(n164), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][2] ));
   OAI2BB2X1M U79 (.Y(n90), 
	.B1(n163), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][3] ));
   OAI2BB2X1M U80 (.Y(n91), 
	.B1(n162), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][4] ));
   OAI2BB2X1M U81 (.Y(n92), 
	.B1(n161), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][5] ));
   OAI2BB2X1M U82 (.Y(n93), 
	.B1(n160), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][6] ));
   OAI2BB2X1M U83 (.Y(n94), 
	.B1(n159), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\RAM[7][7] ));
   OAI2BB2X1M U84 (.Y(n119), 
	.B1(n81), 
	.B0(n166), 
	.A1N(n81), 
	.A0N(\RAM[3][0] ));
   OAI2BB2X1M U85 (.Y(n120), 
	.B1(n81), 
	.B0(n165), 
	.A1N(n81), 
	.A0N(\RAM[3][1] ));
   OAI2BB2X1M U86 (.Y(n121), 
	.B1(n81), 
	.B0(n164), 
	.A1N(n81), 
	.A0N(\RAM[3][2] ));
   OAI2BB2X1M U87 (.Y(n122), 
	.B1(n81), 
	.B0(n163), 
	.A1N(n81), 
	.A0N(\RAM[3][3] ));
   OAI2BB2X1M U88 (.Y(n123), 
	.B1(n81), 
	.B0(n162), 
	.A1N(n81), 
	.A0N(\RAM[3][4] ));
   OAI2BB2X1M U89 (.Y(n124), 
	.B1(n81), 
	.B0(n161), 
	.A1N(n81), 
	.A0N(\RAM[3][5] ));
   OAI2BB2X1M U90 (.Y(n125), 
	.B1(n81), 
	.B0(n160), 
	.A1N(n81), 
	.A0N(\RAM[3][6] ));
   OAI2BB2X1M U91 (.Y(n126), 
	.B1(n81), 
	.B0(n159), 
	.A1N(n81), 
	.A0N(\RAM[3][7] ));
   OAI2BB2X1M U92 (.Y(n127), 
	.B1(n83), 
	.B0(n166), 
	.A1N(n83), 
	.A0N(\RAM[2][0] ));
   OAI2BB2X1M U93 (.Y(n128), 
	.B1(n83), 
	.B0(n165), 
	.A1N(n83), 
	.A0N(\RAM[2][1] ));
   OAI2BB2X1M U94 (.Y(n129), 
	.B1(n83), 
	.B0(n164), 
	.A1N(n83), 
	.A0N(\RAM[2][2] ));
   OAI2BB2X1M U95 (.Y(n130), 
	.B1(n83), 
	.B0(n163), 
	.A1N(n83), 
	.A0N(\RAM[2][3] ));
   OAI2BB2X1M U96 (.Y(n131), 
	.B1(n83), 
	.B0(n162), 
	.A1N(n83), 
	.A0N(\RAM[2][4] ));
   OAI2BB2X1M U97 (.Y(n132), 
	.B1(n83), 
	.B0(n161), 
	.A1N(n83), 
	.A0N(\RAM[2][5] ));
   OAI2BB2X1M U98 (.Y(n133), 
	.B1(n83), 
	.B0(n160), 
	.A1N(n83), 
	.A0N(\RAM[2][6] ));
   OAI2BB2X1M U99 (.Y(n134), 
	.B1(n83), 
	.B0(n159), 
	.A1N(n83), 
	.A0N(\RAM[2][7] ));
   OAI2BB2X1M U100 (.Y(n135), 
	.B1(n84), 
	.B0(n166), 
	.A1N(n84), 
	.A0N(\RAM[1][0] ));
   OAI2BB2X1M U101 (.Y(n136), 
	.B1(n84), 
	.B0(n165), 
	.A1N(n84), 
	.A0N(\RAM[1][1] ));
   OAI2BB2X1M U102 (.Y(n137), 
	.B1(n84), 
	.B0(n164), 
	.A1N(n84), 
	.A0N(\RAM[1][2] ));
   OAI2BB2X1M U103 (.Y(n138), 
	.B1(n84), 
	.B0(n163), 
	.A1N(n84), 
	.A0N(\RAM[1][3] ));
   OAI2BB2X1M U104 (.Y(n139), 
	.B1(n84), 
	.B0(n162), 
	.A1N(n84), 
	.A0N(\RAM[1][4] ));
   OAI2BB2X1M U105 (.Y(n140), 
	.B1(n84), 
	.B0(n161), 
	.A1N(n84), 
	.A0N(\RAM[1][5] ));
   OAI2BB2X1M U106 (.Y(n141), 
	.B1(n84), 
	.B0(n160), 
	.A1N(n84), 
	.A0N(\RAM[1][6] ));
   OAI2BB2X1M U107 (.Y(n142), 
	.B1(n84), 
	.B0(n159), 
	.A1N(n84), 
	.A0N(\RAM[1][7] ));
   OAI2BB2X1M U108 (.Y(n143), 
	.B1(n85), 
	.B0(n166), 
	.A1N(n85), 
	.A0N(\RAM[0][0] ));
   OAI2BB2X1M U109 (.Y(n144), 
	.B1(n85), 
	.B0(n165), 
	.A1N(n85), 
	.A0N(\RAM[0][1] ));
   OAI2BB2X1M U110 (.Y(n145), 
	.B1(n85), 
	.B0(n164), 
	.A1N(n85), 
	.A0N(\RAM[0][2] ));
   OAI2BB2X1M U111 (.Y(n146), 
	.B1(n85), 
	.B0(n163), 
	.A1N(n85), 
	.A0N(\RAM[0][3] ));
   OAI2BB2X1M U112 (.Y(n147), 
	.B1(n85), 
	.B0(n162), 
	.A1N(n85), 
	.A0N(\RAM[0][4] ));
   OAI2BB2X1M U113 (.Y(n148), 
	.B1(n85), 
	.B0(n161), 
	.A1N(n85), 
	.A0N(\RAM[0][5] ));
   OAI2BB2X1M U114 (.Y(n149), 
	.B1(n85), 
	.B0(n160), 
	.A1N(n85), 
	.A0N(\RAM[0][6] ));
   OAI2BB2X1M U115 (.Y(n150), 
	.B1(n85), 
	.B0(n159), 
	.A1N(n85), 
	.A0N(\RAM[0][7] ));
   OAI2BB2X1M U116 (.Y(n95), 
	.B1(n77), 
	.B0(n166), 
	.A1N(n77), 
	.A0N(\RAM[6][0] ));
   OAI2BB2X1M U117 (.Y(n96), 
	.B1(n77), 
	.B0(n165), 
	.A1N(n77), 
	.A0N(\RAM[6][1] ));
   OAI2BB2X1M U118 (.Y(n97), 
	.B1(n77), 
	.B0(n164), 
	.A1N(n77), 
	.A0N(\RAM[6][2] ));
   OAI2BB2X1M U119 (.Y(n98), 
	.B1(n77), 
	.B0(n163), 
	.A1N(n77), 
	.A0N(\RAM[6][3] ));
   OAI2BB2X1M U120 (.Y(n99), 
	.B1(n77), 
	.B0(n162), 
	.A1N(n77), 
	.A0N(\RAM[6][4] ));
   OAI2BB2X1M U121 (.Y(n100), 
	.B1(n77), 
	.B0(n161), 
	.A1N(n77), 
	.A0N(\RAM[6][5] ));
   OAI2BB2X1M U122 (.Y(n101), 
	.B1(n77), 
	.B0(n160), 
	.A1N(n77), 
	.A0N(\RAM[6][6] ));
   OAI2BB2X1M U123 (.Y(n102), 
	.B1(n77), 
	.B0(n159), 
	.A1N(n77), 
	.A0N(\RAM[6][7] ));
   OAI2BB2X1M U124 (.Y(n103), 
	.B1(n78), 
	.B0(n166), 
	.A1N(n78), 
	.A0N(\RAM[5][0] ));
   OAI2BB2X1M U125 (.Y(n104), 
	.B1(n78), 
	.B0(n165), 
	.A1N(n78), 
	.A0N(\RAM[5][1] ));
   OAI2BB2X1M U126 (.Y(n105), 
	.B1(n78), 
	.B0(n164), 
	.A1N(n78), 
	.A0N(\RAM[5][2] ));
   OAI2BB2X1M U127 (.Y(n106), 
	.B1(n78), 
	.B0(n163), 
	.A1N(n78), 
	.A0N(\RAM[5][3] ));
   OAI2BB2X1M U128 (.Y(n107), 
	.B1(n78), 
	.B0(n162), 
	.A1N(n78), 
	.A0N(\RAM[5][4] ));
   OAI2BB2X1M U129 (.Y(n108), 
	.B1(n78), 
	.B0(n161), 
	.A1N(n78), 
	.A0N(\RAM[5][5] ));
   OAI2BB2X1M U130 (.Y(n109), 
	.B1(n78), 
	.B0(n160), 
	.A1N(n78), 
	.A0N(\RAM[5][6] ));
   OAI2BB2X1M U131 (.Y(n110), 
	.B1(n78), 
	.B0(n159), 
	.A1N(n78), 
	.A0N(\RAM[5][7] ));
   OAI2BB2X1M U132 (.Y(n111), 
	.B1(n79), 
	.B0(n166), 
	.A1N(n79), 
	.A0N(\RAM[4][0] ));
   OAI2BB2X1M U133 (.Y(n112), 
	.B1(n79), 
	.B0(n165), 
	.A1N(n79), 
	.A0N(\RAM[4][1] ));
   OAI2BB2X1M U134 (.Y(n113), 
	.B1(n79), 
	.B0(n164), 
	.A1N(n79), 
	.A0N(\RAM[4][2] ));
   OAI2BB2X1M U135 (.Y(n114), 
	.B1(n79), 
	.B0(n163), 
	.A1N(n79), 
	.A0N(\RAM[4][3] ));
   OAI2BB2X1M U136 (.Y(n115), 
	.B1(n79), 
	.B0(n162), 
	.A1N(n79), 
	.A0N(\RAM[4][4] ));
   OAI2BB2X1M U137 (.Y(n116), 
	.B1(n79), 
	.B0(n161), 
	.A1N(n79), 
	.A0N(\RAM[4][5] ));
   OAI2BB2X1M U138 (.Y(n117), 
	.B1(n79), 
	.B0(n160), 
	.A1N(n79), 
	.A0N(\RAM[4][6] ));
   OAI2BB2X1M U139 (.Y(n118), 
	.B1(n79), 
	.B0(n159), 
	.A1N(n79), 
	.A0N(\RAM[4][7] ));
   NOR2BX2M U140 (.Y(n80), 
	.B(wfull), 
	.AN(winc));
   AND2X2M U141 (.Y(n76), 
	.B(n80), 
	.A(waddr[2]));
   XNOR2X2M U142 (.Y(N10), 
	.B(raddr[1]), 
	.A(raddr[0]));
   INVX4M U143 (.Y(N9), 
	.A(raddr[0]));
   INVX2M U144 (.Y(n166), 
	.A(wdata[0]));
   INVX2M U145 (.Y(n165), 
	.A(wdata[1]));
   INVX2M U146 (.Y(n164), 
	.A(wdata[2]));
   INVX2M U147 (.Y(n163), 
	.A(wdata[3]));
   INVX2M U148 (.Y(n162), 
	.A(wdata[4]));
   INVX2M U149 (.Y(n161), 
	.A(wdata[5]));
   INVX2M U150 (.Y(n160), 
	.A(wdata[6]));
   INVX2M U151 (.Y(n159), 
	.A(wdata[7]));
   INVX2M U152 (.Y(n157), 
	.A(waddr[0]));
   INVX2M U153 (.Y(n158), 
	.A(waddr[1]));
   MX2X2M U154 (.Y(rdata[7]), 
	.S0(N11), 
	.B(n155), 
	.A(n156));
   MX4X1M U155 (.Y(n156), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][7] ), 
	.C(\RAM[2][7] ), 
	.B(\RAM[1][7] ), 
	.A(\RAM[0][7] ));
   MX4X1M U156 (.Y(n155), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][7] ), 
	.C(\RAM[6][7] ), 
	.B(\RAM[5][7] ), 
	.A(\RAM[4][7] ));
   CLKXOR2X2M U157 (.Y(N11), 
	.B(n86), 
	.A(raddr[2]));
   NOR2X2M U158 (.Y(n86), 
	.B(raddr[1]), 
	.A(raddr[0]));
   MX2X2M U159 (.Y(rdata[0]), 
	.S0(N11), 
	.B(n65), 
	.A(n66));
   MX4X1M U160 (.Y(n66), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][0] ), 
	.C(\RAM[2][0] ), 
	.B(\RAM[1][0] ), 
	.A(\RAM[0][0] ));
   MX4X1M U161 (.Y(n65), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][0] ), 
	.C(\RAM[6][0] ), 
	.B(\RAM[5][0] ), 
	.A(\RAM[4][0] ));
   MX2X2M U162 (.Y(rdata[1]), 
	.S0(N11), 
	.B(n67), 
	.A(n68));
   MX4X1M U163 (.Y(n68), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][1] ), 
	.C(\RAM[2][1] ), 
	.B(\RAM[1][1] ), 
	.A(\RAM[0][1] ));
   MX4X1M U164 (.Y(n67), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][1] ), 
	.C(\RAM[6][1] ), 
	.B(\RAM[5][1] ), 
	.A(\RAM[4][1] ));
   MX2X2M U165 (.Y(rdata[2]), 
	.S0(N11), 
	.B(n69), 
	.A(n70));
   MX4X1M U166 (.Y(n70), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][2] ), 
	.C(\RAM[2][2] ), 
	.B(\RAM[1][2] ), 
	.A(\RAM[0][2] ));
   MX4X1M U167 (.Y(n69), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][2] ), 
	.C(\RAM[6][2] ), 
	.B(\RAM[5][2] ), 
	.A(\RAM[4][2] ));
   MX2X2M U168 (.Y(rdata[3]), 
	.S0(N11), 
	.B(n71), 
	.A(n72));
   MX4X1M U169 (.Y(n72), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][3] ), 
	.C(\RAM[2][3] ), 
	.B(\RAM[1][3] ), 
	.A(\RAM[0][3] ));
   MX4X1M U170 (.Y(n71), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][3] ), 
	.C(\RAM[6][3] ), 
	.B(\RAM[5][3] ), 
	.A(\RAM[4][3] ));
   MX2X2M U171 (.Y(rdata[4]), 
	.S0(N11), 
	.B(n73), 
	.A(n74));
   MX4X1M U172 (.Y(n74), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][4] ), 
	.C(\RAM[2][4] ), 
	.B(\RAM[1][4] ), 
	.A(\RAM[0][4] ));
   MX4X1M U173 (.Y(n73), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][4] ), 
	.C(\RAM[6][4] ), 
	.B(\RAM[5][4] ), 
	.A(\RAM[4][4] ));
   MX2X2M U174 (.Y(rdata[5]), 
	.S0(N11), 
	.B(n151), 
	.A(n152));
   MX4X1M U175 (.Y(n152), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][5] ), 
	.C(\RAM[2][5] ), 
	.B(\RAM[1][5] ), 
	.A(\RAM[0][5] ));
   MX4X1M U176 (.Y(n151), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][5] ), 
	.C(\RAM[6][5] ), 
	.B(\RAM[5][5] ), 
	.A(\RAM[4][5] ));
   MX2X2M U177 (.Y(rdata[6]), 
	.S0(N11), 
	.B(n153), 
	.A(n154));
   MX4X1M U178 (.Y(n154), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[3][6] ), 
	.C(\RAM[2][6] ), 
	.B(\RAM[1][6] ), 
	.A(\RAM[0][6] ));
   MX4X1M U179 (.Y(n153), 
	.S1(FE_OFN3_N10), 
	.S0(N9), 
	.D(\RAM[7][6] ), 
	.C(\RAM[6][6] ), 
	.B(\RAM[5][6] ), 
	.A(\RAM[4][6] ));
   DLY1X4M U180 (.Y(n170), 
	.A(test_se));
   DLY1X4M U181 (.Y(n171), 
	.A(test_se));
   DLY1X4M U182 (.Y(n172), 
	.A(test_se));
endmodule

module ASYNC_FIFO_test_1 (
	wclk, 
	rclk, 
	wrst_n, 
	rrst_n, 
	rinc, 
	winc, 
	wdata, 
	wfull, 
	rempty, 
	rdata, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	REF_CLK_M__L7_N11, 
	REF_CLK_M__L7_N13, 
	REF_CLK_M__L7_N14, 
	REF_CLK_M__L7_N15, 
	REF_CLK_M__L7_N8, 
	REF_CLK_M__L7_N9);
   input wclk;
   input rclk;
   input wrst_n;
   input rrst_n;
   input rinc;
   input winc;
   input [7:0] wdata;
   output wfull;
   output rempty;
   output [7:0] rdata;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input REF_CLK_M__L7_N11;
   input REF_CLK_M__L7_N13;
   input REF_CLK_M__L7_N14;
   input REF_CLK_M__L7_N15;
   input REF_CLK_M__L7_N8;
   input REF_CLK_M__L7_N9;

   // Internal wires
   wire n5;
   wire [3:0] wq2_rptr;
   wire [3:0] wptr;
   wire [2:0] waddr;
   wire [3:0] rptr;
   wire [3:0] rq2_wptr;
   wire [2:0] raddr;

   assign test_so2 = wq2_rptr[3] ;

   FIFO_WR_test_1 link_FIFO_Write (.wclk(REF_CLK_M__L7_N14), 
	.wrst_n(wrst_n), 
	.winc(winc), 
	.wq2_rptr({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.wptr({ wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.wfull(wfull), 
	.test_si(rptr[3]), 
	.test_se(test_se), 
	.REF_CLK_M__L7_N15(REF_CLK_M__L7_N15));
   DF_SYNC_test_1 link_synchronizer_write (.clk(REF_CLK_M__L7_N13), 
	.rst_n(wrst_n), 
	.ptr({ rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.q2_ptr({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(rq2_wptr[3]), 
	.test_se(test_se), 
	.REF_CLK_M__L7_N14(REF_CLK_M__L7_N14));
   FIFO_RD_test_1 link_FIFO_Read (.rclk(rclk), 
	.rrst_n(rrst_n), 
	.rinc(rinc), 
	.rq2_wptr({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.rempty(rempty), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.rptr({ rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.test_si(test_si1), 
	.test_se(test_se));
   DF_SYNC_test_0 link_synchronizer_read (.clk(rclk), 
	.rst_n(rrst_n), 
	.ptr({ wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.q2_ptr({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(n5), 
	.test_se(test_se));
   FIFO_MEM_CNTRL_test_1 link_Memory (.wclk(wclk), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.wdata({ wdata[7],
		wdata[6],
		wdata[5],
		wdata[4],
		wdata[3],
		wdata[2],
		wdata[1],
		wdata[0] }), 
	.winc(winc), 
	.wfull(wfull), 
	.rdata({ rdata[7],
		rdata[6],
		rdata[5],
		rdata[4],
		rdata[3],
		rdata[2],
		rdata[1],
		rdata[0] }), 
	.test_si2(test_si2), 
	.test_si1(wptr[3]), 
	.test_so2(n5), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.REF_CLK_M__L7_N11(REF_CLK_M__L7_N11), 
	.REF_CLK_M__L7_N14(REF_CLK_M__L7_N14), 
	.REF_CLK_M__L7_N15(REF_CLK_M__L7_N15), 
	.REF_CLK_M__L7_N8(REF_CLK_M__L7_N8), 
	.REF_CLK_M__L7_N9(REF_CLK_M__L7_N9));
endmodule

module DATA_SYNC_test_1 (
	unsync_bus, 
	bus_enable, 
	CLK, 
	RST, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_se, 
	REF_CLK_M__L7_N13);
   input [7:0] unsync_bus;
   input bus_enable;
   input CLK;
   input RST;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   input test_se;
   input REF_CLK_M__L7_N13;

   // Internal wires
   wire Pulse_Gen;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire [0:1] ff;

   SDFFRQX2M Pulse_Gen_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Pulse_Gen), 
	.D(ff[1]), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \ff_reg[1]  (.SI(ff[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ff[1]), 
	.D(ff[0]), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(ff[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_reg (.SI(Pulse_Gen), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n22), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(REF_CLK_M__L7_N13));
   SDFFRQX2M \ff_reg[0]  (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ff[0]), 
	.D(bus_enable), 
	.CK(REF_CLK_M__L7_N13));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(ff[1]), 
	.AN(Pulse_Gen));
   AO22X1M U5 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
   AO22X1M U6 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U7 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U8 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U9 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U10 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U12 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
endmodule

