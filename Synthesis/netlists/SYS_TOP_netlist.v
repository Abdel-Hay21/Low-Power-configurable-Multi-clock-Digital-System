/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Sep 29 00:28:42 2025
/////////////////////////////////////////////////////////////


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst_n), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  DFFRQX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  DFFRQX2M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U5 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n6) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n25) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n24) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n23) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n22) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n21) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n20) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n19) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n18) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n17) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFRQX2M div_clk_reg ( .D(n50), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n51), .CK(i_ref_clk), .SN(i_rst_n), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  DFFRQX2M \count_reg[6]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  DFFRQX2M \count_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  OR2X2M U3 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U4 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  NAND2BX2M U5 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n6) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n43) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n44) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n45) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n46) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n47) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n48) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n49) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n50) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n51) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
endmodule


module Mux_Prescale ( Prescale, clk_div );
  input [5:0] Prescale;
  output [7:0] clk_div;
  wire   n1, n2, n3;

  INVX2M U3 ( .A(1'b1), .Y(clk_div[3]) );
  INVX2M U5 ( .A(1'b1), .Y(clk_div[4]) );
  INVX2M U7 ( .A(1'b1), .Y(clk_div[5]) );
  INVX2M U9 ( .A(1'b1), .Y(clk_div[6]) );
  INVX2M U11 ( .A(1'b1), .Y(clk_div[7]) );
  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(clk_div[0]) );
  AND2X2M U14 ( .A(n2), .B(n3), .Y(clk_div[1]) );
  AND2X2M U15 ( .A(n1), .B(n2), .Y(clk_div[2]) );
  NOR3BX2M U16 ( .AN(Prescale[4]), .B(Prescale[3]), .C(Prescale[5]), .Y(n3) );
  NOR3BX2M U17 ( .AN(Prescale[3]), .B(Prescale[4]), .C(Prescale[5]), .Y(n1) );
  NOR3X2M U18 ( .A(Prescale[2]), .B(Prescale[1]), .C(Prescale[0]), .Y(n2) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \ff[0] ;

  DFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \ff_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\ff[0] ) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \ff[0] ;

  DFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \ff_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\ff[0] ) );
endmodule


module CLK_GATE ( CLK, CLK_EN, GATED_CLK );
  input CLK, CLK_EN;
  output GATED_CLK;
  wire   latch_out;

  TLATNX2M latch_out_reg ( .D(CLK_EN), .GN(CLK), .Q(latch_out) );
  AND2X2M U2 ( .A(latch_out), .B(CLK), .Y(GATED_CLK) );
endmodule


module SYS_CTRL ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, RdData_Valid, 
        CLK_EN, ALU_FUN, EN, ALU_OUT, OUT_Valid, TX_D_VLD, TX_P_DATA, 
        FIFO_FULL, RX_P_DATA, RX_D_VLD );
  output [3:0] Address;
  output [7:0] WrData;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  input [15:0] ALU_OUT;
  output [7:0] TX_P_DATA;
  input [7:0] RX_P_DATA;
  input CLK, RST, RdData_Valid, OUT_Valid, FIFO_FULL, RX_D_VLD;
  output WrEn, RdEn, CLK_EN, EN, TX_D_VLD;
  wire   N99, n1, n2, n3, n6, n7, n10, n13, n14, n15, n16, n17, n22, n23, n24,
         n25, n26, n27, n29, n30, n32, n33, n35, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n61, n62, n64, n65, n66, n69, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n4, n5, n8, n9, n11, n12, n18,
         n19, n20, n21, n28, n31, n34, n36, n60, n63, n67, n68, n70, n109,
         n110, n111, n112, n113, n114;
  wire   [2:0] state;

  DFFRQX2M \WrData_reg[4]  ( .D(n101), .CK(CLK), .RN(n8), .Q(WrData[4]) );
  DFFRQX2M ALU_Part1_Done_reg ( .D(n92), .CK(CLK), .RN(n9), .Q(N99) );
  DFFRQX2M \Address_reg[1]  ( .D(n106), .CK(CLK), .RN(n8), .Q(Address[1]) );
  DFFRQX2M EN_reg ( .D(n90), .CK(CLK), .RN(n9), .Q(EN) );
  DFFRQX2M \TX_P_DATA_reg[7]  ( .D(n81), .CK(CLK), .RN(n9), .Q(TX_P_DATA[7])
         );
  DFFRQX2M \TX_P_DATA_reg[6]  ( .D(n82), .CK(CLK), .RN(n9), .Q(TX_P_DATA[6])
         );
  DFFRQX2M \TX_P_DATA_reg[5]  ( .D(n83), .CK(CLK), .RN(n9), .Q(TX_P_DATA[5])
         );
  DFFRQX2M \TX_P_DATA_reg[4]  ( .D(n84), .CK(CLK), .RN(RST), .Q(TX_P_DATA[4])
         );
  DFFRQX2M \TX_P_DATA_reg[3]  ( .D(n85), .CK(CLK), .RN(RST), .Q(TX_P_DATA[3])
         );
  DFFRQX2M \TX_P_DATA_reg[2]  ( .D(n86), .CK(CLK), .RN(RST), .Q(TX_P_DATA[2])
         );
  DFFRQX2M \TX_P_DATA_reg[1]  ( .D(n87), .CK(CLK), .RN(RST), .Q(TX_P_DATA[1])
         );
  DFFRQX2M \TX_P_DATA_reg[0]  ( .D(n88), .CK(CLK), .RN(RST), .Q(TX_P_DATA[0])
         );
  DFFRQX2M RdEn_reg ( .D(n77), .CK(CLK), .RN(n8), .Q(RdEn) );
  DFFRQX2M WrEn_reg ( .D(n76), .CK(CLK), .RN(RST), .Q(WrEn) );
  DFFRQX2M \WrData_reg[7]  ( .D(n104), .CK(CLK), .RN(n8), .Q(WrData[7]) );
  DFFRQX2M \WrData_reg[6]  ( .D(n103), .CK(CLK), .RN(n8), .Q(WrData[6]) );
  DFFRQX2M \WrData_reg[5]  ( .D(n102), .CK(CLK), .RN(n8), .Q(WrData[5]) );
  DFFRQX2M \WrData_reg[3]  ( .D(n100), .CK(CLK), .RN(n8), .Q(WrData[3]) );
  DFFRQX2M \WrData_reg[2]  ( .D(n99), .CK(CLK), .RN(n9), .Q(WrData[2]) );
  DFFRQX2M \WrData_reg[1]  ( .D(n98), .CK(CLK), .RN(n9), .Q(WrData[1]) );
  DFFRQX2M \WrData_reg[0]  ( .D(n97), .CK(CLK), .RN(n9), .Q(WrData[0]) );
  DFFRQX2M TX_D_VLD_reg ( .D(n89), .CK(CLK), .RN(RST), .Q(TX_D_VLD) );
  DFFRQX2M \Address_reg[2]  ( .D(n107), .CK(CLK), .RN(n8), .Q(Address[2]) );
  DFFRQX2M \Address_reg[3]  ( .D(n108), .CK(CLK), .RN(n8), .Q(Address[3]) );
  DFFRQX2M \Address_reg[0]  ( .D(n105), .CK(CLK), .RN(n8), .Q(Address[0]) );
  DFFRQX2M \state_reg[1]  ( .D(n78), .CK(CLK), .RN(n8), .Q(state[1]) );
  DFFRQX2M \ALU_FUN_reg[3]  ( .D(n96), .CK(CLK), .RN(n9), .Q(ALU_FUN[3]) );
  DFFRQX2M \state_reg[0]  ( .D(n80), .CK(CLK), .RN(n8), .Q(state[0]) );
  DFFRQX2M \ALU_FUN_reg[1]  ( .D(n94), .CK(CLK), .RN(n9), .Q(ALU_FUN[1]) );
  DFFRQX2M \state_reg[2]  ( .D(n79), .CK(CLK), .RN(n8), .Q(state[2]) );
  DFFRQX2M \ALU_FUN_reg[0]  ( .D(n93), .CK(CLK), .RN(n9), .Q(ALU_FUN[0]) );
  DFFRQX2M \ALU_FUN_reg[2]  ( .D(n95), .CK(CLK), .RN(n9), .Q(ALU_FUN[2]) );
  DFFRQX2M CLK_EN_reg ( .D(n91), .CK(CLK), .RN(n9), .Q(CLK_EN) );
  INVX2M U3 ( .A(n11), .Y(n9) );
  INVX2M U4 ( .A(FIFO_FULL), .Y(n28) );
  INVX2M U5 ( .A(n40), .Y(n21) );
  INVX2M U6 ( .A(n26), .Y(n70) );
  INVX2M U7 ( .A(n66), .Y(n20) );
  BUFX2M U8 ( .A(n12), .Y(n11) );
  INVX2M U9 ( .A(n12), .Y(n8) );
  NOR2X2M U10 ( .A(n65), .B(n58), .Y(n40) );
  NOR2X2M U11 ( .A(n6), .B(n5), .Y(n39) );
  NOR2X2M U12 ( .A(n114), .B(n58), .Y(n41) );
  INVX2M U13 ( .A(n13), .Y(n18) );
  NAND3X2M U14 ( .A(n21), .B(n61), .C(n69), .Y(n66) );
  NAND2BX2M U15 ( .AN(n72), .B(n75), .Y(n74) );
  OAI21X2M U16 ( .A0(n110), .A1(n114), .B0(n21), .Y(n92) );
  INVX2M U17 ( .A(n58), .Y(n110) );
  NAND2X2M U18 ( .A(n70), .B(n111), .Y(n61) );
  NAND2X2M U19 ( .A(n109), .B(n113), .Y(n26) );
  NAND3X2M U20 ( .A(n65), .B(n66), .C(n110), .Y(n64) );
  INVX2M U21 ( .A(n24), .Y(n112) );
  INVX2M U22 ( .A(RST), .Y(n12) );
  OAI22X1M U23 ( .A0(n32), .A1(n113), .B0(n33), .B1(n68), .Y(n13) );
  AOI21X2M U24 ( .A0(n109), .A1(n111), .B0(n113), .Y(n33) );
  AOI31X2M U25 ( .A0(state[0]), .A1(n28), .A2(RdData_Valid), .B0(n35), .Y(n32)
         );
  AOI21X2M U26 ( .A0(n109), .A1(n114), .B0(n111), .Y(n35) );
  OAI32X1M U27 ( .A0(n26), .A1(n18), .A2(n27), .B0(n109), .B1(n13), .Y(n80) );
  AOI31X2M U28 ( .A0(n29), .A1(n25), .A2(n30), .B0(state[2]), .Y(n27) );
  NOR2X2M U29 ( .A(n34), .B(n17), .Y(n29) );
  NOR3X2M U30 ( .A(n63), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n30) );
  OAI32X1M U31 ( .A0(n10), .A1(state[1]), .A2(n18), .B0(n113), .B1(n13), .Y(
        n78) );
  AOI31X2M U32 ( .A0(RX_P_DATA[4]), .A1(RX_P_DATA[0]), .A2(n14), .B0(state[0]), 
        .Y(n10) );
  AOI211X2M U33 ( .A0(n15), .A1(n16), .B0(n17), .C0(state[2]), .Y(n14) );
  NAND4X2M U34 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n60), .D(n31), .Y(n15)
         );
  OAI221X1M U35 ( .A0(n22), .A1(n23), .B0(n111), .B1(n13), .C0(n24), .Y(n79)
         );
  NAND4BX1M U36 ( .AN(n17), .B(n25), .C(RX_P_DATA[6]), .D(RX_P_DATA[2]), .Y(
        n23) );
  NAND4X2M U37 ( .A(n70), .B(n13), .C(n63), .D(n34), .Y(n22) );
  NOR2X2M U38 ( .A(n113), .B(state[0]), .Y(n3) );
  NAND2X2M U39 ( .A(n3), .B(state[2]), .Y(n58) );
  OAI211X2M U40 ( .A0(n57), .A1(n58), .B0(n59), .C0(n19), .Y(n89) );
  NAND2X2M U41 ( .A(TX_D_VLD), .B(n57), .Y(n59) );
  INVX2M U42 ( .A(n39), .Y(n19) );
  AND2X2M U43 ( .A(n5), .B(n61), .Y(n57) );
  INVX2M U44 ( .A(state[2]), .Y(n111) );
  NAND3X2M U45 ( .A(n28), .B(n114), .C(OUT_Valid), .Y(n65) );
  INVX2M U46 ( .A(state[1]), .Y(n113) );
  NAND3X2M U47 ( .A(state[1]), .B(n111), .C(state[0]), .Y(n6) );
  NAND2X2M U48 ( .A(n55), .B(n56), .Y(n88) );
  AOI22X1M U49 ( .A0(ALU_OUT[8]), .A1(n41), .B0(TX_P_DATA[0]), .B1(n5), .Y(n55) );
  AOI22X1M U50 ( .A0(RdData[0]), .A1(n39), .B0(ALU_OUT[0]), .B1(n40), .Y(n56)
         );
  NAND2X2M U51 ( .A(n53), .B(n54), .Y(n87) );
  AOI22X1M U52 ( .A0(ALU_OUT[9]), .A1(n41), .B0(TX_P_DATA[1]), .B1(n5), .Y(n53) );
  AOI22X1M U53 ( .A0(RdData[1]), .A1(n39), .B0(ALU_OUT[1]), .B1(n40), .Y(n54)
         );
  NAND2X2M U54 ( .A(n51), .B(n52), .Y(n86) );
  AOI22X1M U55 ( .A0(ALU_OUT[10]), .A1(n41), .B0(TX_P_DATA[2]), .B1(n5), .Y(
        n51) );
  AOI22X1M U56 ( .A0(RdData[2]), .A1(n39), .B0(ALU_OUT[2]), .B1(n40), .Y(n52)
         );
  NAND2X2M U57 ( .A(n49), .B(n50), .Y(n85) );
  AOI22X1M U58 ( .A0(ALU_OUT[11]), .A1(n41), .B0(TX_P_DATA[3]), .B1(n5), .Y(
        n49) );
  AOI22X1M U59 ( .A0(RdData[3]), .A1(n39), .B0(ALU_OUT[3]), .B1(n40), .Y(n50)
         );
  NAND2X2M U60 ( .A(n47), .B(n48), .Y(n84) );
  AOI22X1M U61 ( .A0(ALU_OUT[12]), .A1(n41), .B0(TX_P_DATA[4]), .B1(n5), .Y(
        n47) );
  AOI22X1M U62 ( .A0(RdData[4]), .A1(n39), .B0(ALU_OUT[4]), .B1(n40), .Y(n48)
         );
  NAND2X2M U63 ( .A(n45), .B(n46), .Y(n83) );
  AOI22X1M U64 ( .A0(ALU_OUT[13]), .A1(n41), .B0(TX_P_DATA[5]), .B1(n5), .Y(
        n45) );
  AOI22X1M U65 ( .A0(RdData[5]), .A1(n39), .B0(ALU_OUT[5]), .B1(n40), .Y(n46)
         );
  NAND2X2M U66 ( .A(n43), .B(n44), .Y(n82) );
  AOI22X1M U67 ( .A0(ALU_OUT[14]), .A1(n41), .B0(TX_P_DATA[6]), .B1(n5), .Y(
        n43) );
  AOI22X1M U68 ( .A0(RdData[6]), .A1(n39), .B0(ALU_OUT[6]), .B1(n40), .Y(n44)
         );
  NAND2X2M U69 ( .A(n37), .B(n38), .Y(n81) );
  AOI22X1M U70 ( .A0(ALU_OUT[15]), .A1(n41), .B0(TX_P_DATA[7]), .B1(n5), .Y(
        n37) );
  AOI22X1M U71 ( .A0(RdData[7]), .A1(n39), .B0(ALU_OUT[7]), .B1(n40), .Y(n38)
         );
  BUFX2M U72 ( .A(n42), .Y(n5) );
  NOR3BX2M U73 ( .AN(n62), .B(n40), .C(n41), .Y(n42) );
  NAND3BX2M U74 ( .AN(n6), .B(n28), .C(RdData_Valid), .Y(n62) );
  OAI21X2M U75 ( .A0(n112), .A1(n75), .B0(RX_D_VLD), .Y(n72) );
  AOI2BB2XLM U76 ( .B0(n7), .B1(n70), .A0N(n7), .A1N(n68), .Y(n1) );
  AOI211X2M U77 ( .A0(n111), .A1(state[1]), .B0(n3), .C0(n112), .Y(n7) );
  NAND2X2M U78 ( .A(n110), .B(RX_D_VLD), .Y(n69) );
  NOR2X2M U79 ( .A(n109), .B(state[2]), .Y(n75) );
  OAI2BB2X1M U80 ( .B0(n1), .B1(n2), .A0N(WrEn), .A1N(n1), .Y(n76) );
  AOI21X2M U81 ( .A0(n3), .A1(n111), .B0(n112), .Y(n2) );
  OAI2BB2X1M U82 ( .B0(n67), .B1(n4), .A0N(WrData[0]), .A1N(n4), .Y(n97) );
  OAI2BB2X1M U83 ( .B0(n63), .B1(n4), .A0N(WrData[1]), .A1N(n4), .Y(n98) );
  OAI2BB2X1M U84 ( .B0(n60), .B1(n4), .A0N(WrData[2]), .A1N(n4), .Y(n99) );
  OAI2BB2X1M U85 ( .B0(n36), .B1(n4), .A0N(WrData[3]), .A1N(n4), .Y(n100) );
  OAI2BB2X1M U86 ( .B0(n34), .B1(n4), .A0N(WrData[5]), .A1N(n4), .Y(n102) );
  OAI2BB2X1M U87 ( .B0(n31), .B1(n4), .A0N(WrData[6]), .A1N(n4), .Y(n103) );
  OAI2BB2X1M U88 ( .B0(n63), .B1(n74), .A0N(Address[1]), .A1N(n72), .Y(n106)
         );
  OAI2BB2X1M U89 ( .B0(n60), .B1(n74), .A0N(Address[2]), .A1N(n72), .Y(n107)
         );
  OAI2BB2X1M U90 ( .B0(n36), .B1(n74), .A0N(Address[3]), .A1N(n72), .Y(n108)
         );
  OAI2BB2X1M U91 ( .B0(n67), .B1(n69), .A0N(ALU_FUN[0]), .A1N(n69), .Y(n93) );
  OAI2BB2X1M U92 ( .B0(n63), .B1(n69), .A0N(ALU_FUN[1]), .A1N(n69), .Y(n94) );
  OAI2BB2X1M U93 ( .B0(n60), .B1(n69), .A0N(ALU_FUN[2]), .A1N(n69), .Y(n95) );
  OAI2BB2X1M U94 ( .B0(n36), .B1(n69), .A0N(ALU_FUN[3]), .A1N(n69), .Y(n96) );
  OAI2BB2X1M U95 ( .B0(n1), .B1(n6), .A0N(RdEn), .A1N(n1), .Y(n77) );
  NAND2X2M U96 ( .A(state[2]), .B(n113), .Y(n24) );
  INVX2M U97 ( .A(RX_P_DATA[1]), .Y(n63) );
  INVX2M U98 ( .A(state[0]), .Y(n109) );
  NAND4X2M U99 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n63), .D(n34), .Y(n16)
         );
  BUFX2M U100 ( .A(n71), .Y(n4) );
  OAI221X1M U101 ( .A0(state[2]), .A1(n3), .B0(n111), .B1(n113), .C0(RX_D_VLD), 
        .Y(n71) );
  INVX2M U102 ( .A(RX_P_DATA[2]), .Y(n60) );
  INVX2M U103 ( .A(RX_P_DATA[5]), .Y(n34) );
  NAND2X2M U104 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .Y(n17) );
  INVX2M U105 ( .A(N99), .Y(n114) );
  INVX2M U106 ( .A(RX_P_DATA[6]), .Y(n31) );
  INVX2M U107 ( .A(RX_P_DATA[0]), .Y(n67) );
  INVX2M U108 ( .A(RX_D_VLD), .Y(n68) );
  OAI2BB1X2M U109 ( .A0N(CLK_EN), .A1N(n20), .B0(n64), .Y(n91) );
  OAI2BB1X2M U110 ( .A0N(EN), .A1N(n20), .B0(n64), .Y(n90) );
  AO2B2X2M U111 ( .B0(WrData[4]), .B1(n4), .A0(RX_P_DATA[4]), .A1N(n4), .Y(
        n101) );
  AO2B2X2M U112 ( .B0(WrData[7]), .B1(n4), .A0(RX_P_DATA[7]), .A1N(n4), .Y(
        n104) );
  CLKXOR2X2M U113 ( .A(RX_P_DATA[4]), .B(n67), .Y(n25) );
  AO21XLM U114 ( .A0(Address[0]), .A1(n72), .B0(n73), .Y(n105) );
  OAI32X1M U115 ( .A0(n72), .A1(n109), .A2(n24), .B0(n74), .B1(n67), .Y(n73)
         );
  INVX2M U116 ( .A(RX_P_DATA[3]), .Y(n36) );
endmodule


module Register_file_8_16 ( WrEn, RdEn, CLK, RST, WrData, Address, REG0, REG1, 
        REG2, REG3, RdData, RdData_Valid );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  output [7:0] RdData;
  input WrEn, RdEn, CLK, RST;
  output RdData_Valid;
  wire   N10, N11, N12, N13, \Reg_File[4][7] , \Reg_File[4][6] ,
         \Reg_File[4][5] , \Reg_File[4][4] , \Reg_File[4][3] ,
         \Reg_File[4][2] , \Reg_File[4][1] , \Reg_File[4][0] ,
         \Reg_File[5][7] , \Reg_File[5][6] , \Reg_File[5][5] ,
         \Reg_File[5][4] , \Reg_File[5][3] , \Reg_File[5][2] ,
         \Reg_File[5][1] , \Reg_File[5][0] , \Reg_File[6][7] ,
         \Reg_File[6][6] , \Reg_File[6][5] , \Reg_File[6][4] ,
         \Reg_File[6][3] , \Reg_File[6][2] , \Reg_File[6][1] ,
         \Reg_File[6][0] , \Reg_File[7][7] , \Reg_File[7][6] ,
         \Reg_File[7][5] , \Reg_File[7][4] , \Reg_File[7][3] ,
         \Reg_File[7][2] , \Reg_File[7][1] , \Reg_File[7][0] ,
         \Reg_File[8][7] , \Reg_File[8][6] , \Reg_File[8][5] ,
         \Reg_File[8][4] , \Reg_File[8][3] , \Reg_File[8][2] ,
         \Reg_File[8][1] , \Reg_File[8][0] , \Reg_File[9][7] ,
         \Reg_File[9][6] , \Reg_File[9][5] , \Reg_File[9][4] ,
         \Reg_File[9][3] , \Reg_File[9][2] , \Reg_File[9][1] ,
         \Reg_File[9][0] , \Reg_File[10][7] , \Reg_File[10][6] ,
         \Reg_File[10][5] , \Reg_File[10][4] , \Reg_File[10][3] ,
         \Reg_File[10][2] , \Reg_File[10][1] , \Reg_File[10][0] ,
         \Reg_File[11][7] , \Reg_File[11][6] , \Reg_File[11][5] ,
         \Reg_File[11][4] , \Reg_File[11][3] , \Reg_File[11][2] ,
         \Reg_File[11][1] , \Reg_File[11][0] , \Reg_File[12][7] ,
         \Reg_File[12][6] , \Reg_File[12][5] , \Reg_File[12][4] ,
         \Reg_File[12][3] , \Reg_File[12][2] , \Reg_File[12][1] ,
         \Reg_File[12][0] , \Reg_File[13][7] , \Reg_File[13][6] ,
         \Reg_File[13][5] , \Reg_File[13][4] , \Reg_File[13][3] ,
         \Reg_File[13][2] , \Reg_File[13][1] , \Reg_File[13][0] ,
         \Reg_File[14][7] , \Reg_File[14][6] , \Reg_File[14][5] ,
         \Reg_File[14][4] , \Reg_File[14][3] , \Reg_File[14][2] ,
         \Reg_File[14][1] , \Reg_File[14][0] , \Reg_File[15][7] ,
         \Reg_File[15][6] , \Reg_File[15][5] , \Reg_File[15][4] ,
         \Reg_File[15][3] , \Reg_File[15][2] , \Reg_File[15][1] ,
         \Reg_File[15][0] , N35, N36, N37, N38, N39, N40, N41, N42, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n40, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  EDFFHQX2M \RdData_reg[7]  ( .D(N35), .E(n1), .CK(CLK), .Q(RdData[7]) );
  EDFFHQX2M \RdData_reg[6]  ( .D(N36), .E(n1), .CK(CLK), .Q(RdData[6]) );
  EDFFHQX2M \RdData_reg[5]  ( .D(N37), .E(n1), .CK(CLK), .Q(RdData[5]) );
  EDFFHQX2M \RdData_reg[4]  ( .D(N38), .E(n1), .CK(CLK), .Q(RdData[4]) );
  EDFFHQX2M \RdData_reg[3]  ( .D(N39), .E(n1), .CK(CLK), .Q(RdData[3]) );
  EDFFHQX2M \RdData_reg[2]  ( .D(N40), .E(n1), .CK(CLK), .Q(RdData[2]) );
  EDFFHQX2M \RdData_reg[1]  ( .D(N41), .E(n1), .CK(CLK), .Q(RdData[1]) );
  EDFFHQX2M \RdData_reg[0]  ( .D(N42), .E(n1), .CK(CLK), .Q(RdData[0]) );
  DFFQX2M \Reg_File_reg[15][7]  ( .D(n48), .CK(CLK), .Q(\Reg_File[15][7] ) );
  DFFQX2M \Reg_File_reg[15][6]  ( .D(n47), .CK(CLK), .Q(\Reg_File[15][6] ) );
  DFFQX2M \Reg_File_reg[15][5]  ( .D(n46), .CK(CLK), .Q(\Reg_File[15][5] ) );
  DFFQX2M \Reg_File_reg[15][4]  ( .D(n45), .CK(CLK), .Q(\Reg_File[15][4] ) );
  DFFQX2M \Reg_File_reg[15][3]  ( .D(n44), .CK(CLK), .Q(\Reg_File[15][3] ) );
  DFFQX2M \Reg_File_reg[15][2]  ( .D(n43), .CK(CLK), .Q(\Reg_File[15][2] ) );
  DFFQX2M \Reg_File_reg[15][1]  ( .D(n42), .CK(CLK), .Q(\Reg_File[15][1] ) );
  DFFQX2M \Reg_File_reg[15][0]  ( .D(n41), .CK(CLK), .Q(\Reg_File[15][0] ) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n128), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n127), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n126), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n125), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n124), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n123), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n122), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n121), .CK(CLK), .RN(n198), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[9][7]  ( .D(n96), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][7] ) );
  DFFRQX2M \Reg_File_reg[9][6]  ( .D(n95), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][6] ) );
  DFFRQX2M \Reg_File_reg[9][5]  ( .D(n94), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][5] ) );
  DFFRQX2M \Reg_File_reg[9][4]  ( .D(n93), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][4] ) );
  DFFRQX2M \Reg_File_reg[9][3]  ( .D(n92), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][3] ) );
  DFFRQX2M \Reg_File_reg[9][2]  ( .D(n91), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][2] ) );
  DFFRQX2M \Reg_File_reg[9][1]  ( .D(n90), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][1] ) );
  DFFRQX2M \Reg_File_reg[9][0]  ( .D(n89), .CK(CLK), .RN(n197), .Q(
        \Reg_File[9][0] ) );
  DFFRQX2M \Reg_File_reg[13][7]  ( .D(n64), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][7] ) );
  DFFRQX2M \Reg_File_reg[13][6]  ( .D(n63), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][6] ) );
  DFFRQX2M \Reg_File_reg[13][5]  ( .D(n62), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][5] ) );
  DFFRQX2M \Reg_File_reg[13][4]  ( .D(n61), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][4] ) );
  DFFRQX2M \Reg_File_reg[13][3]  ( .D(n60), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][3] ) );
  DFFRQX2M \Reg_File_reg[13][2]  ( .D(n59), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][2] ) );
  DFFRQX2M \Reg_File_reg[13][1]  ( .D(n58), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][1] ) );
  DFFRQX2M \Reg_File_reg[13][0]  ( .D(n57), .CK(CLK), .RN(n197), .Q(
        \Reg_File[13][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n197), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[11][7]  ( .D(n80), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][7] ) );
  DFFRQX2M \Reg_File_reg[11][6]  ( .D(n79), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][6] ) );
  DFFRQX2M \Reg_File_reg[11][5]  ( .D(n78), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][5] ) );
  DFFRQX2M \Reg_File_reg[11][4]  ( .D(n77), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][4] ) );
  DFFRQX2M \Reg_File_reg[11][3]  ( .D(n76), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][3] ) );
  DFFRQX2M \Reg_File_reg[11][2]  ( .D(n75), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][2] ) );
  DFFRQX2M \Reg_File_reg[11][1]  ( .D(n74), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][1] ) );
  DFFRQX2M \Reg_File_reg[11][0]  ( .D(n73), .CK(CLK), .RN(n197), .Q(
        \Reg_File[11][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n120), .CK(CLK), .RN(n198), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n119), .CK(CLK), .RN(n197), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n118), .CK(CLK), .RN(n197), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n117), .CK(CLK), .RN(n197), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n116), .CK(CLK), .RN(n197), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n115), .CK(CLK), .RN(n197), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n114), .CK(CLK), .RN(n197), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n113), .CK(CLK), .RN(n197), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[10][7]  ( .D(n88), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][7] ) );
  DFFRQX2M \Reg_File_reg[10][6]  ( .D(n87), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][6] ) );
  DFFRQX2M \Reg_File_reg[10][5]  ( .D(n86), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][5] ) );
  DFFRQX2M \Reg_File_reg[10][4]  ( .D(n85), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][4] ) );
  DFFRQX2M \Reg_File_reg[10][3]  ( .D(n84), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][3] ) );
  DFFRQX2M \Reg_File_reg[10][2]  ( .D(n83), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][2] ) );
  DFFRQX2M \Reg_File_reg[10][1]  ( .D(n82), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][1] ) );
  DFFRQX2M \Reg_File_reg[10][0]  ( .D(n81), .CK(CLK), .RN(n197), .Q(
        \Reg_File[10][0] ) );
  DFFRQX2M \Reg_File_reg[14][7]  ( .D(n56), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][7] ) );
  DFFRQX2M \Reg_File_reg[14][6]  ( .D(n55), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][6] ) );
  DFFRQX2M \Reg_File_reg[14][5]  ( .D(n54), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][5] ) );
  DFFRQX2M \Reg_File_reg[14][4]  ( .D(n53), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][4] ) );
  DFFRQX2M \Reg_File_reg[14][3]  ( .D(n52), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][3] ) );
  DFFRQX2M \Reg_File_reg[14][2]  ( .D(n51), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][2] ) );
  DFFRQX2M \Reg_File_reg[14][1]  ( .D(n50), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][1] ) );
  DFFRQX2M \Reg_File_reg[14][0]  ( .D(n49), .CK(CLK), .RN(n197), .Q(
        \Reg_File[14][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n136), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n135), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n134), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n133), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n132), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n131), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n130), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n129), .CK(CLK), .RN(n198), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M \Reg_File_reg[8][7]  ( .D(n104), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][7] ) );
  DFFRQX2M \Reg_File_reg[8][6]  ( .D(n103), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][6] ) );
  DFFRQX2M \Reg_File_reg[8][5]  ( .D(n102), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][5] ) );
  DFFRQX2M \Reg_File_reg[8][4]  ( .D(n101), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][4] ) );
  DFFRQX2M \Reg_File_reg[8][3]  ( .D(n100), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][3] ) );
  DFFRQX2M \Reg_File_reg[8][2]  ( .D(n99), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][2] ) );
  DFFRQX2M \Reg_File_reg[8][1]  ( .D(n98), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][1] ) );
  DFFRQX2M \Reg_File_reg[8][0]  ( .D(n97), .CK(CLK), .RN(n197), .Q(
        \Reg_File[8][0] ) );
  DFFRQX2M \Reg_File_reg[12][7]  ( .D(n72), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][7] ) );
  DFFRQX2M \Reg_File_reg[12][6]  ( .D(n71), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][6] ) );
  DFFRQX2M \Reg_File_reg[12][5]  ( .D(n70), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][5] ) );
  DFFRQX2M \Reg_File_reg[12][4]  ( .D(n69), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][4] ) );
  DFFRQX2M \Reg_File_reg[12][3]  ( .D(n68), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][3] ) );
  DFFRQX2M \Reg_File_reg[12][2]  ( .D(n67), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][2] ) );
  DFFRQX2M \Reg_File_reg[12][1]  ( .D(n66), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][1] ) );
  DFFRQX2M \Reg_File_reg[12][0]  ( .D(n65), .CK(CLK), .RN(n197), .Q(
        \Reg_File[12][0] ) );
  DFFRQX2M RdData_Valid_reg ( .D(n169), .CK(CLK), .RN(n197), .Q(RdData_Valid)
         );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n137), .CK(CLK), .RN(n198), .Q(REG3[0])
         );
  DFFRQX2M \Reg_File_reg[3][4]  ( .D(n141), .CK(CLK), .RN(n198), .Q(REG3[4])
         );
  DFFRQX2M \Reg_File_reg[3][2]  ( .D(n139), .CK(CLK), .RN(n198), .Q(REG3[2])
         );
  DFFRQX2M \Reg_File_reg[3][3]  ( .D(n140), .CK(CLK), .RN(n198), .Q(REG3[3])
         );
  DFFRQX2M \Reg_File_reg[3][6]  ( .D(n143), .CK(CLK), .RN(n198), .Q(REG3[6])
         );
  DFFRQX2M \Reg_File_reg[3][7]  ( .D(n144), .CK(CLK), .RN(n198), .Q(REG3[7])
         );
  DFFSQX2M \Reg_File_reg[3][5]  ( .D(n142), .CK(CLK), .SN(n197), .Q(REG3[5])
         );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n146), .CK(CLK), .RN(n198), .Q(REG2[1])
         );
  DFFRQX2M \Reg_File_reg[3][1]  ( .D(n138), .CK(CLK), .RN(n198), .Q(REG3[1])
         );
  DFFRQX2M \Reg_File_reg[2][2]  ( .D(n147), .CK(CLK), .RN(n198), .Q(REG2[2])
         );
  DFFSQX2M \Reg_File_reg[2][0]  ( .D(n145), .CK(CLK), .SN(n197), .Q(REG2[0])
         );
  DFFRQX2M \Reg_File_reg[2][3]  ( .D(n148), .CK(CLK), .RN(n198), .Q(REG2[3])
         );
  DFFSQX2M \Reg_File_reg[2][7]  ( .D(n152), .CK(CLK), .SN(n197), .Q(REG2[7])
         );
  DFFRQX2M \Reg_File_reg[2][5]  ( .D(n150), .CK(CLK), .RN(n198), .Q(REG2[5])
         );
  DFFRQX2M \Reg_File_reg[2][6]  ( .D(n151), .CK(CLK), .RN(n198), .Q(REG2[6])
         );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n162), .CK(CLK), .RN(n198), .Q(REG0[1])
         );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n161), .CK(CLK), .RN(n198), .Q(REG0[0])
         );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n163), .CK(CLK), .RN(n198), .Q(REG0[2])
         );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n164), .CK(CLK), .RN(n198), .Q(REG0[3])
         );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n165), .CK(CLK), .RN(n198), .Q(REG0[4])
         );
  DFFRQX2M \Reg_File_reg[0][5]  ( .D(n166), .CK(CLK), .RN(n198), .Q(REG0[5])
         );
  DFFRQX2M \Reg_File_reg[0][6]  ( .D(n167), .CK(CLK), .RN(n198), .Q(REG0[6])
         );
  DFFRQX2M \Reg_File_reg[1][6]  ( .D(n159), .CK(CLK), .RN(n198), .Q(REG1[6])
         );
  DFFRQX2M \Reg_File_reg[0][7]  ( .D(n168), .CK(CLK), .RN(n198), .Q(REG0[7])
         );
  DFFRQX2M \Reg_File_reg[1][1]  ( .D(n154), .CK(CLK), .RN(n198), .Q(REG1[1])
         );
  DFFRQX2M \Reg_File_reg[1][5]  ( .D(n158), .CK(CLK), .RN(n198), .Q(REG1[5])
         );
  DFFRQX2M \Reg_File_reg[1][4]  ( .D(n157), .CK(CLK), .RN(n198), .Q(REG1[4])
         );
  DFFRQX2M \Reg_File_reg[1][7]  ( .D(n160), .CK(CLK), .RN(n198), .Q(REG1[7])
         );
  DFFRQX2M \Reg_File_reg[1][3]  ( .D(n156), .CK(CLK), .RN(n198), .Q(REG1[3])
         );
  DFFRQX2M \Reg_File_reg[1][2]  ( .D(n155), .CK(CLK), .RN(n198), .Q(REG1[2])
         );
  DFFRQX2M \Reg_File_reg[1][0]  ( .D(n153), .CK(CLK), .RN(n198), .Q(REG1[0])
         );
  DFFRQX2M \Reg_File_reg[2][4]  ( .D(n149), .CK(CLK), .RN(n198), .Q(REG2[4])
         );
  NOR2X2M U3 ( .A(n200), .B(n191), .Y(n19) );
  NOR2X2M U4 ( .A(n200), .B(n196), .Y(n15) );
  NOR2X2M U5 ( .A(n196), .B(N12), .Y(n22) );
  NOR2X2M U6 ( .A(n191), .B(N12), .Y(n25) );
  INVX2M U7 ( .A(WrData[4]), .Y(n204) );
  INVX2M U8 ( .A(n192), .Y(n193) );
  INVX2M U9 ( .A(n190), .Y(n191) );
  BUFX2M U10 ( .A(n195), .Y(n192) );
  INVX2M U11 ( .A(n192), .Y(n194) );
  BUFX2M U12 ( .A(n196), .Y(n190) );
  NAND3X2M U13 ( .A(n14), .B(n197), .C(n15), .Y(n13) );
  NAND2X2M U14 ( .A(n19), .B(n14), .Y(n18) );
  NAND2X2M U15 ( .A(n19), .B(n17), .Y(n20) );
  NAND2X2M U16 ( .A(n17), .B(n15), .Y(n16) );
  NAND2X2M U17 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U18 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U19 ( .A(n30), .B(n19), .Y(n33) );
  NAND2X2M U20 ( .A(n32), .B(n19), .Y(n34) );
  INVX6M U21 ( .A(n199), .Y(n197) );
  INVX4M U22 ( .A(n199), .Y(n198) );
  NOR2BX2M U23 ( .AN(n26), .B(N10), .Y(n17) );
  NOR2BX2M U24 ( .AN(n26), .B(n195), .Y(n14) );
  NOR2BX2M U25 ( .AN(n38), .B(n195), .Y(n30) );
  NOR2BX2M U26 ( .AN(n38), .B(N10), .Y(n32) );
  NAND2X2M U27 ( .A(n30), .B(n22), .Y(n35) );
  NAND2X2M U28 ( .A(n32), .B(n22), .Y(n36) );
  NAND2X2M U29 ( .A(n30), .B(n25), .Y(n37) );
  NAND2X2M U30 ( .A(n32), .B(n25), .Y(n39) );
  NAND2X2M U31 ( .A(n22), .B(n14), .Y(n21) );
  NAND2X2M U32 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U33 ( .A(n25), .B(n14), .Y(n24) );
  NAND2X2M U34 ( .A(n25), .B(n17), .Y(n27) );
  AND2X2M U35 ( .A(n169), .B(n197), .Y(n1) );
  INVX2M U36 ( .A(RST), .Y(n199) );
  MX4X1M U37 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n193), .S1(n191), .Y(
        n10) );
  MX4X1M U38 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n193), .S1(n191), .Y(
        n170) );
  MX4X1M U39 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n193), .S1(n191), .Y(
        n174) );
  MX4X1M U40 ( .A(n40), .B(n11), .C(n12), .D(n10), .S0(N13), .S1(N12), .Y(N40)
         );
  MX4X1M U41 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n193), 
        .S1(n191), .Y(n40) );
  MX4X1M U42 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n193), .S1(n191), .Y(
        n11) );
  MX4X1M U43 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(\Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n193), .S1(n191), .Y(n12) );
  MX4X1M U44 ( .A(n173), .B(n171), .C(n172), .D(n170), .S0(N13), .S1(N12), .Y(
        N39) );
  MX4X1M U45 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n193), 
        .S1(n191), .Y(n173) );
  MX4X1M U46 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n193), .S1(n191), .Y(
        n171) );
  MX4X1M U47 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(\Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n193), .S1(n191), .Y(n172) );
  MX4X1M U48 ( .A(n177), .B(n175), .C(n176), .D(n174), .S0(N13), .S1(N12), .Y(
        N38) );
  MX4X1M U49 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n194), 
        .S1(n191), .Y(n177) );
  MX4X1M U50 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n193), .S1(n191), .Y(
        n175) );
  MX4X1M U51 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(\Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n193), .S1(n191), .Y(n176) );
  INVX2M U52 ( .A(N10), .Y(n195) );
  INVX2M U53 ( .A(WrData[0]), .Y(n208) );
  INVX2M U54 ( .A(WrData[1]), .Y(n207) );
  INVX2M U55 ( .A(WrData[2]), .Y(n206) );
  INVX2M U56 ( .A(WrData[3]), .Y(n205) );
  INVX2M U57 ( .A(WrData[5]), .Y(n203) );
  INVX2M U58 ( .A(WrData[6]), .Y(n202) );
  INVX2M U59 ( .A(WrData[7]), .Y(n201) );
  OAI2BB2X1M U60 ( .B0(n13), .B1(n208), .A0N(\Reg_File[15][0] ), .A1N(n13), 
        .Y(n41) );
  OAI2BB2X1M U61 ( .B0(n13), .B1(n207), .A0N(\Reg_File[15][1] ), .A1N(n13), 
        .Y(n42) );
  OAI2BB2X1M U62 ( .B0(n13), .B1(n206), .A0N(\Reg_File[15][2] ), .A1N(n13), 
        .Y(n43) );
  OAI2BB2X1M U63 ( .B0(n13), .B1(n205), .A0N(\Reg_File[15][3] ), .A1N(n13), 
        .Y(n44) );
  OAI2BB2X1M U64 ( .B0(n13), .B1(n204), .A0N(\Reg_File[15][4] ), .A1N(n13), 
        .Y(n45) );
  OAI2BB2X1M U65 ( .B0(n13), .B1(n203), .A0N(\Reg_File[15][5] ), .A1N(n13), 
        .Y(n46) );
  OAI2BB2X1M U66 ( .B0(n13), .B1(n202), .A0N(\Reg_File[15][6] ), .A1N(n13), 
        .Y(n47) );
  OAI2BB2X1M U67 ( .B0(n13), .B1(n201), .A0N(\Reg_File[15][7] ), .A1N(n13), 
        .Y(n48) );
  NOR2BX2M U68 ( .AN(RdEn), .B(WrEn), .Y(n169) );
  OAI2BB2X1M U69 ( .B0(n208), .B1(n16), .A0N(\Reg_File[14][0] ), .A1N(n16), 
        .Y(n49) );
  OAI2BB2X1M U70 ( .B0(n207), .B1(n16), .A0N(\Reg_File[14][1] ), .A1N(n16), 
        .Y(n50) );
  OAI2BB2X1M U71 ( .B0(n206), .B1(n16), .A0N(\Reg_File[14][2] ), .A1N(n16), 
        .Y(n51) );
  OAI2BB2X1M U72 ( .B0(n205), .B1(n16), .A0N(\Reg_File[14][3] ), .A1N(n16), 
        .Y(n52) );
  OAI2BB2X1M U73 ( .B0(n204), .B1(n16), .A0N(\Reg_File[14][4] ), .A1N(n16), 
        .Y(n53) );
  OAI2BB2X1M U74 ( .B0(n203), .B1(n16), .A0N(\Reg_File[14][5] ), .A1N(n16), 
        .Y(n54) );
  OAI2BB2X1M U75 ( .B0(n202), .B1(n16), .A0N(\Reg_File[14][6] ), .A1N(n16), 
        .Y(n55) );
  OAI2BB2X1M U76 ( .B0(n201), .B1(n16), .A0N(\Reg_File[14][7] ), .A1N(n16), 
        .Y(n56) );
  OAI2BB2X1M U77 ( .B0(n208), .B1(n29), .A0N(\Reg_File[7][0] ), .A1N(n29), .Y(
        n105) );
  OAI2BB2X1M U78 ( .B0(n207), .B1(n29), .A0N(\Reg_File[7][1] ), .A1N(n29), .Y(
        n106) );
  OAI2BB2X1M U79 ( .B0(n206), .B1(n29), .A0N(\Reg_File[7][2] ), .A1N(n29), .Y(
        n107) );
  OAI2BB2X1M U80 ( .B0(n205), .B1(n29), .A0N(\Reg_File[7][3] ), .A1N(n29), .Y(
        n108) );
  OAI2BB2X1M U81 ( .B0(n204), .B1(n29), .A0N(\Reg_File[7][4] ), .A1N(n29), .Y(
        n109) );
  OAI2BB2X1M U82 ( .B0(n203), .B1(n29), .A0N(\Reg_File[7][5] ), .A1N(n29), .Y(
        n110) );
  OAI2BB2X1M U83 ( .B0(n202), .B1(n29), .A0N(\Reg_File[7][6] ), .A1N(n29), .Y(
        n111) );
  OAI2BB2X1M U84 ( .B0(n201), .B1(n29), .A0N(\Reg_File[7][7] ), .A1N(n29), .Y(
        n112) );
  OAI2BB2X1M U85 ( .B0(n208), .B1(n31), .A0N(\Reg_File[6][0] ), .A1N(n31), .Y(
        n113) );
  OAI2BB2X1M U86 ( .B0(n207), .B1(n31), .A0N(\Reg_File[6][1] ), .A1N(n31), .Y(
        n114) );
  OAI2BB2X1M U87 ( .B0(n206), .B1(n31), .A0N(\Reg_File[6][2] ), .A1N(n31), .Y(
        n115) );
  OAI2BB2X1M U88 ( .B0(n205), .B1(n31), .A0N(\Reg_File[6][3] ), .A1N(n31), .Y(
        n116) );
  OAI2BB2X1M U89 ( .B0(n204), .B1(n31), .A0N(\Reg_File[6][4] ), .A1N(n31), .Y(
        n117) );
  OAI2BB2X1M U90 ( .B0(n203), .B1(n31), .A0N(\Reg_File[6][5] ), .A1N(n31), .Y(
        n118) );
  OAI2BB2X1M U91 ( .B0(n202), .B1(n31), .A0N(\Reg_File[6][6] ), .A1N(n31), .Y(
        n119) );
  OAI2BB2X1M U92 ( .B0(n201), .B1(n31), .A0N(\Reg_File[6][7] ), .A1N(n31), .Y(
        n120) );
  OAI2BB2X1M U93 ( .B0(n208), .B1(n33), .A0N(\Reg_File[5][0] ), .A1N(n33), .Y(
        n121) );
  OAI2BB2X1M U94 ( .B0(n207), .B1(n33), .A0N(\Reg_File[5][1] ), .A1N(n33), .Y(
        n122) );
  OAI2BB2X1M U95 ( .B0(n206), .B1(n33), .A0N(\Reg_File[5][2] ), .A1N(n33), .Y(
        n123) );
  OAI2BB2X1M U96 ( .B0(n205), .B1(n33), .A0N(\Reg_File[5][3] ), .A1N(n33), .Y(
        n124) );
  OAI2BB2X1M U97 ( .B0(n204), .B1(n33), .A0N(\Reg_File[5][4] ), .A1N(n33), .Y(
        n125) );
  OAI2BB2X1M U98 ( .B0(n203), .B1(n33), .A0N(\Reg_File[5][5] ), .A1N(n33), .Y(
        n126) );
  OAI2BB2X1M U99 ( .B0(n202), .B1(n33), .A0N(\Reg_File[5][6] ), .A1N(n33), .Y(
        n127) );
  OAI2BB2X1M U100 ( .B0(n201), .B1(n33), .A0N(\Reg_File[5][7] ), .A1N(n33), 
        .Y(n128) );
  OAI2BB2X1M U101 ( .B0(n208), .B1(n34), .A0N(\Reg_File[4][0] ), .A1N(n34), 
        .Y(n129) );
  OAI2BB2X1M U102 ( .B0(n207), .B1(n34), .A0N(\Reg_File[4][1] ), .A1N(n34), 
        .Y(n130) );
  OAI2BB2X1M U103 ( .B0(n206), .B1(n34), .A0N(\Reg_File[4][2] ), .A1N(n34), 
        .Y(n131) );
  OAI2BB2X1M U104 ( .B0(n205), .B1(n34), .A0N(\Reg_File[4][3] ), .A1N(n34), 
        .Y(n132) );
  OAI2BB2X1M U105 ( .B0(n204), .B1(n34), .A0N(\Reg_File[4][4] ), .A1N(n34), 
        .Y(n133) );
  OAI2BB2X1M U106 ( .B0(n203), .B1(n34), .A0N(\Reg_File[4][5] ), .A1N(n34), 
        .Y(n134) );
  OAI2BB2X1M U107 ( .B0(n202), .B1(n34), .A0N(\Reg_File[4][6] ), .A1N(n34), 
        .Y(n135) );
  OAI2BB2X1M U108 ( .B0(n201), .B1(n34), .A0N(\Reg_File[4][7] ), .A1N(n34), 
        .Y(n136) );
  OAI2BB2X1M U109 ( .B0(n208), .B1(n35), .A0N(REG3[0]), .A1N(n35), .Y(n137) );
  OAI2BB2X1M U110 ( .B0(n207), .B1(n35), .A0N(REG3[1]), .A1N(n35), .Y(n138) );
  OAI2BB2X1M U111 ( .B0(n206), .B1(n35), .A0N(REG3[2]), .A1N(n35), .Y(n139) );
  OAI2BB2X1M U112 ( .B0(n205), .B1(n35), .A0N(REG3[3]), .A1N(n35), .Y(n140) );
  OAI2BB2X1M U113 ( .B0(n204), .B1(n35), .A0N(REG3[4]), .A1N(n35), .Y(n141) );
  OAI2BB2X1M U114 ( .B0(n202), .B1(n35), .A0N(REG3[6]), .A1N(n35), .Y(n143) );
  OAI2BB2X1M U115 ( .B0(n201), .B1(n35), .A0N(REG3[7]), .A1N(n35), .Y(n144) );
  OAI2BB2X1M U116 ( .B0(n207), .B1(n36), .A0N(REG2[1]), .A1N(n36), .Y(n146) );
  OAI2BB2X1M U117 ( .B0(n206), .B1(n36), .A0N(REG2[2]), .A1N(n36), .Y(n147) );
  OAI2BB2X1M U118 ( .B0(n205), .B1(n36), .A0N(REG2[3]), .A1N(n36), .Y(n148) );
  OAI2BB2X1M U119 ( .B0(n204), .B1(n36), .A0N(REG2[4]), .A1N(n36), .Y(n149) );
  OAI2BB2X1M U120 ( .B0(n203), .B1(n36), .A0N(REG2[5]), .A1N(n36), .Y(n150) );
  OAI2BB2X1M U121 ( .B0(n202), .B1(n36), .A0N(REG2[6]), .A1N(n36), .Y(n151) );
  OAI2BB2X1M U122 ( .B0(n208), .B1(n37), .A0N(REG1[0]), .A1N(n37), .Y(n153) );
  OAI2BB2X1M U123 ( .B0(n207), .B1(n37), .A0N(REG1[1]), .A1N(n37), .Y(n154) );
  OAI2BB2X1M U124 ( .B0(n206), .B1(n37), .A0N(REG1[2]), .A1N(n37), .Y(n155) );
  OAI2BB2X1M U125 ( .B0(n205), .B1(n37), .A0N(REG1[3]), .A1N(n37), .Y(n156) );
  OAI2BB2X1M U126 ( .B0(n204), .B1(n37), .A0N(REG1[4]), .A1N(n37), .Y(n157) );
  OAI2BB2X1M U127 ( .B0(n203), .B1(n37), .A0N(REG1[5]), .A1N(n37), .Y(n158) );
  OAI2BB2X1M U128 ( .B0(n202), .B1(n37), .A0N(REG1[6]), .A1N(n37), .Y(n159) );
  OAI2BB2X1M U129 ( .B0(n201), .B1(n37), .A0N(REG1[7]), .A1N(n37), .Y(n160) );
  OAI2BB2X1M U130 ( .B0(n208), .B1(n39), .A0N(REG0[0]), .A1N(n39), .Y(n161) );
  OAI2BB2X1M U131 ( .B0(n207), .B1(n39), .A0N(REG0[1]), .A1N(n39), .Y(n162) );
  OAI2BB2X1M U132 ( .B0(n206), .B1(n39), .A0N(REG0[2]), .A1N(n39), .Y(n163) );
  OAI2BB2X1M U133 ( .B0(n205), .B1(n39), .A0N(REG0[3]), .A1N(n39), .Y(n164) );
  OAI2BB2X1M U134 ( .B0(n204), .B1(n39), .A0N(REG0[4]), .A1N(n39), .Y(n165) );
  OAI2BB2X1M U135 ( .B0(n203), .B1(n39), .A0N(REG0[5]), .A1N(n39), .Y(n166) );
  OAI2BB2X1M U136 ( .B0(n202), .B1(n39), .A0N(REG0[6]), .A1N(n39), .Y(n167) );
  OAI2BB2X1M U137 ( .B0(n201), .B1(n39), .A0N(REG0[7]), .A1N(n39), .Y(n168) );
  OAI2BB2X1M U138 ( .B0(n208), .B1(n18), .A0N(\Reg_File[13][0] ), .A1N(n18), 
        .Y(n57) );
  OAI2BB2X1M U139 ( .B0(n207), .B1(n18), .A0N(\Reg_File[13][1] ), .A1N(n18), 
        .Y(n58) );
  OAI2BB2X1M U140 ( .B0(n206), .B1(n18), .A0N(\Reg_File[13][2] ), .A1N(n18), 
        .Y(n59) );
  OAI2BB2X1M U141 ( .B0(n205), .B1(n18), .A0N(\Reg_File[13][3] ), .A1N(n18), 
        .Y(n60) );
  OAI2BB2X1M U142 ( .B0(n204), .B1(n18), .A0N(\Reg_File[13][4] ), .A1N(n18), 
        .Y(n61) );
  OAI2BB2X1M U143 ( .B0(n203), .B1(n18), .A0N(\Reg_File[13][5] ), .A1N(n18), 
        .Y(n62) );
  OAI2BB2X1M U144 ( .B0(n202), .B1(n18), .A0N(\Reg_File[13][6] ), .A1N(n18), 
        .Y(n63) );
  OAI2BB2X1M U145 ( .B0(n201), .B1(n18), .A0N(\Reg_File[13][7] ), .A1N(n18), 
        .Y(n64) );
  OAI2BB2X1M U146 ( .B0(n208), .B1(n20), .A0N(\Reg_File[12][0] ), .A1N(n20), 
        .Y(n65) );
  OAI2BB2X1M U147 ( .B0(n207), .B1(n20), .A0N(\Reg_File[12][1] ), .A1N(n20), 
        .Y(n66) );
  OAI2BB2X1M U148 ( .B0(n206), .B1(n20), .A0N(\Reg_File[12][2] ), .A1N(n20), 
        .Y(n67) );
  OAI2BB2X1M U149 ( .B0(n205), .B1(n20), .A0N(\Reg_File[12][3] ), .A1N(n20), 
        .Y(n68) );
  OAI2BB2X1M U150 ( .B0(n204), .B1(n20), .A0N(\Reg_File[12][4] ), .A1N(n20), 
        .Y(n69) );
  OAI2BB2X1M U151 ( .B0(n203), .B1(n20), .A0N(\Reg_File[12][5] ), .A1N(n20), 
        .Y(n70) );
  OAI2BB2X1M U152 ( .B0(n202), .B1(n20), .A0N(\Reg_File[12][6] ), .A1N(n20), 
        .Y(n71) );
  OAI2BB2X1M U153 ( .B0(n201), .B1(n20), .A0N(\Reg_File[12][7] ), .A1N(n20), 
        .Y(n72) );
  OAI2BB2X1M U154 ( .B0(n208), .B1(n21), .A0N(\Reg_File[11][0] ), .A1N(n21), 
        .Y(n73) );
  OAI2BB2X1M U155 ( .B0(n207), .B1(n21), .A0N(\Reg_File[11][1] ), .A1N(n21), 
        .Y(n74) );
  OAI2BB2X1M U156 ( .B0(n206), .B1(n21), .A0N(\Reg_File[11][2] ), .A1N(n21), 
        .Y(n75) );
  OAI2BB2X1M U157 ( .B0(n205), .B1(n21), .A0N(\Reg_File[11][3] ), .A1N(n21), 
        .Y(n76) );
  OAI2BB2X1M U158 ( .B0(n204), .B1(n21), .A0N(\Reg_File[11][4] ), .A1N(n21), 
        .Y(n77) );
  OAI2BB2X1M U159 ( .B0(n203), .B1(n21), .A0N(\Reg_File[11][5] ), .A1N(n21), 
        .Y(n78) );
  OAI2BB2X1M U160 ( .B0(n202), .B1(n21), .A0N(\Reg_File[11][6] ), .A1N(n21), 
        .Y(n79) );
  OAI2BB2X1M U161 ( .B0(n201), .B1(n21), .A0N(\Reg_File[11][7] ), .A1N(n21), 
        .Y(n80) );
  OAI2BB2X1M U162 ( .B0(n208), .B1(n23), .A0N(\Reg_File[10][0] ), .A1N(n23), 
        .Y(n81) );
  OAI2BB2X1M U163 ( .B0(n207), .B1(n23), .A0N(\Reg_File[10][1] ), .A1N(n23), 
        .Y(n82) );
  OAI2BB2X1M U164 ( .B0(n206), .B1(n23), .A0N(\Reg_File[10][2] ), .A1N(n23), 
        .Y(n83) );
  OAI2BB2X1M U165 ( .B0(n205), .B1(n23), .A0N(\Reg_File[10][3] ), .A1N(n23), 
        .Y(n84) );
  OAI2BB2X1M U166 ( .B0(n204), .B1(n23), .A0N(\Reg_File[10][4] ), .A1N(n23), 
        .Y(n85) );
  OAI2BB2X1M U167 ( .B0(n203), .B1(n23), .A0N(\Reg_File[10][5] ), .A1N(n23), 
        .Y(n86) );
  OAI2BB2X1M U168 ( .B0(n202), .B1(n23), .A0N(\Reg_File[10][6] ), .A1N(n23), 
        .Y(n87) );
  OAI2BB2X1M U169 ( .B0(n201), .B1(n23), .A0N(\Reg_File[10][7] ), .A1N(n23), 
        .Y(n88) );
  OAI2BB2X1M U170 ( .B0(n208), .B1(n24), .A0N(\Reg_File[9][0] ), .A1N(n24), 
        .Y(n89) );
  OAI2BB2X1M U171 ( .B0(n207), .B1(n24), .A0N(\Reg_File[9][1] ), .A1N(n24), 
        .Y(n90) );
  OAI2BB2X1M U172 ( .B0(n206), .B1(n24), .A0N(\Reg_File[9][2] ), .A1N(n24), 
        .Y(n91) );
  OAI2BB2X1M U173 ( .B0(n205), .B1(n24), .A0N(\Reg_File[9][3] ), .A1N(n24), 
        .Y(n92) );
  OAI2BB2X1M U174 ( .B0(n204), .B1(n24), .A0N(\Reg_File[9][4] ), .A1N(n24), 
        .Y(n93) );
  OAI2BB2X1M U175 ( .B0(n203), .B1(n24), .A0N(\Reg_File[9][5] ), .A1N(n24), 
        .Y(n94) );
  OAI2BB2X1M U176 ( .B0(n202), .B1(n24), .A0N(\Reg_File[9][6] ), .A1N(n24), 
        .Y(n95) );
  OAI2BB2X1M U177 ( .B0(n201), .B1(n24), .A0N(\Reg_File[9][7] ), .A1N(n24), 
        .Y(n96) );
  OAI2BB2X1M U178 ( .B0(n208), .B1(n27), .A0N(\Reg_File[8][0] ), .A1N(n27), 
        .Y(n97) );
  OAI2BB2X1M U179 ( .B0(n207), .B1(n27), .A0N(\Reg_File[8][1] ), .A1N(n27), 
        .Y(n98) );
  OAI2BB2X1M U180 ( .B0(n206), .B1(n27), .A0N(\Reg_File[8][2] ), .A1N(n27), 
        .Y(n99) );
  OAI2BB2X1M U181 ( .B0(n205), .B1(n27), .A0N(\Reg_File[8][3] ), .A1N(n27), 
        .Y(n100) );
  OAI2BB2X1M U182 ( .B0(n204), .B1(n27), .A0N(\Reg_File[8][4] ), .A1N(n27), 
        .Y(n101) );
  OAI2BB2X1M U183 ( .B0(n203), .B1(n27), .A0N(\Reg_File[8][5] ), .A1N(n27), 
        .Y(n102) );
  OAI2BB2X1M U184 ( .B0(n202), .B1(n27), .A0N(\Reg_File[8][6] ), .A1N(n27), 
        .Y(n103) );
  OAI2BB2X1M U185 ( .B0(n201), .B1(n27), .A0N(\Reg_File[8][7] ), .A1N(n27), 
        .Y(n104) );
  NOR2BX2M U186 ( .AN(n28), .B(N13), .Y(n38) );
  OAI2BB2X1M U187 ( .B0(n203), .B1(n35), .A0N(REG3[5]), .A1N(n35), .Y(n142) );
  OAI2BB2X1M U188 ( .B0(n208), .B1(n36), .A0N(REG2[0]), .A1N(n36), .Y(n145) );
  OAI2BB2X1M U189 ( .B0(n201), .B1(n36), .A0N(REG2[7]), .A1N(n36), .Y(n152) );
  NOR2BX2M U190 ( .AN(WrEn), .B(RdEn), .Y(n28) );
  INVX2M U191 ( .A(N12), .Y(n200) );
  MX4X1M U192 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n193), .S1(N11), .Y(n8)
         );
  MX4X1M U193 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n194), .S1(N11), .Y(n2)
         );
  MX4X1M U194 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n194), .S1(N11), .Y(
        n178) );
  MX4X1M U195 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n194), .S1(N11), .Y(
        n182) );
  MX4X1M U196 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n194), .S1(N11), .Y(
        n186) );
  MX4X1M U197 ( .A(n5), .B(n3), .C(n4), .D(n2), .S0(N13), .S1(N12), .Y(N42) );
  MX4X1M U198 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N10), 
        .S1(N11), .Y(n5) );
  MX4X1M U199 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(N10), .S1(N11), .Y(n3)
         );
  MX4X1M U200 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(N10), .S1(N11), .Y(n4) );
  MX4X1M U201 ( .A(n9), .B(n7), .C(n8), .D(n6), .S0(N13), .S1(N12), .Y(N41) );
  MX4X1M U202 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(N10), .S1(N11), .Y(n7)
         );
  MX4X1M U203 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n193), .S1(N11), .Y(n6)
         );
  MX4X1M U204 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n193), 
        .S1(N11), .Y(n9) );
  MX4X1M U205 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N13), .S1(N12), 
        .Y(N37) );
  MX4X1M U206 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n194), 
        .S1(N11), .Y(n181) );
  MX4X1M U207 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(n194), .S1(N11), .Y(
        n179) );
  MX4X1M U208 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n194), .S1(n191), .Y(n180) );
  MX4X1M U209 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N13), .S1(N12), 
        .Y(N36) );
  MX4X1M U210 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n194), 
        .S1(N11), .Y(n185) );
  MX4X1M U211 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(n194), .S1(N11), .Y(
        n183) );
  MX4X1M U212 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n194), .S1(N11), .Y(n184)
         );
  MX4X1M U213 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N13), .S1(N12), 
        .Y(N35) );
  MX4X1M U214 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n194), 
        .S1(N11), .Y(n189) );
  MX4X1M U215 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(n194), .S1(N11), .Y(
        n187) );
  MX4X1M U216 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n194), .S1(N11), .Y(n188)
         );
  AND2X2M U217 ( .A(N13), .B(n28), .Y(n26) );
  INVX2M U218 ( .A(N11), .Y(n196) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U10 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n4) );
  INVX2M U12 ( .A(n18), .Y(n3) );
  NAND2X2M U13 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n6) );
  INVX2M U15 ( .A(n18), .Y(n5) );
  NAND2X2M U16 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  NAND2X2M U18 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U19 ( .A(a[2]), .Y(n8) );
  NAND2X2M U20 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U21 ( .A(a[1]), .Y(n9) );
  NAND2X2M U22 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  INVX2M U26 ( .A(b[6]), .Y(n12) );
  INVX2M U27 ( .A(a[0]), .Y(n10) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  INVX2M U4 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U6 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U7 ( .A(B[7]), .Y(n8) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n5), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U15 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U20 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U23 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  AND2X2M U26 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U32 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  INVX2M U36 ( .A(A[1]), .Y(n30) );
  INVX2M U37 ( .A(A[0]), .Y(n31) );
  INVX2M U38 ( .A(A[2]), .Y(n29) );
  INVX2M U39 ( .A(B[6]), .Y(n33) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U41 ( .A(A[3]), .Y(n28) );
  INVX2M U42 ( .A(A[4]), .Y(n27) );
  INVX2M U43 ( .A(A[5]), .Y(n26) );
  INVX2M U44 ( .A(A[7]), .Y(n24) );
  INVX2M U45 ( .A(A[6]), .Y(n25) );
  INVX2M U46 ( .A(B[2]), .Y(n37) );
  INVX2M U47 ( .A(B[3]), .Y(n36) );
  INVX2M U48 ( .A(B[7]), .Y(n32) );
  INVX2M U49 ( .A(B[5]), .Y(n34) );
  INVX2M U50 ( .A(B[4]), .Y(n35) );
  INVX2M U51 ( .A(B[0]), .Y(n39) );
  INVX2M U52 ( .A(B[1]), .Y(n38) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
endmodule


module ALU ( CLK, RST, Enable, A, B, ALU_FUN, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N159, N160, N161, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178;

  ALU_DW_div_uns_0 div_25 ( .a({n11, n10, n9, n8, n7, n6, n5, n4}), .b({B[7], 
        n3, B[5:0]}), .quotient({N134, N133, N132, N131, N130, N129, N128, 
        N127}) );
  ALU_DW01_sub_0 sub_23 ( .A({1'b0, n11, n10, n9, n8, n7, n6, n5, n4}), .B({
        1'b0, B[7], n3, B[5:0]}), .CI(1'b0), .DIFF({N110, N109, N108, N107, 
        N106, N105, N104, N103, N102}) );
  ALU_DW01_add_0 add_22 ( .A({1'b0, n11, n10, n9, n8, n7, n6, n5, n4}), .B({
        1'b0, B[7], n3, B[5:0]}), .CI(1'b0), .SUM({N101, N100, N99, N98, N97, 
        N96, N95, N94, N93}) );
  ALU_DW02_mult_0 mult_24 ( .A({n11, n10, n9, n8, n7, n6, n5, n4}), .B({B[7], 
        n3, B[5:0]}), .TC(1'b0), .PRODUCT({N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111}) );
  DFFQX2M \ALU_OUT_reg[7]  ( .D(n142), .CK(CLK), .Q(ALU_OUT[7]) );
  DFFQX2M \ALU_OUT_reg[6]  ( .D(n141), .CK(CLK), .Q(ALU_OUT[6]) );
  DFFQX2M \ALU_OUT_reg[5]  ( .D(n140), .CK(CLK), .Q(ALU_OUT[5]) );
  DFFQX2M \ALU_OUT_reg[4]  ( .D(n139), .CK(CLK), .Q(ALU_OUT[4]) );
  DFFQX2M \ALU_OUT_reg[3]  ( .D(n138), .CK(CLK), .Q(ALU_OUT[3]) );
  DFFQX2M \ALU_OUT_reg[2]  ( .D(n137), .CK(CLK), .Q(ALU_OUT[2]) );
  DFFQX2M \ALU_OUT_reg[1]  ( .D(n136), .CK(CLK), .Q(ALU_OUT[1]) );
  DFFQX2M \ALU_OUT_reg[0]  ( .D(n135), .CK(CLK), .Q(ALU_OUT[0]) );
  DFFQX2M \ALU_OUT_reg[8]  ( .D(n143), .CK(CLK), .Q(ALU_OUT[8]) );
  DFFQX2M \ALU_OUT_reg[15]  ( .D(n154), .CK(CLK), .Q(ALU_OUT[15]) );
  DFFQX2M \ALU_OUT_reg[14]  ( .D(n155), .CK(CLK), .Q(ALU_OUT[14]) );
  DFFQX2M \ALU_OUT_reg[13]  ( .D(n156), .CK(CLK), .Q(ALU_OUT[13]) );
  DFFQX2M \ALU_OUT_reg[12]  ( .D(n157), .CK(CLK), .Q(ALU_OUT[12]) );
  DFFQX2M \ALU_OUT_reg[11]  ( .D(n158), .CK(CLK), .Q(ALU_OUT[11]) );
  DFFQX2M \ALU_OUT_reg[10]  ( .D(n159), .CK(CLK), .Q(ALU_OUT[10]) );
  DFFQX2M \ALU_OUT_reg[9]  ( .D(n160), .CK(CLK), .Q(ALU_OUT[9]) );
  DFFX1M OUT_VALID_reg ( .D(n144), .CK(CLK), .Q(OUT_VALID), .QN(n163) );
  BUFX2M U3 ( .A(A[6]), .Y(n10) );
  NOR3X2M U4 ( .A(n176), .B(ALU_FUN[2]), .C(n116), .Y(n58) );
  NOR3X2M U7 ( .A(n176), .B(ALU_FUN[2]), .C(n119), .Y(n59) );
  INVX2M U8 ( .A(n121), .Y(n161) );
  INVX2M U9 ( .A(n123), .Y(n162) );
  AOI222X1M U10 ( .A0(N111), .A1(n58), .B0(n14), .B1(n4), .C0(N127), .C1(n59), 
        .Y(n43) );
  AOI222X1M U11 ( .A0(N128), .A1(n59), .B0(n13), .B1(n169), .C0(n14), .C1(n5), 
        .Y(n64) );
  AOI222X1M U12 ( .A0(N113), .A1(n58), .B0(n6), .B1(n14), .C0(N129), .C1(n59), 
        .Y(n75) );
  AOI222X1M U13 ( .A0(N114), .A1(n58), .B0(n7), .B1(n14), .C0(N130), .C1(n59), 
        .Y(n82) );
  AOI222X1M U14 ( .A0(N115), .A1(n58), .B0(n8), .B1(n14), .C0(N131), .C1(n59), 
        .Y(n89) );
  AOI222X1M U15 ( .A0(N116), .A1(n58), .B0(n9), .B1(n14), .C0(N132), .C1(n59), 
        .Y(n96) );
  AOI22X1M U16 ( .A0(N134), .A1(n59), .B0(N118), .B1(n58), .Y(n110) );
  AOI222X1M U17 ( .A0(N117), .A1(n58), .B0(n10), .B1(n14), .C0(N133), .C1(n59), 
        .Y(n103) );
  OAI21X2M U18 ( .A0(n57), .A1(n133), .B0(n123), .Y(n121) );
  AO21XLM U19 ( .A0(N110), .A1(n60), .B0(n13), .Y(n133) );
  INVX2M U20 ( .A(n3), .Y(n150) );
  OAI21X2M U21 ( .A0(n124), .A1(n119), .B0(n117), .Y(n57) );
  OAI222X1M U22 ( .A0(n106), .A1(n150), .B0(n3), .B1(n107), .C0(n174), .C1(
        n165), .Y(n105) );
  AOI221XLM U23 ( .A0(n50), .A1(n164), .B0(n10), .B1(n51), .C0(n14), .Y(n106)
         );
  AOI221XLM U24 ( .A0(n10), .A1(n50), .B0(n57), .B1(n164), .C0(n13), .Y(n107)
         );
  NOR3X2M U25 ( .A(n175), .B(n72), .C(n177), .Y(n48) );
  OAI21X2M U26 ( .A0(n72), .A1(n116), .B0(n117), .Y(n51) );
  NOR2BX2M U27 ( .AN(n118), .B(n119), .Y(n60) );
  NOR2X2M U28 ( .A(n134), .B(n12), .Y(n123) );
  NAND2X2M U29 ( .A(n175), .B(n177), .Y(n116) );
  INVX2M U30 ( .A(n115), .Y(n174) );
  BUFX2M U31 ( .A(n40), .Y(n12) );
  AOI21X2M U32 ( .A0(n163), .A1(n178), .B0(n15), .Y(n40) );
  AND2X2M U33 ( .A(n58), .B(n123), .Y(n126) );
  BUFX2M U34 ( .A(n45), .Y(n13) );
  NOR2X2M U35 ( .A(n116), .B(n124), .Y(n45) );
  BUFX2M U36 ( .A(n52), .Y(n14) );
  NOR2X2M U37 ( .A(n119), .B(n72), .Y(n52) );
  INVX2M U38 ( .A(n4), .Y(n170) );
  INVX2M U39 ( .A(RST), .Y(n15) );
  INVX2M U40 ( .A(n10), .Y(n164) );
  INVX2M U41 ( .A(n7), .Y(n167) );
  INVX2M U42 ( .A(n6), .Y(n168) );
  INVX2M U43 ( .A(n8), .Y(n166) );
  INVX2M U44 ( .A(n9), .Y(n165) );
  INVX2M U45 ( .A(n134), .Y(n178) );
  INVX2M U46 ( .A(n11), .Y(n153) );
  NOR2BX2M U47 ( .AN(n118), .B(n116), .Y(n61) );
  INVX2M U48 ( .A(n5), .Y(n169) );
  BUFX2M U49 ( .A(A[7]), .Y(n11) );
  BUFX2M U50 ( .A(B[6]), .Y(n3) );
  AO21XLM U51 ( .A0(ALU_OUT[0]), .A1(n12), .B0(n41), .Y(n135) );
  AOI31X2M U52 ( .A0(n42), .A1(n43), .A2(n44), .B0(n162), .Y(n41) );
  AOI22X1M U53 ( .A0(N102), .A1(n60), .B0(N93), .B1(n61), .Y(n42) );
  AOI211X2M U54 ( .A0(n13), .A1(n170), .B0(n46), .C0(n47), .Y(n44) );
  BUFX2M U55 ( .A(A[5]), .Y(n9) );
  AO21XLM U56 ( .A0(ALU_OUT[1]), .A1(n12), .B0(n62), .Y(n136) );
  AOI31X2M U57 ( .A0(n63), .A1(n64), .A2(n65), .B0(n162), .Y(n62) );
  AOI222X1M U58 ( .A0(N94), .A1(n61), .B0(N112), .B1(n58), .C0(N103), .C1(n60), 
        .Y(n63) );
  AOI211X2M U59 ( .A0(n6), .A1(n48), .B0(n66), .C0(n67), .Y(n65) );
  BUFX2M U60 ( .A(A[4]), .Y(n8) );
  AO21XLM U61 ( .A0(ALU_OUT[2]), .A1(n12), .B0(n73), .Y(n137) );
  AOI31X2M U62 ( .A0(n74), .A1(n75), .A2(n76), .B0(n162), .Y(n73) );
  AOI22X1M U63 ( .A0(N104), .A1(n60), .B0(N95), .B1(n61), .Y(n74) );
  AOI221XLM U64 ( .A0(n7), .A1(n48), .B0(n13), .B1(n168), .C0(n77), .Y(n76) );
  BUFX2M U65 ( .A(A[3]), .Y(n7) );
  AO21XLM U66 ( .A0(ALU_OUT[3]), .A1(n12), .B0(n80), .Y(n138) );
  AOI31X2M U67 ( .A0(n81), .A1(n82), .A2(n83), .B0(n162), .Y(n80) );
  AOI22X1M U68 ( .A0(N105), .A1(n60), .B0(N96), .B1(n61), .Y(n81) );
  AOI221XLM U69 ( .A0(n8), .A1(n48), .B0(n13), .B1(n167), .C0(n84), .Y(n83) );
  BUFX2M U70 ( .A(A[2]), .Y(n6) );
  BUFX2M U71 ( .A(A[1]), .Y(n5) );
  BUFX2M U72 ( .A(A[0]), .Y(n4) );
  INVX2M U73 ( .A(n131), .Y(n155) );
  AOI221XLM U74 ( .A0(ALU_OUT[14]), .A1(n12), .B0(N125), .B1(n126), .C0(n161), 
        .Y(n131) );
  INVX2M U75 ( .A(n132), .Y(n154) );
  AOI221XLM U76 ( .A0(ALU_OUT[15]), .A1(n12), .B0(N126), .B1(n126), .C0(n161), 
        .Y(n132) );
  AO21XLM U77 ( .A0(ALU_OUT[4]), .A1(n12), .B0(n87), .Y(n139) );
  AOI31X2M U78 ( .A0(n88), .A1(n89), .A2(n90), .B0(n162), .Y(n87) );
  AOI221XLM U79 ( .A0(n9), .A1(n48), .B0(n13), .B1(n166), .C0(n91), .Y(n90) );
  AOI22X1M U80 ( .A0(N106), .A1(n60), .B0(N97), .B1(n61), .Y(n88) );
  INVX2M U81 ( .A(n130), .Y(n156) );
  AOI221XLM U82 ( .A0(ALU_OUT[13]), .A1(n12), .B0(N124), .B1(n126), .C0(n161), 
        .Y(n130) );
  INVX2M U83 ( .A(n129), .Y(n157) );
  AOI221XLM U84 ( .A0(ALU_OUT[12]), .A1(n12), .B0(N123), .B1(n126), .C0(n161), 
        .Y(n129) );
  INVX2M U85 ( .A(n127), .Y(n159) );
  AOI221XLM U86 ( .A0(ALU_OUT[10]), .A1(n12), .B0(N121), .B1(n126), .C0(n161), 
        .Y(n127) );
  INVX2M U87 ( .A(n128), .Y(n158) );
  AOI221XLM U88 ( .A0(ALU_OUT[11]), .A1(n12), .B0(N122), .B1(n126), .C0(n161), 
        .Y(n128) );
  INVX2M U89 ( .A(n125), .Y(n160) );
  AOI221XLM U90 ( .A0(ALU_OUT[9]), .A1(n12), .B0(N120), .B1(n126), .C0(n161), 
        .Y(n125) );
  OAI211X2M U91 ( .A0(n120), .A1(n162), .B0(n121), .C0(n122), .Y(n143) );
  NAND2X2M U92 ( .A(ALU_OUT[8]), .B(n12), .Y(n122) );
  AOI222X1M U93 ( .A0(N101), .A1(n61), .B0(n11), .B1(n115), .C0(N119), .C1(n58), .Y(n120) );
  AO21XLM U94 ( .A0(ALU_OUT[5]), .A1(n12), .B0(n94), .Y(n140) );
  AOI31X2M U95 ( .A0(n95), .A1(n96), .A2(n97), .B0(n162), .Y(n94) );
  AOI221XLM U96 ( .A0(n10), .A1(n48), .B0(n13), .B1(n165), .C0(n98), .Y(n97)
         );
  AOI22X1M U97 ( .A0(N107), .A1(n60), .B0(N98), .B1(n61), .Y(n95) );
  AO21XLM U98 ( .A0(ALU_OUT[6]), .A1(n12), .B0(n101), .Y(n141) );
  AOI31X2M U99 ( .A0(n102), .A1(n103), .A2(n104), .B0(n162), .Y(n101) );
  AOI221XLM U100 ( .A0(n11), .A1(n48), .B0(n13), .B1(n164), .C0(n105), .Y(n104) );
  AOI22X1M U101 ( .A0(N108), .A1(n60), .B0(N99), .B1(n61), .Y(n102) );
  AO21XLM U102 ( .A0(ALU_OUT[7]), .A1(n12), .B0(n108), .Y(n142) );
  AOI31X2M U103 ( .A0(n109), .A1(n110), .A2(n111), .B0(n162), .Y(n108) );
  AOI221XLM U104 ( .A0(n13), .A1(n153), .B0(n11), .B1(n14), .C0(n112), .Y(n111) );
  AOI22X1M U105 ( .A0(N109), .A1(n60), .B0(N100), .B1(n61), .Y(n109) );
  INVX2M U106 ( .A(n27), .Y(n152) );
  NOR4BX1M U107 ( .AN(N161), .B(n175), .C(n72), .D(ALU_FUN[0]), .Y(n56) );
  INVX2M U108 ( .A(n16), .Y(n151) );
  OAI21X2M U109 ( .A0(B[0]), .A1(n53), .B0(n54), .Y(n46) );
  AOI221XLM U110 ( .A0(n4), .A1(n50), .B0(n57), .B1(n170), .C0(n13), .Y(n53)
         );
  AOI31X2M U111 ( .A0(N159), .A1(ALU_FUN[1]), .A2(n55), .B0(n56), .Y(n54) );
  NOR3X2M U112 ( .A(n175), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n55) );
  OAI21X2M U113 ( .A0(B[1]), .A1(n69), .B0(n70), .Y(n66) );
  AOI221XLM U114 ( .A0(n5), .A1(n50), .B0(n57), .B1(n169), .C0(n13), .Y(n69)
         );
  AOI31X2M U115 ( .A0(N160), .A1(ALU_FUN[0]), .A2(n71), .B0(n56), .Y(n70) );
  NOR3X2M U116 ( .A(n176), .B(ALU_FUN[2]), .C(n175), .Y(n71) );
  INVX2M U117 ( .A(B[0]), .Y(n147) );
  INVX2M U118 ( .A(B[2]), .Y(n148) );
  INVX2M U119 ( .A(B[3]), .Y(n149) );
  OAI222X1M U120 ( .A0(n78), .A1(n148), .B0(B[2]), .B1(n79), .C0(n169), .C1(
        n174), .Y(n77) );
  AOI221XLM U121 ( .A0(n50), .A1(n168), .B0(n6), .B1(n51), .C0(n14), .Y(n78)
         );
  AOI221XLM U122 ( .A0(n6), .A1(n50), .B0(n57), .B1(n168), .C0(n13), .Y(n79)
         );
  OAI222X1M U123 ( .A0(n85), .A1(n149), .B0(B[3]), .B1(n86), .C0(n174), .C1(
        n168), .Y(n84) );
  AOI221XLM U124 ( .A0(n50), .A1(n167), .B0(n7), .B1(n51), .C0(n14), .Y(n85)
         );
  AOI221XLM U125 ( .A0(n7), .A1(n50), .B0(n57), .B1(n167), .C0(n13), .Y(n86)
         );
  OAI222X1M U126 ( .A0(n92), .A1(n173), .B0(B[4]), .B1(n93), .C0(n174), .C1(
        n167), .Y(n91) );
  INVX2M U127 ( .A(B[4]), .Y(n173) );
  AOI221XLM U128 ( .A0(n50), .A1(n166), .B0(n8), .B1(n51), .C0(n14), .Y(n92)
         );
  AOI221XLM U129 ( .A0(n8), .A1(n50), .B0(n57), .B1(n166), .C0(n13), .Y(n93)
         );
  OAI222X1M U130 ( .A0(n99), .A1(n172), .B0(B[5]), .B1(n100), .C0(n174), .C1(
        n166), .Y(n98) );
  INVX2M U131 ( .A(B[5]), .Y(n172) );
  AOI221XLM U132 ( .A0(n50), .A1(n165), .B0(n9), .B1(n51), .C0(n14), .Y(n99)
         );
  AOI221XLM U133 ( .A0(n9), .A1(n50), .B0(n57), .B1(n165), .C0(n13), .Y(n100)
         );
  OAI222X1M U134 ( .A0(n113), .A1(n171), .B0(B[7]), .B1(n114), .C0(n174), .C1(
        n164), .Y(n112) );
  INVX2M U135 ( .A(B[7]), .Y(n171) );
  AOI221XLM U136 ( .A0(n50), .A1(n153), .B0(n11), .B1(n51), .C0(n14), .Y(n113)
         );
  AOI221XLM U137 ( .A0(n11), .A1(n50), .B0(n57), .B1(n153), .C0(n13), .Y(n114)
         );
  NOR3X2M U138 ( .A(n175), .B(ALU_FUN[0]), .C(n124), .Y(n115) );
  OAI2B2X1M U139 ( .A1N(B[1]), .A0(n68), .B0(n170), .B1(n174), .Y(n67) );
  AOI221XLM U140 ( .A0(n50), .A1(n169), .B0(n5), .B1(n51), .C0(n14), .Y(n68)
         );
  NOR2X2M U141 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n118) );
  AND3X2M U142 ( .A(n118), .B(ALU_FUN[3]), .C(n177), .Y(n50) );
  NAND2X2M U143 ( .A(ALU_FUN[0]), .B(n175), .Y(n119) );
  NAND2X2M U144 ( .A(ALU_FUN[2]), .B(n176), .Y(n72) );
  INVX2M U145 ( .A(ALU_FUN[3]), .Y(n175) );
  NAND2X2M U146 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n124) );
  NAND3X2M U147 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .C(n118), .Y(n117) );
  INVX2M U148 ( .A(ALU_FUN[0]), .Y(n177) );
  INVX2M U149 ( .A(ALU_FUN[1]), .Y(n176) );
  AO2B2X2M U150 ( .B0(n48), .B1(n5), .A0(B[0]), .A1N(n49), .Y(n47) );
  AOI221XLM U151 ( .A0(n50), .A1(n170), .B0(n4), .B1(n51), .C0(n14), .Y(n49)
         );
  NAND2BX2M U152 ( .AN(n15), .B(Enable), .Y(n134) );
  OAI32X1M U153 ( .A0(n163), .A1(n178), .A2(n15), .B0(OUT_VALID), .B1(n134), 
        .Y(n144) );
  NOR2X1M U154 ( .A(n153), .B(B[7]), .Y(n38) );
  NAND2BX1M U155 ( .AN(B[4]), .B(n8), .Y(n31) );
  NAND2BX1M U156 ( .AN(n8), .B(B[4]), .Y(n20) );
  CLKNAND2X2M U157 ( .A(n31), .B(n20), .Y(n33) );
  NOR2X1M U158 ( .A(n149), .B(n7), .Y(n28) );
  NOR2X1M U159 ( .A(n148), .B(n6), .Y(n19) );
  NOR2X1M U160 ( .A(n147), .B(n4), .Y(n16) );
  CLKNAND2X2M U161 ( .A(n6), .B(n148), .Y(n30) );
  NAND2BX1M U162 ( .AN(n19), .B(n30), .Y(n25) );
  AOI21X1M U163 ( .A0(n16), .A1(n169), .B0(B[1]), .Y(n17) );
  AOI211X1M U164 ( .A0(n5), .A1(n151), .B0(n25), .C0(n17), .Y(n18) );
  CLKNAND2X2M U165 ( .A(n7), .B(n149), .Y(n29) );
  OAI31X1M U166 ( .A0(n28), .A1(n19), .A2(n18), .B0(n29), .Y(n21) );
  NAND2BX1M U167 ( .AN(n9), .B(B[5]), .Y(n36) );
  OAI211X1M U168 ( .A0(n33), .A1(n21), .B0(n20), .C0(n36), .Y(n22) );
  NAND2BX1M U169 ( .AN(B[5]), .B(n9), .Y(n32) );
  XNOR2X1M U170 ( .A(n10), .B(n3), .Y(n35) );
  AOI32X1M U171 ( .A0(n22), .A1(n32), .A2(n35), .B0(n3), .B1(n164), .Y(n23) );
  CLKNAND2X2M U172 ( .A(B[7]), .B(n153), .Y(n39) );
  OAI21X1M U173 ( .A0(n38), .A1(n23), .B0(n39), .Y(N161) );
  CLKNAND2X2M U174 ( .A(n4), .B(n147), .Y(n26) );
  OA21X1M U175 ( .A0(n26), .A1(n169), .B0(B[1]), .Y(n24) );
  AOI211X1M U176 ( .A0(n26), .A1(n169), .B0(n25), .C0(n24), .Y(n27) );
  AOI31X1M U177 ( .A0(n152), .A1(n30), .A2(n29), .B0(n28), .Y(n34) );
  OAI2B11X1M U178 ( .A1N(n34), .A0(n33), .B0(n32), .C0(n31), .Y(n37) );
  AOI32X1M U179 ( .A0(n37), .A1(n36), .A2(n35), .B0(n10), .B1(n150), .Y(n145)
         );
  AOI2B1X1M U180 ( .A1N(n145), .A0(n39), .B0(n38), .Y(n146) );
  CLKINVX1M U181 ( .A(n146), .Y(N160) );
  NOR2X1M U182 ( .A(N161), .B(N160), .Y(N159) );
endmodule


module PULSE_GEN ( RST, CLK, LVL_SIG, PULSE_SIG );
  input RST, CLK, LVL_SIG;
  output PULSE_SIG;
  wire   pulse_done, n1;

  DFFRQX2M pulse_done_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(pulse_done) );
  DFFRQX2M PULSE_SIG_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(PULSE_SIG) );
  AOI2BB1X2M U3 ( .A0N(PULSE_SIG), .A1N(LVL_SIG), .B0(pulse_done), .Y(n1) );
endmodule


module delay_one_period ( CLK, Signal, Signal_delayed );
  input CLK, Signal;
  output Signal_delayed;


  DFFQX2M Signal_delayed_reg ( .D(Signal), .CK(CLK), .Q(Signal_delayed) );
endmodule


module FSM_TX ( CLK, nRESET, Data_Valid, PAR_EN, ser_done, mux_sel, busy, 
        ser_en );
  output [1:0] mux_sel;
  input CLK, nRESET, Data_Valid, PAR_EN, ser_done;
  output busy, ser_en;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n1, n2, n3, n4, n5, n6;
  wire   [2:0] state;

  DFFRQX2M ser_en_reg ( .D(n19), .CK(CLK), .RN(nRESET), .Q(ser_en) );
  DFFRQX2M busy_reg ( .D(n18), .CK(CLK), .RN(nRESET), .Q(busy) );
  DFFRQX2M \state_reg[2]  ( .D(n23), .CK(CLK), .RN(nRESET), .Q(state[2]) );
  DFFRQX2M \state_reg[1]  ( .D(n22), .CK(CLK), .RN(nRESET), .Q(state[1]) );
  DFFRQX2M \state_reg[0]  ( .D(n24), .CK(CLK), .RN(nRESET), .Q(state[0]) );
  DFFSQX2M \mux_sel_reg[0]  ( .D(n21), .CK(CLK), .SN(nRESET), .Q(mux_sel[0])
         );
  DFFRQX2M \mux_sel_reg[1]  ( .D(n20), .CK(CLK), .RN(nRESET), .Q(mux_sel[1])
         );
  INVX2M U3 ( .A(n11), .Y(n1) );
  NAND4BX1M U4 ( .AN(n23), .B(n10), .C(n2), .D(n15), .Y(n11) );
  OAI21X2M U5 ( .A0(n16), .A1(n3), .B0(n10), .Y(n22) );
  INVX2M U6 ( .A(n17), .Y(n3) );
  NAND2X2M U7 ( .A(n3), .B(n14), .Y(n9) );
  OAI2BB1X2M U8 ( .A0N(n17), .A1N(n16), .B0(n14), .Y(n23) );
  OAI21X2M U9 ( .A0(n2), .A1(n6), .B0(n10), .Y(n8) );
  OAI21X2M U10 ( .A0(n2), .A1(n6), .B0(n15), .Y(n24) );
  INVX2M U11 ( .A(n13), .Y(n2) );
  NOR3X2M U12 ( .A(state[0]), .B(state[2]), .C(n5), .Y(n17) );
  OAI2BB2X1M U13 ( .B0(n1), .B1(n7), .A0N(busy), .A1N(n1), .Y(n18) );
  NOR2X2M U14 ( .A(n8), .B(n9), .Y(n7) );
  OAI2BB2X1M U15 ( .B0(n1), .B1(n12), .A0N(mux_sel[0]), .A1N(n1), .Y(n21) );
  AOI21X2M U16 ( .A0(n13), .A1(n6), .B0(n9), .Y(n12) );
  NOR2BX2M U17 ( .AN(ser_done), .B(PAR_EN), .Y(n16) );
  NAND3X2M U18 ( .A(state[1]), .B(n4), .C(state[0]), .Y(n14) );
  NAND3X2M U19 ( .A(PAR_EN), .B(n17), .C(ser_done), .Y(n15) );
  INVX2M U20 ( .A(state[1]), .Y(n5) );
  INVX2M U21 ( .A(state[2]), .Y(n4) );
  AO22X1M U22 ( .A0(n11), .A1(n22), .B0(mux_sel[1]), .B1(n1), .Y(n20) );
  AO21XLM U23 ( .A0(ser_en), .A1(n1), .B0(n8), .Y(n19) );
  NOR2X2M U24 ( .A(state[1]), .B(state[0]), .Y(n13) );
  NAND3X2M U25 ( .A(n5), .B(n4), .C(state[0]), .Y(n10) );
  INVX2M U26 ( .A(Data_Valid), .Y(n6) );
endmodule


module mux ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI21X4M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_OUT) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module parity_calc ( PAR_TYP, P_DATA_save, par_bit );
  input [7:0] P_DATA_save;
  input PAR_TYP;
  output par_bit;
  wire   n1, n2, n3, n4;

  XNOR2X2M U1 ( .A(P_DATA_save[7]), .B(P_DATA_save[6]), .Y(n4) );
  XOR3XLM U2 ( .A(PAR_TYP), .B(n1), .C(n2), .Y(par_bit) );
  XOR3XLM U3 ( .A(P_DATA_save[1]), .B(P_DATA_save[0]), .C(n3), .Y(n2) );
  XOR3XLM U4 ( .A(P_DATA_save[5]), .B(P_DATA_save[4]), .C(n4), .Y(n1) );
  XNOR2X2M U5 ( .A(P_DATA_save[3]), .B(P_DATA_save[2]), .Y(n3) );
endmodule


module serializer ( CLK, nRESET, ser_en, P_DATA, ser_data, ser_done, 
        P_DATA_save );
  input [7:0] P_DATA;
  output [7:0] P_DATA_save;
  input CLK, nRESET, ser_en;
  output ser_data, ser_done;
  wire   N2, N3, N4, N11, n2, n5, n6, n8, n10, n13, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n1, n3, n4, n7, n9, n11, n12,
         n14, n28, n29, n30;

  DFFRQX2M \count_reg[2]  ( .D(n26), .CK(CLK), .RN(nRESET), .Q(N4) );
  DFFRQX2M \count_reg[1]  ( .D(n24), .CK(CLK), .RN(nRESET), .Q(N3) );
  DFFRX1M ser_done_reg ( .D(n25), .CK(CLK), .RN(nRESET), .Q(ser_done), .QN(n28) );
  DFFRQX2M \count_reg[0]  ( .D(n27), .CK(CLK), .RN(nRESET), .Q(N2) );
  DFFRQX2M ser_data_reg ( .D(n23), .CK(CLK), .RN(nRESET), .Q(ser_data) );
  DFFRQX2M \P_DATA_save_reg[5]  ( .D(n20), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[5]) );
  DFFRQX2M \P_DATA_save_reg[1]  ( .D(n16), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[1]) );
  DFFRQX2M \P_DATA_save_reg[4]  ( .D(n19), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[4]) );
  DFFRQX2M \P_DATA_save_reg[0]  ( .D(n15), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[0]) );
  DFFRQX2M \P_DATA_save_reg[3]  ( .D(n18), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[3]) );
  DFFRQX2M \P_DATA_save_reg[6]  ( .D(n21), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[6]) );
  DFFRQX2M \P_DATA_save_reg[2]  ( .D(n17), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[2]) );
  DFFRQX2M \P_DATA_save_reg[7]  ( .D(n22), .CK(CLK), .RN(nRESET), .Q(
        P_DATA_save[7]) );
  NOR2X2M U3 ( .A(n7), .B(n13), .Y(n6) );
  INVX2M U4 ( .A(n13), .Y(n9) );
  NOR3X2M U5 ( .A(n30), .B(n11), .C(n29), .Y(n13) );
  OAI32X1M U6 ( .A0(n8), .A1(n11), .A2(n30), .B0(n13), .B1(n29), .Y(n26) );
  INVX2M U7 ( .A(n8), .Y(n7) );
  OAI21X2M U8 ( .A0(n1), .A1(n28), .B0(n9), .Y(n25) );
  INVX2M U9 ( .A(n1), .Y(n12) );
  OAI32X1M U10 ( .A0(n8), .A1(N3), .A2(n11), .B0(n10), .B1(n30), .Y(n24) );
  NOR2X2M U11 ( .A(n6), .B(n11), .Y(n10) );
  NAND3X2M U12 ( .A(n9), .B(n28), .C(ser_en), .Y(n8) );
  OAI2BB2X1M U13 ( .B0(N2), .B1(n8), .A0N(N2), .A1N(n6), .Y(n27) );
  OAI21X2M U14 ( .A0(n14), .A1(n9), .B0(n5), .Y(n23) );
  AOI22X1M U15 ( .A0(ser_data), .A1(n6), .B0(N11), .B1(n7), .Y(n5) );
  MX2X2M U16 ( .A(n4), .B(n3), .S0(N4), .Y(N11) );
  MX4X1M U17 ( .A(P_DATA_save[4]), .B(P_DATA_save[5]), .C(P_DATA_save[6]), .D(
        P_DATA_save[7]), .S0(N2), .S1(N3), .Y(n3) );
  INVX2M U18 ( .A(N2), .Y(n11) );
  MX4X1M U19 ( .A(P_DATA_save[0]), .B(P_DATA_save[1]), .C(P_DATA_save[2]), .D(
        P_DATA_save[3]), .S0(N2), .S1(N3), .Y(n4) );
  OAI2BB2X1M U20 ( .B0(n1), .B1(n14), .A0N(P_DATA[7]), .A1N(n1), .Y(n22) );
  INVX2M U21 ( .A(N3), .Y(n30) );
  INVX2M U22 ( .A(N4), .Y(n29) );
  AO22X1M U23 ( .A0(P_DATA_save[0]), .A1(n12), .B0(P_DATA[0]), .B1(n1), .Y(n15) );
  AO22X1M U24 ( .A0(P_DATA_save[1]), .A1(n12), .B0(P_DATA[1]), .B1(n1), .Y(n16) );
  AO22X1M U25 ( .A0(P_DATA_save[2]), .A1(n12), .B0(P_DATA[2]), .B1(n1), .Y(n17) );
  AO22X1M U26 ( .A0(P_DATA_save[3]), .A1(n12), .B0(P_DATA[3]), .B1(n1), .Y(n18) );
  AO22X1M U27 ( .A0(P_DATA_save[4]), .A1(n12), .B0(P_DATA[4]), .B1(n1), .Y(n19) );
  AO22X1M U28 ( .A0(P_DATA_save[5]), .A1(n12), .B0(P_DATA[5]), .B1(n1), .Y(n20) );
  AO22X1M U29 ( .A0(P_DATA_save[6]), .A1(n12), .B0(P_DATA[6]), .B1(n1), .Y(n21) );
  BUFX2M U30 ( .A(n2), .Y(n1) );
  NOR3X2M U31 ( .A(N3), .B(N4), .C(N2), .Y(n2) );
  INVX2M U32 ( .A(P_DATA_save[7]), .Y(n14) );
endmodule


module UART_TX_TOP ( CLK, nRESET, P_DATA, Data_Valid, PAR_EN, PAR_TYP, TX_OUT, 
        busy );
  input [7:0] P_DATA;
  input CLK, nRESET, Data_Valid, PAR_EN, PAR_TYP;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;
  wire   [7:0] P_DATA_save;

  FSM_TX linkFSM ( .CLK(CLK), .nRESET(n1), .Data_Valid(Data_Valid), .PAR_EN(
        PAR_EN), .ser_done(ser_done), .mux_sel(mux_sel), .busy(busy), .ser_en(
        ser_en) );
  mux linkmux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  parity_calc linkparity_calc ( .PAR_TYP(PAR_TYP), .P_DATA_save(P_DATA_save), 
        .par_bit(par_bit) );
  serializer linkserializer ( .CLK(CLK), .nRESET(n1), .ser_en(ser_en), 
        .P_DATA(P_DATA), .ser_data(ser_data), .ser_done(ser_done), 
        .P_DATA_save(P_DATA_save) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(nRESET), .Y(n2) );
endmodule


module FSM_RX ( CLK, nRESET, RX_IN, PAR_EN, par_err, strt_glitch, stp_err, 
        bit_cnt, edge_cnt, Prescale, dat_samp_en, enable, deser_en, data_valid, 
        stp_chk_en, strt_chk_en, par_chk_en );
  input [3:0] bit_cnt;
  input [4:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, nRESET, RX_IN, PAR_EN, par_err, strt_glitch, stp_err;
  output dat_samp_en, enable, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en;
  wire   N30, N31, N32, N33, N34, N35, N36, N38, N39, N40, N41, N42, N43, N44,
         N45, N96, N97, N98, N99, N100, N101, N102, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, \add_119/carry[4] , \add_119/carry[3] ,
         \r99/carry[4] , \r99/carry[3] , \r99/carry[2] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n74, n75, n76, n77, n78, n79;
  wire   [2:0] state;
  assign N96 = Prescale[1];

  DFFRQX2M data_valid_reg ( .D(n29), .CK(CLK), .RN(nRESET), .Q(data_valid) );
  DFFRQX2M dat_samp_en_reg ( .D(n69), .CK(CLK), .RN(nRESET), .Q(dat_samp_en)
         );
  DFFRQX2M strt_chk_en_reg ( .D(n67), .CK(CLK), .RN(nRESET), .Q(strt_chk_en)
         );
  DFFRQX2M deser_en_reg ( .D(n68), .CK(CLK), .RN(nRESET), .Q(deser_en) );
  DFFRQX2M enable_reg ( .D(n70), .CK(CLK), .RN(nRESET), .Q(enable) );
  DFFRQX2M \state_reg[1]  ( .D(n71), .CK(CLK), .RN(nRESET), .Q(state[1]) );
  DFFRQX2M \state_reg[2]  ( .D(n72), .CK(CLK), .RN(nRESET), .Q(state[2]) );
  DFFRQX2M \state_reg[0]  ( .D(n73), .CK(CLK), .RN(nRESET), .Q(state[0]) );
  DFFRQX2M stp_chk_en_reg ( .D(n66), .CK(CLK), .RN(nRESET), .Q(stp_chk_en) );
  DFFRQX2M par_chk_en_reg ( .D(n65), .CK(CLK), .RN(nRESET), .Q(par_chk_en) );
  NOR3X2M U3 ( .A(state[0]), .B(state[2]), .C(n77), .Y(n45) );
  NOR2X2M U4 ( .A(n51), .B(n31), .Y(n49) );
  INVX2M U5 ( .A(n56), .Y(n32) );
  INVX2M U6 ( .A(n50), .Y(n74) );
  INVX2M U7 ( .A(RX_IN), .Y(n79) );
  OAI21X2M U8 ( .A0(n62), .A1(n74), .B0(n79), .Y(n53) );
  NOR2X2M U9 ( .A(stp_err), .B(n51), .Y(n62) );
  OAI211X2M U10 ( .A0(n75), .A1(n57), .B0(n58), .C0(n53), .Y(n73) );
  NAND4BX1M U11 ( .AN(n61), .B(n52), .C(n63), .D(n51), .Y(n57) );
  OAI21X2M U12 ( .A0(n46), .A1(n38), .B0(n32), .Y(n63) );
  NAND2X2M U13 ( .A(N45), .B(n34), .Y(n51) );
  NOR3BX2M U14 ( .AN(N45), .B(n36), .C(par_err), .Y(n61) );
  NAND2X2M U15 ( .A(N45), .B(n39), .Y(n56) );
  NAND3BXLM U16 ( .AN(strt_glitch), .B(n76), .C(N45), .Y(n59) );
  OAI211X2M U17 ( .A0(n77), .A1(n57), .B0(n58), .C0(n59), .Y(n71) );
  INVX2M U18 ( .A(n54), .Y(n30) );
  OAI211X2M U19 ( .A0(n55), .A1(n56), .B0(n51), .C0(n50), .Y(n54) );
  AOI22X1M U20 ( .A0(strt_glitch), .A1(n46), .B0(par_err), .B1(n38), .Y(n55)
         );
  NAND3X2M U21 ( .A(n77), .B(n78), .C(n75), .Y(n50) );
  INVX2M U22 ( .A(stp_err), .Y(n31) );
  INVX2M U23 ( .A(n41), .Y(n34) );
  INVX2M U24 ( .A(n43), .Y(n76) );
  INVX2M U25 ( .A(n47), .Y(n29) );
  AOI32X1M U26 ( .A0(n34), .A1(n31), .A2(N102), .B0(data_valid), .B1(n48), .Y(
        n47) );
  OAI32X1M U27 ( .A0(n49), .A1(n74), .A2(n76), .B0(n50), .B1(n79), .Y(n48) );
  OAI2BB1X2M U28 ( .A0N(enable), .A1N(n30), .B0(n53), .Y(n70) );
  OAI2BB1X2M U29 ( .A0N(dat_samp_en), .A1N(n30), .B0(n53), .Y(n69) );
  OAI2B2X1M U30 ( .A1N(n57), .A0(n60), .B0(n78), .B1(n57), .Y(n72) );
  AOI2B1X1M U31 ( .A1N(PAR_EN), .A0(n45), .B0(n61), .Y(n60) );
  NAND3X2M U32 ( .A(n45), .B(n57), .C(PAR_EN), .Y(n58) );
  OAI2BB2X1M U33 ( .B0(n52), .B1(n43), .A0N(deser_en), .A1N(n52), .Y(n68) );
  AND3X2M U34 ( .A(n59), .B(n50), .C(n64), .Y(n52) );
  NAND4X2M U35 ( .A(n32), .B(n45), .C(bit_cnt[3]), .D(n33), .Y(n64) );
  NOR3BX2M U36 ( .AN(bit_cnt[3]), .B(n33), .C(n36), .Y(n38) );
  OAI2BB2X1M U37 ( .B0(n40), .B1(n41), .A0N(stp_chk_en), .A1N(n40), .Y(n66) );
  AOI211X2M U38 ( .A0(N36), .A1(n34), .B0(n76), .C0(n74), .Y(n40) );
  OAI2BB2X1M U39 ( .B0(n42), .B1(n43), .A0N(strt_chk_en), .A1N(n42), .Y(n67)
         );
  NOR3BX2M U40 ( .AN(n44), .B(n45), .C(n74), .Y(n42) );
  NAND3X2M U41 ( .A(N36), .B(n39), .C(n46), .Y(n44) );
  OAI2BB2X1M U42 ( .B0(n35), .B1(n36), .A0N(par_chk_en), .A1N(n35), .Y(n65) );
  NOR3BX2M U43 ( .AN(n37), .B(n34), .C(n74), .Y(n35) );
  NAND3X2M U44 ( .A(n38), .B(n39), .C(N36), .Y(n37) );
  INVX2M U45 ( .A(bit_cnt[0]), .Y(n33) );
  NOR3X2M U46 ( .A(bit_cnt[0]), .B(bit_cnt[3]), .C(n43), .Y(n46) );
  NOR2X2M U47 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n39) );
  NAND3X2M U48 ( .A(n77), .B(n78), .C(state[0]), .Y(n43) );
  NAND3X2M U49 ( .A(n75), .B(n77), .C(state[2]), .Y(n41) );
  INVX2M U50 ( .A(state[1]), .Y(n77) );
  NAND3X2M U51 ( .A(state[0]), .B(n78), .C(state[1]), .Y(n36) );
  INVX2M U52 ( .A(state[2]), .Y(n78) );
  INVX2M U53 ( .A(state[0]), .Y(n75) );
  OR2X2M U54 ( .A(N96), .B(Prescale[0]), .Y(n1) );
  INVX2M U55 ( .A(Prescale[2]), .Y(N97) );
  ADDHX1M U56 ( .A(Prescale[2]), .B(N96), .CO(\r99/carry[2] ), .S(N31) );
  ADDHX1M U57 ( .A(Prescale[4]), .B(\r99/carry[3] ), .CO(\r99/carry[4] ), .S(
        N33) );
  ADDHX1M U58 ( .A(Prescale[3]), .B(\r99/carry[2] ), .CO(\r99/carry[3] ), .S(
        N32) );
  ADDHX1M U59 ( .A(Prescale[5]), .B(\r99/carry[4] ), .CO(N35), .S(N34) );
  AND2X1M U60 ( .A(\add_119/carry[4] ), .B(Prescale[5]), .Y(N101) );
  CLKXOR2X2M U61 ( .A(Prescale[5]), .B(\add_119/carry[4] ), .Y(N100) );
  AND2X1M U62 ( .A(\add_119/carry[3] ), .B(Prescale[4]), .Y(\add_119/carry[4] ) );
  CLKXOR2X2M U63 ( .A(Prescale[4]), .B(\add_119/carry[3] ), .Y(N99) );
  AND2X1M U64 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\add_119/carry[3] ) );
  CLKXOR2X2M U65 ( .A(Prescale[3]), .B(Prescale[2]), .Y(N98) );
  CLKINVX1M U66 ( .A(N96), .Y(N30) );
  CLKINVX1M U67 ( .A(Prescale[0]), .Y(N38) );
  OAI2BB1X1M U68 ( .A0N(Prescale[0]), .A1N(N96), .B0(n1), .Y(N39) );
  OR2X1M U69 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U70 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N40) );
  OR2X1M U71 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U72 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N41) );
  OR2X1M U73 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U74 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N42) );
  NOR2X1M U75 ( .A(n4), .B(Prescale[5]), .Y(N44) );
  AO21XLM U76 ( .A0(n4), .A1(Prescale[5]), .B0(N44), .Y(N43) );
  NOR2BX1M U77 ( .AN(N30), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U78 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N31), .B1(n5), .Y(n8) );
  NOR2BX1M U79 ( .AN(edge_cnt[0]), .B(N30), .Y(n6) );
  OAI2B2X1M U80 ( .A1N(N31), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND3BX1M U81 ( .AN(N35), .B(n8), .C(n7), .Y(n12) );
  CLKXOR2X2M U82 ( .A(N34), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U83 ( .A(N32), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U84 ( .A(N33), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U85 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N36) );
  NOR2BX1M U86 ( .AN(edge_cnt[0]), .B(N38), .Y(n13) );
  OAI2B2X1M U87 ( .A1N(N39), .A0(n13), .B0(edge_cnt[1]), .B1(n13), .Y(n16) );
  NOR2BX1M U88 ( .AN(N38), .B(edge_cnt[0]), .Y(n14) );
  OAI2B2X1M U89 ( .A1N(edge_cnt[1]), .A0(n14), .B0(N39), .B1(n14), .Y(n15) );
  NAND4BBX1M U90 ( .AN(N44), .BN(N43), .C(n16), .D(n15), .Y(n20) );
  CLKXOR2X2M U91 ( .A(N42), .B(edge_cnt[4]), .Y(n19) );
  CLKXOR2X2M U92 ( .A(N40), .B(edge_cnt[2]), .Y(n18) );
  CLKXOR2X2M U93 ( .A(N41), .B(edge_cnt[3]), .Y(n17) );
  NOR4X1M U94 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(N45) );
  NOR2BX1M U95 ( .AN(N96), .B(edge_cnt[0]), .Y(n21) );
  OAI2B2X1M U96 ( .A1N(edge_cnt[1]), .A0(n21), .B0(N97), .B1(n21), .Y(n24) );
  NOR2BX1M U97 ( .AN(edge_cnt[0]), .B(N96), .Y(n22) );
  OAI2B2X1M U98 ( .A1N(N97), .A0(n22), .B0(edge_cnt[1]), .B1(n22), .Y(n23) );
  NAND3BX1M U99 ( .AN(N101), .B(n24), .C(n23), .Y(n28) );
  CLKXOR2X2M U100 ( .A(N100), .B(edge_cnt[4]), .Y(n27) );
  CLKXOR2X2M U101 ( .A(N98), .B(edge_cnt[2]), .Y(n26) );
  CLKXOR2X2M U102 ( .A(N99), .B(edge_cnt[3]), .Y(n25) );
  NOR4X1M U103 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(N102) );
endmodule


module parity_Check ( nRESET, PAR_TYP, par_chk_en, sampled_bit, P_DATA, 
        par_err );
  input [7:0] P_DATA;
  input nRESET, PAR_TYP, par_chk_en, sampled_bit;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;

  AND3X2M U2 ( .A(nRESET), .B(n1), .C(par_chk_en), .Y(par_err) );
  XOR3XLM U3 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
  CLKXOR2X2M U5 ( .A(sampled_bit), .B(PAR_TYP), .Y(n2) );
  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  XNOR2X2M U8 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
endmodule


module Stop_Check ( nRESET, stp_chk_en, sampled_bit, stp_err );
  input nRESET, stp_chk_en, sampled_bit;
  output stp_err;
  wire   n1;

  AND3X2M U2 ( .A(n1), .B(nRESET), .C(stp_chk_en), .Y(stp_err) );
  INVX2M U3 ( .A(sampled_bit), .Y(n1) );
endmodule


module strt_Check ( nRESET, strt_chk_en, sampled_bit, strt_glitch );
  input nRESET, strt_chk_en, sampled_bit;
  output strt_glitch;


  AND3X2M U2 ( .A(sampled_bit), .B(nRESET), .C(strt_chk_en), .Y(strt_glitch)
         );
endmodule


module edge_bit_counter ( enable, CLK, nRESET, PAR_EN, Prescale, bit_cnt, 
        edge_cnt );
  input [5:0] Prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input enable, CLK, nRESET, PAR_EN;
  wire   N10, N11, N12, N14, N15, N16, N17, N18, N19, N20, N21, N38, N69, N70,
         N71, N72, N73, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, \add_22/carry[4] ,
         \add_22/carry[3] , \add_22/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n10, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41;

  DFFRX1M \bit_cnt_reg[3]  ( .D(n27), .CK(CLK), .RN(nRESET), .Q(bit_cnt[3]), 
        .QN(n9) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n24), .CK(CLK), .RN(nRESET), .Q(bit_cnt[2])
         );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N73), .CK(CLK), .RN(nRESET), .Q(edge_cnt[4])
         );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N69), .CK(CLK), .RN(nRESET), .Q(edge_cnt[0])
         );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N71), .CK(CLK), .RN(nRESET), .Q(edge_cnt[2])
         );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N72), .CK(CLK), .RN(nRESET), .Q(edge_cnt[3])
         );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N70), .CK(CLK), .RN(nRESET), .Q(edge_cnt[1])
         );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n25), .CK(CLK), .RN(nRESET), .Q(bit_cnt[1])
         );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n26), .CK(CLK), .RN(nRESET), .Q(bit_cnt[0])
         );
  NAND2X2M U3 ( .A(n40), .B(n16), .Y(n15) );
  NAND2BX2M U4 ( .AN(N21), .B(n40), .Y(n16) );
  NOR2BX2M U5 ( .AN(N12), .B(n16), .Y(N72) );
  NOR2BX2M U6 ( .AN(N11), .B(n16), .Y(N71) );
  NOR2BX2M U7 ( .AN(N10), .B(n16), .Y(N70) );
  INVX2M U8 ( .A(n20), .Y(n40) );
  OAI32X1M U9 ( .A0(n17), .A1(n15), .A2(n18), .B0(n19), .B1(n9), .Y(n27) );
  NAND2X2M U10 ( .A(bit_cnt[0]), .B(n9), .Y(n17) );
  AOI21X2M U11 ( .A0(n40), .A1(n18), .B0(n13), .Y(n19) );
  NAND2X2M U12 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n18) );
  OAI22X1M U13 ( .A0(n41), .A1(n16), .B0(bit_cnt[0]), .B1(n15), .Y(n26) );
  OAI21X2M U14 ( .A0(bit_cnt[0]), .A1(n20), .B0(n16), .Y(n13) );
  NOR2BX2M U15 ( .AN(enable), .B(n11), .Y(n24) );
  CLKXOR2X2M U16 ( .A(n12), .B(bit_cnt[2]), .Y(n11) );
  NAND3X2M U17 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(N21), .Y(n12) );
  INVX2M U18 ( .A(bit_cnt[0]), .Y(n41) );
  NAND3X2M U19 ( .A(n21), .B(n22), .C(enable), .Y(n20) );
  NAND4X2M U20 ( .A(PAR_EN), .B(n23), .C(bit_cnt[1]), .D(n41), .Y(n21) );
  NAND3BX2M U21 ( .AN(PAR_EN), .B(n14), .C(n23), .Y(n22) );
  NOR3BX2M U22 ( .AN(N38), .B(bit_cnt[2]), .C(n9), .Y(n23) );
  NOR2X2M U23 ( .A(n41), .B(bit_cnt[1]), .Y(n14) );
  NOR2X2M U24 ( .A(n1), .B(n16), .Y(N73) );
  XNOR2X2M U25 ( .A(\add_22/carry[4] ), .B(edge_cnt[4]), .Y(n1) );
  NOR2X2M U26 ( .A(edge_cnt[0]), .B(n16), .Y(N69) );
  AO2B2X2M U27 ( .B0(n13), .B1(bit_cnt[1]), .A0(n14), .A1N(n15), .Y(n25) );
  ADDHX1M U28 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_22/carry[2] ), .S(
        N10) );
  ADDHX1M U29 ( .A(edge_cnt[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N11) );
  ADDHX1M U30 ( .A(edge_cnt[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), 
        .S(N12) );
  OR2X2M U31 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  CLKINVX1M U32 ( .A(Prescale[0]), .Y(N14) );
  OAI2BB1X1M U33 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N15) );
  OR2X1M U34 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U35 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N16) );
  OR2X1M U36 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U37 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N17) );
  OR2X1M U38 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U39 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N18) );
  NOR2X1M U40 ( .A(n5), .B(Prescale[5]), .Y(N20) );
  AO21XLM U41 ( .A0(n5), .A1(Prescale[5]), .B0(N20), .Y(N19) );
  NOR2BX1M U42 ( .AN(N14), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U43 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N15), .B1(n6), .Y(n10) );
  NOR2BX1M U44 ( .AN(edge_cnt[0]), .B(N14), .Y(n7) );
  OAI2B2X1M U45 ( .A1N(N15), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND3BX1M U46 ( .AN(N19), .B(n10), .C(n8), .Y(n31) );
  CLKXOR2X2M U47 ( .A(N18), .B(edge_cnt[4]), .Y(n30) );
  CLKXOR2X2M U48 ( .A(N16), .B(edge_cnt[2]), .Y(n29) );
  CLKXOR2X2M U49 ( .A(N17), .B(edge_cnt[3]), .Y(n28) );
  NOR4X1M U50 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(N38) );
  NOR2BX1M U51 ( .AN(edge_cnt[0]), .B(N14), .Y(n32) );
  OAI2B2X1M U52 ( .A1N(N15), .A0(n32), .B0(edge_cnt[1]), .B1(n32), .Y(n35) );
  NOR2BX1M U53 ( .AN(N14), .B(edge_cnt[0]), .Y(n33) );
  OAI2B2X1M U54 ( .A1N(edge_cnt[1]), .A0(n33), .B0(N15), .B1(n33), .Y(n34) );
  NAND4BBX1M U55 ( .AN(N20), .BN(N19), .C(n35), .D(n34), .Y(n39) );
  CLKXOR2X2M U56 ( .A(N18), .B(edge_cnt[4]), .Y(n38) );
  CLKXOR2X2M U57 ( .A(N16), .B(edge_cnt[2]), .Y(n37) );
  CLKXOR2X2M U58 ( .A(N17), .B(edge_cnt[3]), .Y(n36) );
  NOR4X1M U59 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(N21) );
endmodule


module deserializer ( CLK, deser_en, sampled_bit, bit_cnt, Prescale, edge_cnt, 
        P_DATA );
  input [3:0] bit_cnt;
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  output [7:0] P_DATA;
  input CLK, deser_en, sampled_bit;
  wire   N9, N10, N11, N12, N13, N14, N15, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         \add_12/carry[4] , \add_12/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8,
         n30, n31, n32, n33;
  assign N9 = Prescale[1];

  DFFQX2M \P_DATA_reg[5]  ( .D(n27), .CK(CLK), .Q(P_DATA[5]) );
  DFFQX2M \P_DATA_reg[1]  ( .D(n23), .CK(CLK), .Q(P_DATA[1]) );
  DFFQX2M \P_DATA_reg[4]  ( .D(n26), .CK(CLK), .Q(P_DATA[4]) );
  DFFQX2M \P_DATA_reg[0]  ( .D(n22), .CK(CLK), .Q(P_DATA[0]) );
  DFFQX2M \P_DATA_reg[7]  ( .D(n29), .CK(CLK), .Q(P_DATA[7]) );
  DFFQX2M \P_DATA_reg[3]  ( .D(n25), .CK(CLK), .Q(P_DATA[3]) );
  DFFQX2M \P_DATA_reg[6]  ( .D(n28), .CK(CLK), .Q(P_DATA[6]) );
  DFFQX2M \P_DATA_reg[2]  ( .D(n24), .CK(CLK), .Q(P_DATA[2]) );
  NOR2BX2M U3 ( .AN(n19), .B(bit_cnt[3]), .Y(n10) );
  AND3X2M U4 ( .A(n10), .B(n33), .C(bit_cnt[1]), .Y(n12) );
  OAI2BB2X1M U5 ( .B0(n30), .B1(n11), .A0N(P_DATA[1]), .A1N(n11), .Y(n23) );
  NAND2X2M U6 ( .A(n12), .B(n31), .Y(n11) );
  OAI2BB2X1M U7 ( .B0(n9), .B1(n30), .A0N(P_DATA[0]), .A1N(n9), .Y(n22) );
  NAND4X2M U8 ( .A(bit_cnt[0]), .B(n10), .C(n32), .D(n33), .Y(n9) );
  OAI2BB2X1M U9 ( .B0(n30), .B1(n13), .A0N(P_DATA[2]), .A1N(n13), .Y(n24) );
  NAND2X2M U10 ( .A(n12), .B(bit_cnt[0]), .Y(n13) );
  OAI2BB2X1M U11 ( .B0(n30), .B1(n16), .A0N(P_DATA[4]), .A1N(n16), .Y(n26) );
  NAND3X2M U12 ( .A(bit_cnt[0]), .B(n32), .C(n15), .Y(n16) );
  OAI2BB2X1M U13 ( .B0(n30), .B1(n17), .A0N(P_DATA[5]), .A1N(n17), .Y(n27) );
  NAND3X2M U14 ( .A(bit_cnt[1]), .B(n31), .C(n15), .Y(n17) );
  OAI2BB2X1M U15 ( .B0(n30), .B1(n18), .A0N(P_DATA[6]), .A1N(n18), .Y(n28) );
  NAND3X2M U16 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n15), .Y(n18) );
  AND2X2M U17 ( .A(n10), .B(bit_cnt[2]), .Y(n15) );
  OAI2BB2X1M U18 ( .B0(n30), .B1(n14), .A0N(P_DATA[3]), .A1N(n14), .Y(n25) );
  NAND3X2M U19 ( .A(n31), .B(n32), .C(n15), .Y(n14) );
  AND2X2M U20 ( .A(deser_en), .B(N15), .Y(n19) );
  INVX2M U21 ( .A(bit_cnt[0]), .Y(n31) );
  INVX2M U22 ( .A(bit_cnt[1]), .Y(n32) );
  OAI2BB2X1M U23 ( .B0(n30), .B1(n20), .A0N(P_DATA[7]), .A1N(n20), .Y(n29) );
  NAND4X2M U24 ( .A(bit_cnt[3]), .B(n19), .C(n21), .D(n31), .Y(n20) );
  NOR2X2M U25 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n21) );
  INVX2M U26 ( .A(bit_cnt[2]), .Y(n33) );
  INVX2M U27 ( .A(sampled_bit), .Y(n30) );
  INVX2M U28 ( .A(Prescale[2]), .Y(N10) );
  AND2X1M U29 ( .A(\add_12/carry[4] ), .B(Prescale[5]), .Y(N14) );
  CLKXOR2X2M U30 ( .A(Prescale[5]), .B(\add_12/carry[4] ), .Y(N13) );
  AND2X1M U31 ( .A(\add_12/carry[3] ), .B(Prescale[4]), .Y(\add_12/carry[4] )
         );
  CLKXOR2X2M U32 ( .A(Prescale[4]), .B(\add_12/carry[3] ), .Y(N12) );
  AND2X1M U33 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\add_12/carry[3] ) );
  CLKXOR2X2M U34 ( .A(Prescale[3]), .B(Prescale[2]), .Y(N11) );
  NOR2BX1M U35 ( .AN(N9), .B(edge_cnt[0]), .Y(n1) );
  OAI2B2X1M U36 ( .A1N(edge_cnt[1]), .A0(n1), .B0(N10), .B1(n1), .Y(n4) );
  NOR2BX1M U37 ( .AN(edge_cnt[0]), .B(N9), .Y(n2) );
  OAI2B2X1M U38 ( .A1N(N10), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n3) );
  NAND3BX1M U39 ( .AN(N14), .B(n4), .C(n3), .Y(n8) );
  CLKXOR2X2M U40 ( .A(N13), .B(edge_cnt[4]), .Y(n7) );
  CLKXOR2X2M U41 ( .A(N11), .B(edge_cnt[2]), .Y(n6) );
  CLKXOR2X2M U42 ( .A(N12), .B(edge_cnt[3]), .Y(n5) );
  NOR4X1M U43 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N15) );
endmodule


module data_sampling ( CLK, RX_IN, dat_samp_en, edge_cnt, Prescale, 
        sampled_bit );
  input [4:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RX_IN, dat_samp_en;
  output sampled_bit;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, \r91/carry[4] ,
         \r91/carry[3] , \r91/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n37;
  wire   [2:0] saving;

  DFFQX2M \saving_reg[1]  ( .D(n36), .CK(CLK), .Q(saving[1]) );
  DFFQX2M \saving_reg[0]  ( .D(n35), .CK(CLK), .Q(saving[0]) );
  DFFQX2M sampled_bit_reg ( .D(n34), .CK(CLK), .Q(sampled_bit) );
  INVX2M U3 ( .A(RX_IN), .Y(n37) );
  OAI2BB2X1M U4 ( .B0(n37), .B1(n33), .A0N(n33), .A1N(saving[1]), .Y(n36) );
  NAND2X2M U5 ( .A(N10), .B(dat_samp_en), .Y(n33) );
  OAI2BB2X1M U6 ( .B0(n37), .B1(n32), .A0N(n32), .A1N(saving[0]), .Y(n35) );
  NAND2X2M U7 ( .A(N9), .B(dat_samp_en), .Y(n32) );
  OAI2BB2X1M U8 ( .B0(n28), .B1(n29), .A0N(sampled_bit), .A1N(n29), .Y(n34) );
  NAND2X2M U9 ( .A(dat_samp_en), .B(N17), .Y(n29) );
  AOI21X2M U10 ( .A0(RX_IN), .A1(n30), .B0(n31), .Y(n28) );
  NOR4BBX1M U11 ( .AN(saving[1]), .BN(saving[0]), .C(N9), .D(N10), .Y(n31) );
  OR4X1M U12 ( .A(N10), .B(N9), .C(saving[0]), .D(saving[1]), .Y(n30) );
  OR2X2M U13 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  ADDHX1M U14 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\r91/carry[2] ), .S(N12)
         );
  ADDHX1M U15 ( .A(Prescale[4]), .B(\r91/carry[3] ), .CO(\r91/carry[4] ), .S(
        N14) );
  ADDHX1M U16 ( .A(Prescale[3]), .B(\r91/carry[2] ), .CO(\r91/carry[3] ), .S(
        N13) );
  ADDHX1M U17 ( .A(Prescale[5]), .B(\r91/carry[4] ), .CO(N16), .S(N15) );
  CLKINVX1M U18 ( .A(Prescale[1]), .Y(N11) );
  OAI2BB1X1M U19 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n1), .Y(N4) );
  OR2X1M U20 ( .A(n1), .B(Prescale[3]), .Y(n2) );
  OAI2BB1X1M U21 ( .A0N(n1), .A1N(Prescale[3]), .B0(n2), .Y(N5) );
  XNOR2X1M U22 ( .A(Prescale[4]), .B(n2), .Y(N6) );
  NOR3X1M U23 ( .A(Prescale[4]), .B(Prescale[5]), .C(n2), .Y(N8) );
  OAI21X1M U24 ( .A0(Prescale[4]), .A1(n2), .B0(Prescale[5]), .Y(n3) );
  NAND2BX1M U25 ( .AN(N8), .B(n3), .Y(N7) );
  NOR2BX1M U26 ( .AN(N11), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U27 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N12), .B1(n4), .Y(n7) );
  NOR2BX1M U28 ( .AN(edge_cnt[0]), .B(N11), .Y(n5) );
  OAI2B2X1M U29 ( .A1N(N12), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n6) );
  NAND3BX1M U30 ( .AN(N16), .B(n7), .C(n6), .Y(n11) );
  CLKXOR2X2M U31 ( .A(N15), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U32 ( .A(N13), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U33 ( .A(N14), .B(edge_cnt[3]), .Y(n8) );
  NOR4X1M U34 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N17) );
  NOR2BX1M U35 ( .AN(N11), .B(edge_cnt[0]), .Y(n12) );
  OAI2B2X1M U36 ( .A1N(edge_cnt[1]), .A0(n12), .B0(N4), .B1(n12), .Y(n15) );
  NOR2BX1M U37 ( .AN(edge_cnt[0]), .B(N11), .Y(n13) );
  OAI2B2X1M U38 ( .A1N(N4), .A0(n13), .B0(edge_cnt[1]), .B1(n13), .Y(n14) );
  NAND3BX1M U39 ( .AN(N8), .B(n15), .C(n14), .Y(n19) );
  CLKXOR2X2M U40 ( .A(N7), .B(edge_cnt[4]), .Y(n18) );
  CLKXOR2X2M U41 ( .A(N5), .B(edge_cnt[2]), .Y(n17) );
  CLKXOR2X2M U42 ( .A(N6), .B(edge_cnt[3]), .Y(n16) );
  NOR4X1M U43 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(N9) );
  CLKXOR2X2M U44 ( .A(Prescale[3]), .B(edge_cnt[2]), .Y(n27) );
  NOR2BX1M U45 ( .AN(Prescale[1]), .B(edge_cnt[0]), .Y(n20) );
  OAI2B2X1M U46 ( .A1N(edge_cnt[1]), .A0(n20), .B0(Prescale[2]), .B1(n20), .Y(
        n23) );
  NOR2BX1M U47 ( .AN(edge_cnt[0]), .B(Prescale[1]), .Y(n21) );
  OAI2B2X1M U48 ( .A1N(Prescale[2]), .A0(n21), .B0(edge_cnt[1]), .B1(n21), .Y(
        n22) );
  CLKNAND2X2M U49 ( .A(n23), .B(n22), .Y(n26) );
  CLKXOR2X2M U50 ( .A(Prescale[4]), .B(edge_cnt[3]), .Y(n25) );
  CLKXOR2X2M U51 ( .A(Prescale[5]), .B(edge_cnt[4]), .Y(n24) );
  NOR4X1M U52 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(N10) );
endmodule


module UART_RX_TOP ( CLK, nRESET, RX_IN, PAR_EN, PAR_TYP, Prescale, data_valid, 
        P_DATA, par_err, stp_err );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, nRESET, RX_IN, PAR_EN, PAR_TYP;
  output data_valid, par_err, stp_err;
  wire   strt_glitch, dat_samp_en, enable, deser_en, stp_chk_en, strt_chk_en,
         par_chk_en, sampled_bit, n1, n2;
  wire   [3:0] bit_cnt;
  wire   [4:0] edge_cnt;

  FSM_RX FSM_block ( .CLK(CLK), .nRESET(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .par_err(par_err), .strt_glitch(strt_glitch), .stp_err(stp_err), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(Prescale), 
        .dat_samp_en(dat_samp_en), .enable(enable), .deser_en(deser_en), 
        .data_valid(data_valid), .stp_chk_en(stp_chk_en), .strt_chk_en(
        strt_chk_en), .par_chk_en(par_chk_en) );
  parity_Check parity_Check_block ( .nRESET(n1), .PAR_TYP(PAR_TYP), 
        .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .P_DATA(P_DATA), 
        .par_err(par_err) );
  Stop_Check Stop_Check_block ( .nRESET(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(stp_err) );
  strt_Check strt_Check_block ( .nRESET(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .strt_glitch(strt_glitch) );
  edge_bit_counter edge_bit_counter_block ( .enable(enable), .CLK(CLK), 
        .nRESET(n1), .PAR_EN(PAR_EN), .Prescale(Prescale), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt) );
  deserializer deserializer_block ( .CLK(CLK), .deser_en(deser_en), 
        .sampled_bit(sampled_bit), .bit_cnt(bit_cnt), .Prescale(Prescale), 
        .edge_cnt(edge_cnt), .P_DATA(P_DATA) );
  data_sampling data_sampling_block ( .CLK(CLK), .RX_IN(RX_IN), .dat_samp_en(
        dat_samp_en), .edge_cnt(edge_cnt), .Prescale(Prescale), .sampled_bit(
        sampled_bit) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(nRESET), .Y(n2) );
endmodule


module UART_TOP ( TX_CLK, RX_CLK, RST, Prescale, TX_IN_P, TX_IN_V, TX_OUT_S, 
        TX_OUT_V, RX_IN_S, RX_OUT_P, RX_OUT_V, parity_error, framing_error, 
        PAR_TYP, PAR_EN );
  input [5:0] Prescale;
  input [7:0] TX_IN_P;
  output [7:0] RX_OUT_P;
  input TX_CLK, RX_CLK, RST, TX_IN_V, RX_IN_S, PAR_TYP, PAR_EN;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  UART_TX_TOP UART_Tx ( .CLK(TX_CLK), .nRESET(n1), .P_DATA(TX_IN_P), 
        .Data_Valid(TX_IN_V), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V) );
  UART_RX_TOP UART_Rx ( .CLK(RX_CLK), .nRESET(n1), .RX_IN(RX_IN_S), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .Prescale(Prescale), .data_valid(RX_OUT_V), 
        .P_DATA(RX_OUT_P), .par_err(parity_error), .stp_err(framing_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module FIFO_WR ( wclk, wrst_n, winc, wq2_rptr, waddr, wptr, wfull );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input wclk, wrst_n, winc;
  output wfull;
  wire   n1, n2, n3, n6, n8, n9, n10, n11, n12, n13, n14, n15, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n4, n5,
         n7, n16;
  wire   [3:0] wptr_bin;

  DFFRQX2M \wptr_bin_reg[3]  ( .D(n27), .CK(wclk), .RN(wrst_n), .Q(wptr_bin[3]) );
  DFFRQX2M \waddr_reg[2]  ( .D(n21), .CK(wclk), .RN(wrst_n), .Q(waddr[2]) );
  DFFRQX2M \wptr_bin_reg[2]  ( .D(n28), .CK(wclk), .RN(wrst_n), .Q(wptr_bin[2]) );
  DFFRQX2M \wptr_bin_reg[1]  ( .D(n29), .CK(wclk), .RN(wrst_n), .Q(wptr_bin[1]) );
  DFFRQX2M \wptr_bin_reg[0]  ( .D(n30), .CK(wclk), .RN(wrst_n), .Q(wptr_bin[0]) );
  DFFRQX2M \waddr_reg[1]  ( .D(n22), .CK(wclk), .RN(wrst_n), .Q(waddr[1]) );
  DFFRQX2M \waddr_reg[0]  ( .D(n23), .CK(wclk), .RN(wrst_n), .Q(waddr[0]) );
  DFFRQX2M \wptr_reg[1]  ( .D(n26), .CK(wclk), .RN(wrst_n), .Q(wptr[1]) );
  DFFRQX2M \wptr_reg[0]  ( .D(n31), .CK(wclk), .RN(wrst_n), .Q(wptr[0]) );
  DFFRQX2M \wptr_reg[2]  ( .D(n25), .CK(wclk), .RN(wrst_n), .Q(wptr[2]) );
  DFFRQX2M \wptr_reg[3]  ( .D(n24), .CK(wclk), .RN(wrst_n), .Q(wptr[3]) );
  INVX2M U3 ( .A(n1), .Y(wfull) );
  NOR2X2M U4 ( .A(n2), .B(n9), .Y(n3) );
  INVX2M U5 ( .A(n2), .Y(n4) );
  INVX2M U6 ( .A(n8), .Y(n16) );
  INVX2M U7 ( .A(n12), .Y(n7) );
  NAND4X2M U8 ( .A(n17), .B(n18), .C(n19), .D(n20), .Y(n1) );
  XNOR2X2M U9 ( .A(wptr[0]), .B(wq2_rptr[0]), .Y(n17) );
  XNOR2X2M U10 ( .A(wptr[1]), .B(wq2_rptr[1]), .Y(n18) );
  CLKXOR2X2M U11 ( .A(wq2_rptr[2]), .B(wptr[2]), .Y(n19) );
  CLKXOR2X2M U12 ( .A(wq2_rptr[3]), .B(wptr[3]), .Y(n20) );
  NAND2X2M U13 ( .A(winc), .B(n1), .Y(n2) );
  XNOR2X2M U14 ( .A(wptr_bin[3]), .B(n10), .Y(n8) );
  XNOR2X2M U15 ( .A(wptr_bin[0]), .B(n2), .Y(n30) );
  OAI2BB2X1M U16 ( .B0(n7), .B1(n2), .A0N(waddr[1]), .A1N(n2), .Y(n22) );
  OAI2BB2X1M U17 ( .B0(wptr_bin[0]), .B1(n2), .A0N(waddr[0]), .A1N(n2), .Y(n23) );
  OAI2BB2X1M U18 ( .B0(n16), .B1(n2), .A0N(n2), .A1N(wptr[3]), .Y(n24) );
  OAI2BB2X1M U19 ( .B0(wptr_bin[1]), .B1(n2), .A0N(n2), .A1N(wptr[0]), .Y(n31)
         );
  NAND2BX2M U20 ( .AN(n14), .B(wptr_bin[2]), .Y(n10) );
  NAND2X2M U21 ( .A(wptr_bin[1]), .B(wptr_bin[0]), .Y(n14) );
  CLKXOR2X2M U22 ( .A(n14), .B(wptr_bin[2]), .Y(n9) );
  CLKXOR2X2M U23 ( .A(wptr_bin[0]), .B(wptr_bin[1]), .Y(n12) );
  OAI2BB1X2M U24 ( .A0N(n2), .A1N(wptr[2]), .B0(n6), .Y(n25) );
  AOI32X1M U25 ( .A0(n4), .A1(n8), .A2(n9), .B0(n3), .B1(n16), .Y(n6) );
  OAI2BB1X2M U26 ( .A0N(n2), .A1N(wptr[1]), .B0(n11), .Y(n26) );
  AOI32X1M U27 ( .A0(n4), .A1(n12), .A2(n9), .B0(n7), .B1(n3), .Y(n11) );
  AO21XLM U28 ( .A0(waddr[2]), .A1(n2), .B0(n3), .Y(n21) );
  AO21XLM U29 ( .A0(n2), .A1(wptr_bin[2]), .B0(n3), .Y(n28) );
  CLKXOR2X2M U30 ( .A(wptr_bin[3]), .B(n13), .Y(n27) );
  NOR2X2M U31 ( .A(n2), .B(n10), .Y(n13) );
  CLKXOR2X2M U32 ( .A(wptr_bin[1]), .B(n15), .Y(n29) );
  NOR2X2M U33 ( .A(n5), .B(n2), .Y(n15) );
  INVX2M U34 ( .A(wptr_bin[0]), .Y(n5) );
endmodule


module DF_SYNC_1 ( clk, rst_n, ptr, q2_ptr );
  input [3:0] ptr;
  output [3:0] q2_ptr;
  input clk, rst_n;

  wire   [3:0] ff1;

  DFFRQX2M \q2_ptr_reg[1]  ( .D(ff1[1]), .CK(clk), .RN(rst_n), .Q(q2_ptr[1])
         );
  DFFRQX2M \q2_ptr_reg[0]  ( .D(ff1[0]), .CK(clk), .RN(rst_n), .Q(q2_ptr[0])
         );
  DFFRQX2M \q2_ptr_reg[3]  ( .D(ff1[3]), .CK(clk), .RN(rst_n), .Q(q2_ptr[3])
         );
  DFFRQX2M \q2_ptr_reg[2]  ( .D(ff1[2]), .CK(clk), .RN(rst_n), .Q(q2_ptr[2])
         );
  DFFRQX2M \ff1_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(rst_n), .Q(ff1[3]) );
  DFFRQX2M \ff1_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(rst_n), .Q(ff1[2]) );
  DFFRQX2M \ff1_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(rst_n), .Q(ff1[1]) );
  DFFRQX2M \ff1_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(rst_n), .Q(ff1[0]) );
endmodule


module FIFO_RD ( rclk, rrst_n, rinc, rq2_wptr, rempty, raddr, rptr );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rclk, rrst_n, rinc;
  output rempty;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n1, n2, n3, n29;
  wire   [3:0] rptr_bin;

  DFFRQX2M \rptr_bin_reg[3]  ( .D(n24), .CK(rclk), .RN(rrst_n), .Q(rptr_bin[3]) );
  DFFRQX2M \rptr_reg[0]  ( .D(n28), .CK(rclk), .RN(rrst_n), .Q(rptr[0]) );
  DFFRQX2M \rptr_reg[3]  ( .D(n21), .CK(rclk), .RN(rrst_n), .Q(rptr[3]) );
  DFFRQX2M \rptr_reg[2]  ( .D(n22), .CK(rclk), .RN(rrst_n), .Q(rptr[2]) );
  DFFRQX2M \rptr_reg[1]  ( .D(n23), .CK(rclk), .RN(rrst_n), .Q(rptr[1]) );
  DFFRQX2M \raddr_reg[2]  ( .D(n18), .CK(rclk), .RN(rrst_n), .Q(raddr[2]) );
  DFFRQX2M \rptr_bin_reg[2]  ( .D(n25), .CK(rclk), .RN(rrst_n), .Q(rptr_bin[2]) );
  DFFRQX2M \rptr_bin_reg[1]  ( .D(n26), .CK(rclk), .RN(rrst_n), .Q(rptr_bin[1]) );
  DFFRQX2M \rptr_bin_reg[0]  ( .D(n27), .CK(rclk), .RN(rrst_n), .Q(rptr_bin[0]) );
  DFFRQX2M \raddr_reg[1]  ( .D(n19), .CK(rclk), .RN(rrst_n), .Q(raddr[1]) );
  DFFRQX2M \raddr_reg[0]  ( .D(n20), .CK(rclk), .RN(rrst_n), .Q(raddr[0]) );
  INVX2M U3 ( .A(n10), .Y(n29) );
  INVX2M U4 ( .A(n6), .Y(n2) );
  XNOR2X2M U5 ( .A(rptr_bin[3]), .B(n11), .Y(n7) );
  NOR2BX2M U6 ( .AN(rptr_bin[2]), .B(n12), .Y(n11) );
  XNOR2X2M U7 ( .A(n12), .B(rptr_bin[2]), .Y(n10) );
  XNOR2X2M U8 ( .A(rptr[1]), .B(rq2_wptr[1]), .Y(n14) );
  NAND2X2M U9 ( .A(rinc), .B(n4), .Y(n1) );
  NAND4X2M U10 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n4) );
  XNOR2X2M U11 ( .A(rptr[3]), .B(rq2_wptr[3]), .Y(n16) );
  XNOR2X2M U12 ( .A(rptr[2]), .B(rq2_wptr[2]), .Y(n17) );
  XNOR2X2M U13 ( .A(rptr[0]), .B(rq2_wptr[0]), .Y(n15) );
  NAND2X2M U14 ( .A(rinc), .B(n4), .Y(n5) );
  XNOR2X2M U15 ( .A(rptr_bin[0]), .B(n1), .Y(n27) );
  OAI2BB2X1M U16 ( .B0(n5), .B1(n13), .A0N(n5), .A1N(rptr[0]), .Y(n28) );
  XNOR2X2M U17 ( .A(n3), .B(n2), .Y(n13) );
  OAI2BB2X1M U18 ( .B0(n9), .B1(n5), .A0N(n1), .A1N(rptr[1]), .Y(n23) );
  XNOR2X2M U19 ( .A(n10), .B(n2), .Y(n9) );
  OAI2BB2X1M U20 ( .B0(n7), .B1(n1), .A0N(n5), .A1N(rptr_bin[3]), .Y(n24) );
  OAI2BB2X1M U21 ( .B0(n8), .B1(n1), .A0N(n5), .A1N(rptr[2]), .Y(n22) );
  XNOR2X2M U22 ( .A(n7), .B(n29), .Y(n8) );
  OAI2BB2X1M U23 ( .B0(n7), .B1(n5), .A0N(n1), .A1N(rptr[3]), .Y(n21) );
  OAI2BB2X1M U24 ( .B0(n29), .B1(n5), .A0N(n1), .A1N(rptr_bin[2]), .Y(n25) );
  OAI2BB2X1M U25 ( .B0(n29), .B1(n1), .A0N(raddr[2]), .A1N(n5), .Y(n18) );
  OAI2BB2X1M U26 ( .B0(rptr_bin[0]), .B1(n1), .A0N(raddr[0]), .A1N(n5), .Y(n20) );
  OAI2BB2X1M U27 ( .B0(n6), .B1(n1), .A0N(n5), .A1N(rptr_bin[1]), .Y(n26) );
  OAI2BB2X1M U28 ( .B0(n6), .B1(n5), .A0N(raddr[1]), .A1N(n1), .Y(n19) );
  NAND2X2M U29 ( .A(rptr_bin[1]), .B(rptr_bin[0]), .Y(n12) );
  CLKXOR2X2M U30 ( .A(rptr_bin[1]), .B(n3), .Y(n6) );
  INVX2M U31 ( .A(n4), .Y(rempty) );
  INVX2M U32 ( .A(rptr_bin[0]), .Y(n3) );
endmodule


module DF_SYNC_0 ( clk, rst_n, ptr, q2_ptr );
  input [3:0] ptr;
  output [3:0] q2_ptr;
  input clk, rst_n;

  wire   [3:0] ff1;

  DFFRQX2M \q2_ptr_reg[3]  ( .D(ff1[3]), .CK(clk), .RN(rst_n), .Q(q2_ptr[3])
         );
  DFFRQX2M \q2_ptr_reg[2]  ( .D(ff1[2]), .CK(clk), .RN(rst_n), .Q(q2_ptr[2])
         );
  DFFRQX2M \q2_ptr_reg[1]  ( .D(ff1[1]), .CK(clk), .RN(rst_n), .Q(q2_ptr[1])
         );
  DFFRQX2M \q2_ptr_reg[0]  ( .D(ff1[0]), .CK(clk), .RN(rst_n), .Q(q2_ptr[0])
         );
  DFFRQX2M \ff1_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(rst_n), .Q(ff1[3]) );
  DFFRQX2M \ff1_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(rst_n), .Q(ff1[2]) );
  DFFRQX2M \ff1_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(rst_n), .Q(ff1[1]) );
  DFFRQX2M \ff1_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(rst_n), .Q(ff1[0]) );
endmodule


module FIFO_MEM_CNTRL ( wclk, waddr, raddr, wdata, winc, wfull, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, winc, wfull;
  wire   N9, N10, N11, \RAM[0][7] , \RAM[0][6] , \RAM[0][5] , \RAM[0][4] ,
         \RAM[0][3] , \RAM[0][2] , \RAM[0][1] , \RAM[0][0] , \RAM[1][7] ,
         \RAM[1][6] , \RAM[1][5] , \RAM[1][4] , \RAM[1][3] , \RAM[1][2] ,
         \RAM[1][1] , \RAM[1][0] , \RAM[2][7] , \RAM[2][6] , \RAM[2][5] ,
         \RAM[2][4] , \RAM[2][3] , \RAM[2][2] , \RAM[2][1] , \RAM[2][0] ,
         \RAM[3][7] , \RAM[3][6] , \RAM[3][5] , \RAM[3][4] , \RAM[3][3] ,
         \RAM[3][2] , \RAM[3][1] , \RAM[3][0] , \RAM[4][7] , \RAM[4][6] ,
         \RAM[4][5] , \RAM[4][4] , \RAM[4][3] , \RAM[4][2] , \RAM[4][1] ,
         \RAM[4][0] , \RAM[5][7] , \RAM[5][6] , \RAM[5][5] , \RAM[5][4] ,
         \RAM[5][3] , \RAM[5][2] , \RAM[5][1] , \RAM[5][0] , \RAM[6][7] ,
         \RAM[6][6] , \RAM[6][5] , \RAM[6][4] , \RAM[6][3] , \RAM[6][2] ,
         \RAM[6][1] , \RAM[6][0] , \RAM[7][7] , \RAM[7][6] , \RAM[7][5] ,
         \RAM[7][4] , \RAM[7][3] , \RAM[7][2] , \RAM[7][1] , \RAM[7][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102;

  DFFQX2M \RAM_reg[1][7]  ( .D(n78), .CK(wclk), .Q(\RAM[1][7] ) );
  DFFQX2M \RAM_reg[1][6]  ( .D(n77), .CK(wclk), .Q(\RAM[1][6] ) );
  DFFQX2M \RAM_reg[1][5]  ( .D(n76), .CK(wclk), .Q(\RAM[1][5] ) );
  DFFQX2M \RAM_reg[1][4]  ( .D(n75), .CK(wclk), .Q(\RAM[1][4] ) );
  DFFQX2M \RAM_reg[1][3]  ( .D(n74), .CK(wclk), .Q(\RAM[1][3] ) );
  DFFQX2M \RAM_reg[1][2]  ( .D(n73), .CK(wclk), .Q(\RAM[1][2] ) );
  DFFQX2M \RAM_reg[1][1]  ( .D(n72), .CK(wclk), .Q(\RAM[1][1] ) );
  DFFQX2M \RAM_reg[1][0]  ( .D(n71), .CK(wclk), .Q(\RAM[1][0] ) );
  DFFQX2M \RAM_reg[5][7]  ( .D(n46), .CK(wclk), .Q(\RAM[5][7] ) );
  DFFQX2M \RAM_reg[5][6]  ( .D(n45), .CK(wclk), .Q(\RAM[5][6] ) );
  DFFQX2M \RAM_reg[5][5]  ( .D(n44), .CK(wclk), .Q(\RAM[5][5] ) );
  DFFQX2M \RAM_reg[5][4]  ( .D(n43), .CK(wclk), .Q(\RAM[5][4] ) );
  DFFQX2M \RAM_reg[5][3]  ( .D(n42), .CK(wclk), .Q(\RAM[5][3] ) );
  DFFQX2M \RAM_reg[5][2]  ( .D(n41), .CK(wclk), .Q(\RAM[5][2] ) );
  DFFQX2M \RAM_reg[5][1]  ( .D(n40), .CK(wclk), .Q(\RAM[5][1] ) );
  DFFQX2M \RAM_reg[5][0]  ( .D(n39), .CK(wclk), .Q(\RAM[5][0] ) );
  DFFQX2M \RAM_reg[3][7]  ( .D(n62), .CK(wclk), .Q(\RAM[3][7] ) );
  DFFQX2M \RAM_reg[3][6]  ( .D(n61), .CK(wclk), .Q(\RAM[3][6] ) );
  DFFQX2M \RAM_reg[3][5]  ( .D(n60), .CK(wclk), .Q(\RAM[3][5] ) );
  DFFQX2M \RAM_reg[3][4]  ( .D(n59), .CK(wclk), .Q(\RAM[3][4] ) );
  DFFQX2M \RAM_reg[3][3]  ( .D(n58), .CK(wclk), .Q(\RAM[3][3] ) );
  DFFQX2M \RAM_reg[3][2]  ( .D(n57), .CK(wclk), .Q(\RAM[3][2] ) );
  DFFQX2M \RAM_reg[3][1]  ( .D(n56), .CK(wclk), .Q(\RAM[3][1] ) );
  DFFQX2M \RAM_reg[3][0]  ( .D(n55), .CK(wclk), .Q(\RAM[3][0] ) );
  DFFQX2M \RAM_reg[7][7]  ( .D(n30), .CK(wclk), .Q(\RAM[7][7] ) );
  DFFQX2M \RAM_reg[7][6]  ( .D(n29), .CK(wclk), .Q(\RAM[7][6] ) );
  DFFQX2M \RAM_reg[7][5]  ( .D(n28), .CK(wclk), .Q(\RAM[7][5] ) );
  DFFQX2M \RAM_reg[7][4]  ( .D(n27), .CK(wclk), .Q(\RAM[7][4] ) );
  DFFQX2M \RAM_reg[7][3]  ( .D(n26), .CK(wclk), .Q(\RAM[7][3] ) );
  DFFQX2M \RAM_reg[7][2]  ( .D(n25), .CK(wclk), .Q(\RAM[7][2] ) );
  DFFQX2M \RAM_reg[7][1]  ( .D(n24), .CK(wclk), .Q(\RAM[7][1] ) );
  DFFQX2M \RAM_reg[7][0]  ( .D(n23), .CK(wclk), .Q(\RAM[7][0] ) );
  DFFQX2M \RAM_reg[2][7]  ( .D(n70), .CK(wclk), .Q(\RAM[2][7] ) );
  DFFQX2M \RAM_reg[2][6]  ( .D(n69), .CK(wclk), .Q(\RAM[2][6] ) );
  DFFQX2M \RAM_reg[2][5]  ( .D(n68), .CK(wclk), .Q(\RAM[2][5] ) );
  DFFQX2M \RAM_reg[2][4]  ( .D(n67), .CK(wclk), .Q(\RAM[2][4] ) );
  DFFQX2M \RAM_reg[2][3]  ( .D(n66), .CK(wclk), .Q(\RAM[2][3] ) );
  DFFQX2M \RAM_reg[2][2]  ( .D(n65), .CK(wclk), .Q(\RAM[2][2] ) );
  DFFQX2M \RAM_reg[2][1]  ( .D(n64), .CK(wclk), .Q(\RAM[2][1] ) );
  DFFQX2M \RAM_reg[2][0]  ( .D(n63), .CK(wclk), .Q(\RAM[2][0] ) );
  DFFQX2M \RAM_reg[6][7]  ( .D(n38), .CK(wclk), .Q(\RAM[6][7] ) );
  DFFQX2M \RAM_reg[6][6]  ( .D(n37), .CK(wclk), .Q(\RAM[6][6] ) );
  DFFQX2M \RAM_reg[6][5]  ( .D(n36), .CK(wclk), .Q(\RAM[6][5] ) );
  DFFQX2M \RAM_reg[6][4]  ( .D(n35), .CK(wclk), .Q(\RAM[6][4] ) );
  DFFQX2M \RAM_reg[6][3]  ( .D(n34), .CK(wclk), .Q(\RAM[6][3] ) );
  DFFQX2M \RAM_reg[6][2]  ( .D(n33), .CK(wclk), .Q(\RAM[6][2] ) );
  DFFQX2M \RAM_reg[6][1]  ( .D(n32), .CK(wclk), .Q(\RAM[6][1] ) );
  DFFQX2M \RAM_reg[6][0]  ( .D(n31), .CK(wclk), .Q(\RAM[6][0] ) );
  DFFQX2M \RAM_reg[0][7]  ( .D(n86), .CK(wclk), .Q(\RAM[0][7] ) );
  DFFQX2M \RAM_reg[0][6]  ( .D(n85), .CK(wclk), .Q(\RAM[0][6] ) );
  DFFQX2M \RAM_reg[0][5]  ( .D(n84), .CK(wclk), .Q(\RAM[0][5] ) );
  DFFQX2M \RAM_reg[0][4]  ( .D(n83), .CK(wclk), .Q(\RAM[0][4] ) );
  DFFQX2M \RAM_reg[0][3]  ( .D(n82), .CK(wclk), .Q(\RAM[0][3] ) );
  DFFQX2M \RAM_reg[0][2]  ( .D(n81), .CK(wclk), .Q(\RAM[0][2] ) );
  DFFQX2M \RAM_reg[0][1]  ( .D(n80), .CK(wclk), .Q(\RAM[0][1] ) );
  DFFQX2M \RAM_reg[0][0]  ( .D(n79), .CK(wclk), .Q(\RAM[0][0] ) );
  DFFQX2M \RAM_reg[4][7]  ( .D(n54), .CK(wclk), .Q(\RAM[4][7] ) );
  DFFQX2M \RAM_reg[4][6]  ( .D(n53), .CK(wclk), .Q(\RAM[4][6] ) );
  DFFQX2M \RAM_reg[4][5]  ( .D(n52), .CK(wclk), .Q(\RAM[4][5] ) );
  DFFQX2M \RAM_reg[4][4]  ( .D(n51), .CK(wclk), .Q(\RAM[4][4] ) );
  DFFQX2M \RAM_reg[4][3]  ( .D(n50), .CK(wclk), .Q(\RAM[4][3] ) );
  DFFQX2M \RAM_reg[4][2]  ( .D(n49), .CK(wclk), .Q(\RAM[4][2] ) );
  DFFQX2M \RAM_reg[4][1]  ( .D(n48), .CK(wclk), .Q(\RAM[4][1] ) );
  DFFQX2M \RAM_reg[4][0]  ( .D(n47), .CK(wclk), .Q(\RAM[4][0] ) );
  NOR2BX2M U3 ( .AN(n16), .B(waddr[2]), .Y(n18) );
  NAND3X2M U4 ( .A(n93), .B(n94), .C(n18), .Y(n21) );
  NAND3X2M U5 ( .A(n93), .B(n94), .C(n12), .Y(n15) );
  NAND3X2M U6 ( .A(waddr[1]), .B(waddr[0]), .C(n18), .Y(n17) );
  NAND3X2M U7 ( .A(waddr[1]), .B(n93), .C(n18), .Y(n19) );
  NAND3X2M U8 ( .A(waddr[0]), .B(n94), .C(n18), .Y(n20) );
  OAI2BB2X1M U9 ( .B0(n102), .B1(n17), .A0N(\RAM[3][0] ), .A1N(n17), .Y(n55)
         );
  OAI2BB2X1M U10 ( .B0(n101), .B1(n17), .A0N(\RAM[3][1] ), .A1N(n17), .Y(n56)
         );
  OAI2BB2X1M U11 ( .B0(n100), .B1(n17), .A0N(\RAM[3][2] ), .A1N(n17), .Y(n57)
         );
  OAI2BB2X1M U12 ( .B0(n99), .B1(n17), .A0N(\RAM[3][3] ), .A1N(n17), .Y(n58)
         );
  OAI2BB2X1M U13 ( .B0(n98), .B1(n17), .A0N(\RAM[3][4] ), .A1N(n17), .Y(n59)
         );
  OAI2BB2X1M U14 ( .B0(n97), .B1(n17), .A0N(\RAM[3][5] ), .A1N(n17), .Y(n60)
         );
  OAI2BB2X1M U15 ( .B0(n96), .B1(n17), .A0N(\RAM[3][6] ), .A1N(n17), .Y(n61)
         );
  OAI2BB2X1M U16 ( .B0(n95), .B1(n17), .A0N(\RAM[3][7] ), .A1N(n17), .Y(n62)
         );
  OAI2BB2X1M U17 ( .B0(n102), .B1(n19), .A0N(\RAM[2][0] ), .A1N(n19), .Y(n63)
         );
  OAI2BB2X1M U18 ( .B0(n101), .B1(n19), .A0N(\RAM[2][1] ), .A1N(n19), .Y(n64)
         );
  OAI2BB2X1M U19 ( .B0(n100), .B1(n19), .A0N(\RAM[2][2] ), .A1N(n19), .Y(n65)
         );
  OAI2BB2X1M U20 ( .B0(n99), .B1(n19), .A0N(\RAM[2][3] ), .A1N(n19), .Y(n66)
         );
  OAI2BB2X1M U21 ( .B0(n98), .B1(n19), .A0N(\RAM[2][4] ), .A1N(n19), .Y(n67)
         );
  OAI2BB2X1M U22 ( .B0(n97), .B1(n19), .A0N(\RAM[2][5] ), .A1N(n19), .Y(n68)
         );
  OAI2BB2X1M U23 ( .B0(n96), .B1(n19), .A0N(\RAM[2][6] ), .A1N(n19), .Y(n69)
         );
  OAI2BB2X1M U24 ( .B0(n95), .B1(n19), .A0N(\RAM[2][7] ), .A1N(n19), .Y(n70)
         );
  OAI2BB2X1M U25 ( .B0(n102), .B1(n20), .A0N(\RAM[1][0] ), .A1N(n20), .Y(n71)
         );
  OAI2BB2X1M U26 ( .B0(n101), .B1(n20), .A0N(\RAM[1][1] ), .A1N(n20), .Y(n72)
         );
  OAI2BB2X1M U27 ( .B0(n100), .B1(n20), .A0N(\RAM[1][2] ), .A1N(n20), .Y(n73)
         );
  OAI2BB2X1M U28 ( .B0(n99), .B1(n20), .A0N(\RAM[1][3] ), .A1N(n20), .Y(n74)
         );
  OAI2BB2X1M U29 ( .B0(n98), .B1(n20), .A0N(\RAM[1][4] ), .A1N(n20), .Y(n75)
         );
  OAI2BB2X1M U30 ( .B0(n97), .B1(n20), .A0N(\RAM[1][5] ), .A1N(n20), .Y(n76)
         );
  OAI2BB2X1M U31 ( .B0(n96), .B1(n20), .A0N(\RAM[1][6] ), .A1N(n20), .Y(n77)
         );
  OAI2BB2X1M U32 ( .B0(n95), .B1(n20), .A0N(\RAM[1][7] ), .A1N(n20), .Y(n78)
         );
  OAI2BB2X1M U33 ( .B0(n102), .B1(n21), .A0N(\RAM[0][0] ), .A1N(n21), .Y(n79)
         );
  OAI2BB2X1M U34 ( .B0(n101), .B1(n21), .A0N(\RAM[0][1] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U35 ( .B0(n100), .B1(n21), .A0N(\RAM[0][2] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U36 ( .B0(n99), .B1(n21), .A0N(\RAM[0][3] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U37 ( .B0(n98), .B1(n21), .A0N(\RAM[0][4] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U38 ( .B0(n97), .B1(n21), .A0N(\RAM[0][5] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U39 ( .B0(n96), .B1(n21), .A0N(\RAM[0][6] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U40 ( .B0(n95), .B1(n21), .A0N(\RAM[0][7] ), .A1N(n21), .Y(n86)
         );
  NOR2BX2M U41 ( .AN(winc), .B(wfull), .Y(n16) );
  NAND3X2M U42 ( .A(n12), .B(n93), .C(waddr[1]), .Y(n13) );
  NAND3X2M U43 ( .A(n12), .B(n94), .C(waddr[0]), .Y(n14) );
  NAND3X2M U44 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n11) );
  OAI2BB2X1M U45 ( .B0(n11), .B1(n102), .A0N(\RAM[7][0] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U46 ( .B0(n11), .B1(n101), .A0N(\RAM[7][1] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U47 ( .B0(n11), .B1(n100), .A0N(\RAM[7][2] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U48 ( .B0(n11), .B1(n99), .A0N(\RAM[7][3] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U49 ( .B0(n11), .B1(n98), .A0N(\RAM[7][4] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U50 ( .B0(n11), .B1(n97), .A0N(\RAM[7][5] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U51 ( .B0(n11), .B1(n96), .A0N(\RAM[7][6] ), .A1N(n11), .Y(n29)
         );
  OAI2BB2X1M U52 ( .B0(n11), .B1(n95), .A0N(\RAM[7][7] ), .A1N(n11), .Y(n30)
         );
  OAI2BB2X1M U53 ( .B0(n102), .B1(n13), .A0N(\RAM[6][0] ), .A1N(n13), .Y(n31)
         );
  OAI2BB2X1M U54 ( .B0(n101), .B1(n13), .A0N(\RAM[6][1] ), .A1N(n13), .Y(n32)
         );
  OAI2BB2X1M U55 ( .B0(n100), .B1(n13), .A0N(\RAM[6][2] ), .A1N(n13), .Y(n33)
         );
  OAI2BB2X1M U56 ( .B0(n99), .B1(n13), .A0N(\RAM[6][3] ), .A1N(n13), .Y(n34)
         );
  OAI2BB2X1M U57 ( .B0(n98), .B1(n13), .A0N(\RAM[6][4] ), .A1N(n13), .Y(n35)
         );
  OAI2BB2X1M U58 ( .B0(n97), .B1(n13), .A0N(\RAM[6][5] ), .A1N(n13), .Y(n36)
         );
  OAI2BB2X1M U59 ( .B0(n96), .B1(n13), .A0N(\RAM[6][6] ), .A1N(n13), .Y(n37)
         );
  OAI2BB2X1M U60 ( .B0(n95), .B1(n13), .A0N(\RAM[6][7] ), .A1N(n13), .Y(n38)
         );
  OAI2BB2X1M U61 ( .B0(n102), .B1(n14), .A0N(\RAM[5][0] ), .A1N(n14), .Y(n39)
         );
  OAI2BB2X1M U62 ( .B0(n101), .B1(n14), .A0N(\RAM[5][1] ), .A1N(n14), .Y(n40)
         );
  OAI2BB2X1M U63 ( .B0(n100), .B1(n14), .A0N(\RAM[5][2] ), .A1N(n14), .Y(n41)
         );
  OAI2BB2X1M U64 ( .B0(n99), .B1(n14), .A0N(\RAM[5][3] ), .A1N(n14), .Y(n42)
         );
  OAI2BB2X1M U65 ( .B0(n98), .B1(n14), .A0N(\RAM[5][4] ), .A1N(n14), .Y(n43)
         );
  OAI2BB2X1M U66 ( .B0(n97), .B1(n14), .A0N(\RAM[5][5] ), .A1N(n14), .Y(n44)
         );
  OAI2BB2X1M U67 ( .B0(n96), .B1(n14), .A0N(\RAM[5][6] ), .A1N(n14), .Y(n45)
         );
  OAI2BB2X1M U68 ( .B0(n95), .B1(n14), .A0N(\RAM[5][7] ), .A1N(n14), .Y(n46)
         );
  OAI2BB2X1M U69 ( .B0(n102), .B1(n15), .A0N(\RAM[4][0] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U70 ( .B0(n101), .B1(n15), .A0N(\RAM[4][1] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U71 ( .B0(n100), .B1(n15), .A0N(\RAM[4][2] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U72 ( .B0(n99), .B1(n15), .A0N(\RAM[4][3] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U73 ( .B0(n98), .B1(n15), .A0N(\RAM[4][4] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U74 ( .B0(n97), .B1(n15), .A0N(\RAM[4][5] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U75 ( .B0(n96), .B1(n15), .A0N(\RAM[4][6] ), .A1N(n15), .Y(n53)
         );
  OAI2BB2X1M U76 ( .B0(n95), .B1(n15), .A0N(\RAM[4][7] ), .A1N(n15), .Y(n54)
         );
  INVX2M U77 ( .A(wdata[0]), .Y(n102) );
  INVX2M U78 ( .A(wdata[1]), .Y(n101) );
  INVX2M U79 ( .A(wdata[2]), .Y(n100) );
  INVX2M U80 ( .A(wdata[3]), .Y(n99) );
  INVX2M U81 ( .A(wdata[4]), .Y(n98) );
  INVX2M U82 ( .A(wdata[5]), .Y(n97) );
  INVX2M U83 ( .A(wdata[6]), .Y(n96) );
  INVX2M U84 ( .A(wdata[7]), .Y(n95) );
  INVX2M U85 ( .A(waddr[0]), .Y(n93) );
  INVX2M U86 ( .A(waddr[1]), .Y(n94) );
  AND2X2M U87 ( .A(waddr[2]), .B(n16), .Y(n12) );
  XNOR2X4M U88 ( .A(raddr[0]), .B(raddr[1]), .Y(N10) );
  INVX4M U89 ( .A(raddr[0]), .Y(N9) );
  CLKXOR2X2M U90 ( .A(raddr[2]), .B(n22), .Y(N11) );
  NOR2X2M U91 ( .A(raddr[0]), .B(raddr[1]), .Y(n22) );
  MX2X2M U92 ( .A(n92), .B(n91), .S0(N11), .Y(rdata[7]) );
  MX4X1M U93 ( .A(\RAM[4][7] ), .B(\RAM[5][7] ), .C(\RAM[6][7] ), .D(
        \RAM[7][7] ), .S0(N9), .S1(N10), .Y(n91) );
  MX4X1M U94 ( .A(\RAM[0][7] ), .B(\RAM[1][7] ), .C(\RAM[2][7] ), .D(
        \RAM[3][7] ), .S0(N9), .S1(N10), .Y(n92) );
  MX2X2M U95 ( .A(n2), .B(n1), .S0(N11), .Y(rdata[0]) );
  MX4X1M U96 ( .A(\RAM[4][0] ), .B(\RAM[5][0] ), .C(\RAM[6][0] ), .D(
        \RAM[7][0] ), .S0(N9), .S1(N10), .Y(n1) );
  MX4X1M U97 ( .A(\RAM[0][0] ), .B(\RAM[1][0] ), .C(\RAM[2][0] ), .D(
        \RAM[3][0] ), .S0(N9), .S1(N10), .Y(n2) );
  MX2X2M U98 ( .A(n4), .B(n3), .S0(N11), .Y(rdata[1]) );
  MX4X1M U99 ( .A(\RAM[4][1] ), .B(\RAM[5][1] ), .C(\RAM[6][1] ), .D(
        \RAM[7][1] ), .S0(N9), .S1(N10), .Y(n3) );
  MX4X1M U100 ( .A(\RAM[0][1] ), .B(\RAM[1][1] ), .C(\RAM[2][1] ), .D(
        \RAM[3][1] ), .S0(N9), .S1(N10), .Y(n4) );
  MX2X2M U101 ( .A(n6), .B(n5), .S0(N11), .Y(rdata[2]) );
  MX4X1M U102 ( .A(\RAM[4][2] ), .B(\RAM[5][2] ), .C(\RAM[6][2] ), .D(
        \RAM[7][2] ), .S0(N9), .S1(N10), .Y(n5) );
  MX4X1M U103 ( .A(\RAM[0][2] ), .B(\RAM[1][2] ), .C(\RAM[2][2] ), .D(
        \RAM[3][2] ), .S0(N9), .S1(N10), .Y(n6) );
  MX2X2M U104 ( .A(n8), .B(n7), .S0(N11), .Y(rdata[3]) );
  MX4X1M U105 ( .A(\RAM[4][3] ), .B(\RAM[5][3] ), .C(\RAM[6][3] ), .D(
        \RAM[7][3] ), .S0(N9), .S1(N10), .Y(n7) );
  MX4X1M U106 ( .A(\RAM[0][3] ), .B(\RAM[1][3] ), .C(\RAM[2][3] ), .D(
        \RAM[3][3] ), .S0(N9), .S1(N10), .Y(n8) );
  MX2X2M U107 ( .A(n10), .B(n9), .S0(N11), .Y(rdata[4]) );
  MX4X1M U108 ( .A(\RAM[4][4] ), .B(\RAM[5][4] ), .C(\RAM[6][4] ), .D(
        \RAM[7][4] ), .S0(N9), .S1(N10), .Y(n9) );
  MX4X1M U109 ( .A(\RAM[0][4] ), .B(\RAM[1][4] ), .C(\RAM[2][4] ), .D(
        \RAM[3][4] ), .S0(N9), .S1(N10), .Y(n10) );
  MX2X2M U110 ( .A(n88), .B(n87), .S0(N11), .Y(rdata[5]) );
  MX4X1M U111 ( .A(\RAM[4][5] ), .B(\RAM[5][5] ), .C(\RAM[6][5] ), .D(
        \RAM[7][5] ), .S0(N9), .S1(N10), .Y(n87) );
  MX4X1M U112 ( .A(\RAM[0][5] ), .B(\RAM[1][5] ), .C(\RAM[2][5] ), .D(
        \RAM[3][5] ), .S0(N9), .S1(N10), .Y(n88) );
  MX2X2M U113 ( .A(n90), .B(n89), .S0(N11), .Y(rdata[6]) );
  MX4X1M U114 ( .A(\RAM[4][6] ), .B(\RAM[5][6] ), .C(\RAM[6][6] ), .D(
        \RAM[7][6] ), .S0(N9), .S1(N10), .Y(n89) );
  MX4X1M U115 ( .A(\RAM[0][6] ), .B(\RAM[1][6] ), .C(\RAM[2][6] ), .D(
        \RAM[3][6] ), .S0(N9), .S1(N10), .Y(n90) );
endmodule


module ASYNC_FIFO ( wclk, rclk, wrst_n, rrst_n, rinc, winc, wdata, wfull, 
        rempty, rdata );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, rclk, wrst_n, rrst_n, rinc, winc;
  output wfull, rempty;
  wire   n1, n2, n3, n4;
  wire   [3:0] wq2_rptr;
  wire   [3:0] wptr;
  wire   [2:0] waddr;
  wire   [3:0] rptr;
  wire   [3:0] rq2_wptr;
  wire   [2:0] raddr;

  FIFO_WR link_FIFO_Write ( .wclk(wclk), .wrst_n(n1), .winc(winc), .wq2_rptr(
        wq2_rptr), .waddr(waddr), .wptr(wptr), .wfull(wfull) );
  DF_SYNC_1 link_synchronizer_write ( .clk(wclk), .rst_n(n1), .ptr(rptr), 
        .q2_ptr(wq2_rptr) );
  FIFO_RD link_FIFO_Read ( .rclk(rclk), .rrst_n(n3), .rinc(rinc), .rq2_wptr(
        rq2_wptr), .rempty(rempty), .raddr(raddr), .rptr(rptr) );
  DF_SYNC_0 link_synchronizer_read ( .clk(rclk), .rst_n(n3), .ptr(wptr), 
        .q2_ptr(rq2_wptr) );
  FIFO_MEM_CNTRL link_Memory ( .wclk(wclk), .waddr(waddr), .raddr(raddr), 
        .wdata(wdata), .winc(winc), .wfull(wfull), .rdata(rdata) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(wrst_n), .Y(n2) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(rrst_n), .Y(n4) );
endmodule


module DATA_SYNC ( unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   Pulse_Gen, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [0:1] ff;

  DFFRQX2M Pulse_Gen_reg ( .D(ff[1]), .CK(CLK), .RN(RST), .Q(Pulse_Gen) );
  DFFRQX2M \ff_reg[1]  ( .D(ff[0]), .CK(CLK), .RN(RST), .Q(ff[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \ff_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(ff[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(Pulse_Gen), .B(ff[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module SYS_TOP ( REF_CLK, RST, UART_CLK, RX_IN, TX_OUT, parity_error, 
        framing_error );
  input REF_CLK, RST, UART_CLK, RX_IN;
  output TX_OUT, parity_error, framing_error;
  wire   SYNC_RST_UART_CLK, TX_CLK, RX_CLK, SYNC_RST_REF_CLK, CLK_EN,
         GATED_CLK, WrEn, RdEn, RdData_Valid, EN, OUT_Valid, TX_D_VLD,
         FIFO_FULL, RX_D_VLD, _2_net_, RD_INC, busy_TX, F_EMPTY, RD_INC_ff,
         data_valid, n1, n2, n3, n4, n5, n6, n7;
  wire   [7:0] Div_Ratio;
  wire   [7:0] clk_div_RX;
  wire   [7:0] UART_Config;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] RdData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] TX_P_DATA;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] A;
  wire   [7:0] B;
  wire   [7:0] RD_DATA;
  wire   [7:0] P_DATA;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  ClkDiv_0 CLK_DIV_TX ( .i_ref_clk(UART_CLK), .i_rst_n(n6), .i_clk_en(1'b1), 
        .i_div_ratio(Div_Ratio), .o_div_clk(TX_CLK) );
  ClkDiv_1 CLK_DIV_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n6), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, clk_div_RX[2:0]}), 
        .o_div_clk(RX_CLK) );
  Mux_Prescale PRESCALE_MUX ( .Prescale(UART_Config[7:2]), .clk_div({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, clk_div_RX[2:0]}) );
  RST_SYNC_0 RST_SYN_REF ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(
        SYNC_RST_REF_CLK) );
  RST_SYNC_1 RST_SYN_UART ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(
        SYNC_RST_UART_CLK) );
  CLK_GATE CLOCK_GATING ( .CLK(REF_CLK), .CLK_EN(CLK_EN), .GATED_CLK(GATED_CLK) );
  SYS_CTRL CONTROL_UNIT ( .CLK(REF_CLK), .RST(n4), .WrEn(WrEn), .RdEn(RdEn), 
        .Address(Address), .WrData(WrData), .RdData(RdData), .RdData_Valid(
        RdData_Valid), .CLK_EN(CLK_EN), .ALU_FUN(ALU_FUN), .EN(EN), .ALU_OUT(
        ALU_OUT), .OUT_Valid(OUT_Valid), .TX_D_VLD(TX_D_VLD), .TX_P_DATA(
        TX_P_DATA), .FIFO_FULL(FIFO_FULL), .RX_P_DATA(RX_P_DATA), .RX_D_VLD(
        RX_D_VLD) );
  Register_file_8_16 REGISTER_FILE ( .WrEn(WrEn), .RdEn(RdEn), .CLK(REF_CLK), 
        .RST(n4), .WrData(WrData), .Address({Address[3:2], n3, n2}), .REG0(A), 
        .REG1(B), .REG2(UART_Config), .REG3(Div_Ratio), .RdData(RdData), 
        .RdData_Valid(RdData_Valid) );
  ALU ALU_UNIT ( .CLK(GATED_CLK), .RST(n4), .Enable(EN), .A(A), .B(B), 
        .ALU_FUN(ALU_FUN), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid) );
  PULSE_GEN PULSE_GENERATOR ( .RST(n6), .CLK(TX_CLK), .LVL_SIG(_2_net_), 
        .PULSE_SIG(RD_INC) );
  delay_one_period DELAY_ONE_PERIOD ( .CLK(TX_CLK), .Signal(RD_INC), 
        .Signal_delayed(RD_INC_ff) );
  UART_TOP UART ( .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RST(n6), .Prescale(
        UART_Config[7:2]), .TX_IN_P(RD_DATA), .TX_IN_V(RD_INC_ff), .TX_OUT_S(
        TX_OUT), .TX_OUT_V(busy_TX), .RX_IN_S(n1), .RX_OUT_P(P_DATA), 
        .RX_OUT_V(data_valid), .parity_error(parity_error), .framing_error(
        framing_error), .PAR_TYP(UART_Config[1]), .PAR_EN(UART_Config[0]) );
  ASYNC_FIFO ASYN_FIFO ( .wclk(REF_CLK), .rclk(TX_CLK), .wrst_n(n4), .rrst_n(
        n6), .rinc(RD_INC), .winc(TX_D_VLD), .wdata(TX_P_DATA), .wfull(
        FIFO_FULL), .rempty(F_EMPTY), .rdata(RD_DATA) );
  DATA_SYNC DATA_SYNC ( .unsync_bus(P_DATA), .bus_enable(data_valid), .CLK(
        REF_CLK), .RST(n4), .sync_bus(RX_P_DATA), .enable_pulse(RX_D_VLD) );
  INVX2M U3 ( .A(n5), .Y(n4) );
  INVX2M U4 ( .A(n7), .Y(n6) );
  INVX2M U5 ( .A(SYNC_RST_REF_CLK), .Y(n5) );
  BUFX2M U6 ( .A(Address[0]), .Y(n2) );
  BUFX2M U7 ( .A(Address[1]), .Y(n3) );
  INVX2M U8 ( .A(SYNC_RST_UART_CLK), .Y(n7) );
  BUFX2M U9 ( .A(RX_IN), .Y(n1) );
  NOR2X2M U10 ( .A(busy_TX), .B(F_EMPTY), .Y(_2_net_) );
endmodule

