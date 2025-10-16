/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Sep 29 00:41:49 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X4M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module CLK_GATE ( test_en, CLK, CLK_EN, GATED_CLK );
  input test_en, CLK, CLK_EN;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_en), .Y(_0_net_) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


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


module ClkDiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst_n), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n28), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n29), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n30), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U6 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n34) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n33) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n32) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n31) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n30) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n29) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n28) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N2), .Y(n17) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n20), .Y(n27) );
  AOI21X1M U36 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U37 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U38 ( .A(odd_edge_tog), .B(n22), .Y(n26) );
  OR2X1M U39 ( .A(n19), .B(n16), .Y(n22) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n21), .S0(odd_edge_tog), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n21) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N2) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
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


module ClkDiv_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n2, n3,
         n4, n5, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n60), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M \count_reg[6]  ( .D(n59), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n53), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n58), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n57), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n56), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n55), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n54), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n61), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst_n), .Q(odd_edge_tog) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  NAND2BX2M U11 ( .AN(n51), .B(i_clk_en), .Y(n17) );
  INVX2M U15 ( .A(i_div_ratio[5]), .Y(n16) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n53) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n54) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n55) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n56) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n57) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n58) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n59) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(N2), .Y(n18) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n21), .Y(n60) );
  AOI21X1M U37 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U38 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U39 ( .A(odd_edge_tog), .B(n23), .Y(n61) );
  OR2X1M U40 ( .A(n20), .B(n17), .Y(n23) );
  CLKNAND2X2M U41 ( .A(n24), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U42 ( .A(n25), .B(n22), .S0(odd_edge_tog), .Y(n24) );
  NAND4X1M U43 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n22) );
  NOR4X1M U44 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n39) );
  XNOR2X1M U49 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n36) );
  XNOR2X1M U51 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n35) );
  NAND4X1M U52 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n25) );
  NOR4X1M U53 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n50) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n49) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n47) );
  XNOR2X1M U58 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n45) );
  XNOR2X1M U59 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n44) );
  XNOR2X1M U60 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n43) );
  CLKINVX1M U61 ( .A(n17), .Y(N2) );
  NOR4BX1M U62 ( .AN(n52), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n51) );
  NOR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n52) );
  ClkDiv_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module Mux_Prescale ( Prescale, clk_div );
  input [5:0] Prescale;
  output [7:0] clk_div;
  wire   n1, n2, n3;

  AND2X2M U13 ( .A(n1), .B(n2), .Y(clk_div[2]) );
  AND2X2M U14 ( .A(n2), .B(n3), .Y(clk_div[1]) );
  OAI21X2M U15 ( .A0(n1), .A1(n3), .B0(n2), .Y(clk_div[0]) );
  NOR3BX2M U16 ( .AN(Prescale[3]), .B(Prescale[4]), .C(Prescale[5]), .Y(n1) );
  NOR3X2M U17 ( .A(Prescale[2]), .B(Prescale[1]), .C(Prescale[0]), .Y(n2) );
  NOR3BX2M U18 ( .AN(Prescale[4]), .B(Prescale[3]), .C(Prescale[5]), .Y(n3) );
  INVX2M U3 ( .A(1'b1), .Y(clk_div[3]) );
  INVX2M U5 ( .A(1'b1), .Y(clk_div[4]) );
  INVX2M U7 ( .A(1'b1), .Y(clk_div[5]) );
  INVX2M U9 ( .A(1'b1), .Y(clk_div[6]) );
  INVX2M U11 ( .A(1'b1), .Y(clk_div[7]) );
endmodule


module RST_SYNC_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \ff[0] ;

  SDFFRQX2M \ff_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(\ff[0] ) );
  SDFFRQX1M \ff_reg[1]  ( .D(\ff[0] ), .SI(\ff[0] ), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \ff[0] ;

  SDFFRQX2M \ff_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(\ff[0] ) );
  SDFFRQX1M \ff_reg[1]  ( .D(\ff[0] ), .SI(\ff[0] ), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(SYNC_RST) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_Valid, CLK_EN, ALU_FUN, EN, ALU_OUT, OUT_Valid, TX_D_VLD, 
        TX_P_DATA, FIFO_FULL, RX_P_DATA, RX_D_VLD, test_si, test_so, test_se
 );
  output [3:0] Address;
  output [7:0] WrData;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  input [15:0] ALU_OUT;
  output [7:0] TX_P_DATA;
  input [7:0] RX_P_DATA;
  input CLK, RST, RdData_Valid, OUT_Valid, FIFO_FULL, RX_D_VLD, test_si,
         test_se;
  output WrEn, RdEn, CLK_EN, EN, TX_D_VLD, test_so;
  wire   N99, n1, n2, n3, n6, n7, n10, n13, n14, n15, n16, n17, n22, n23, n24,
         n25, n26, n27, n29, n30, n32, n33, n35, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n61, n62, n64, n65, n66, n69, n71, n72, n73, n74, n75,
         n77, n107, n109, n111, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n4, n5,
         n8, n9, n11, n12, n18, n19, n20, n21, n28, n31, n34, n36, n60, n63,
         n67, n68, n70, n142, n143, n144, n145;
  wire   [2:0] state;
  assign test_so = n142;

  SDFFRQX2M CLK_EN_reg ( .D(n124), .SI(Address[3]), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(CLK_EN) );
  SDFFRQX2M EN_reg ( .D(n123), .SI(CLK_EN), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(EN) );
  SDFFRQX2M \ALU_FUN_reg[3]  ( .D(n129), .SI(ALU_FUN[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_FUN[3]) );
  SDFFRQX2M \TX_P_DATA_reg[7]  ( .D(n114), .SI(TX_P_DATA[6]), .SE(test_se), 
        .CK(CLK), .RN(n8), .Q(TX_P_DATA[7]) );
  SDFFRQX2M \TX_P_DATA_reg[6]  ( .D(n115), .SI(TX_P_DATA[5]), .SE(test_se), 
        .CK(CLK), .RN(n8), .Q(TX_P_DATA[6]) );
  SDFFRQX2M \TX_P_DATA_reg[5]  ( .D(n116), .SI(TX_P_DATA[4]), .SE(test_se), 
        .CK(CLK), .RN(n8), .Q(TX_P_DATA[5]) );
  SDFFRQX2M \TX_P_DATA_reg[4]  ( .D(n117), .SI(TX_P_DATA[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(TX_P_DATA[4]) );
  SDFFRQX2M \TX_P_DATA_reg[3]  ( .D(n118), .SI(TX_P_DATA[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(TX_P_DATA[3]) );
  SDFFRQX2M \TX_P_DATA_reg[2]  ( .D(n119), .SI(TX_P_DATA[1]), .SE(test_se), 
        .CK(CLK), .RN(n8), .Q(TX_P_DATA[2]) );
  SDFFRQX2M \TX_P_DATA_reg[1]  ( .D(n120), .SI(TX_P_DATA[0]), .SE(test_se), 
        .CK(CLK), .RN(n8), .Q(TX_P_DATA[1]) );
  SDFFRQX2M \TX_P_DATA_reg[0]  ( .D(n121), .SI(TX_D_VLD), .SE(test_se), .CK(
        CLK), .RN(n8), .Q(TX_P_DATA[0]) );
  SDFFRQX2M RdEn_reg ( .D(n107), .SI(EN), .SE(test_se), .CK(CLK), .RN(n8), .Q(
        RdEn) );
  SDFFRQX2M WrEn_reg ( .D(n77), .SI(WrData[7]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(WrEn) );
  SDFFRQX2M \WrData_reg[7]  ( .D(n137), .SI(WrData[6]), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(WrData[7]) );
  SDFFRQX2M \WrData_reg[4]  ( .D(n134), .SI(WrData[3]), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(WrData[4]) );
  SDFFRQX2M \WrData_reg[6]  ( .D(n136), .SI(WrData[5]), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(WrData[6]) );
  SDFFRQX2M \WrData_reg[5]  ( .D(n135), .SI(WrData[4]), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(WrData[5]) );
  SDFFRQX2M \WrData_reg[3]  ( .D(n133), .SI(WrData[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(WrData[3]) );
  SDFFRQX2M \WrData_reg[2]  ( .D(n132), .SI(WrData[1]), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(WrData[2]) );
  SDFFRQX2M \WrData_reg[1]  ( .D(n131), .SI(WrData[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(WrData[1]) );
  SDFFRQX2M \WrData_reg[0]  ( .D(n130), .SI(TX_P_DATA[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(WrData[0]) );
  SDFFRQX2M TX_D_VLD_reg ( .D(n122), .SI(RdEn), .SE(test_se), .CK(CLK), .RN(n8), .Q(TX_D_VLD) );
  SDFFRQX2M \ALU_FUN_reg[1]  ( .D(n127), .SI(ALU_FUN[0]), .SE(test_se), .CK(
        CLK), .RN(n8), .Q(ALU_FUN[1]) );
  SDFFRQX2M \Address_reg[2]  ( .D(n140), .SI(Address[1]), .SE(test_se), .CK(
        CLK), .RN(n8), .Q(Address[2]) );
  SDFFRQX2M \ALU_FUN_reg[0]  ( .D(n126), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(ALU_FUN[0]) );
  SDFFRQX2M \ALU_FUN_reg[2]  ( .D(n128), .SI(ALU_FUN[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_FUN[2]) );
  SDFFRQX2M ALU_Part1_Done_reg ( .D(n125), .SI(ALU_FUN[3]), .SE(test_se), .CK(
        CLK), .RN(n8), .Q(N99) );
  SDFFRQX2M \Address_reg[1]  ( .D(n139), .SI(Address[0]), .SE(test_se), .CK(
        CLK), .RN(n8), .Q(Address[1]) );
  SDFFRQX2M \Address_reg[0]  ( .D(n138), .SI(n145), .SE(test_se), .CK(CLK), 
        .RN(n8), .Q(Address[0]) );
  SDFFRQX2M \state_reg[1]  ( .D(n109), .SI(n68), .SE(test_se), .CK(CLK), .RN(
        n8), .Q(state[1]) );
  SDFFRQX2M \state_reg[0]  ( .D(n113), .SI(WrEn), .SE(test_se), .CK(CLK), .RN(
        n8), .Q(state[0]) );
  SDFFRQX2M \state_reg[2]  ( .D(n111), .SI(n144), .SE(test_se), .CK(CLK), .RN(
        n8), .Q(state[2]) );
  SDFFRQX2M \Address_reg[3]  ( .D(n141), .SI(Address[2]), .SE(test_se), .CK(
        CLK), .RN(n8), .Q(Address[3]) );
  OAI22X1M U3 ( .A0(n32), .A1(n144), .B0(n33), .B1(n63), .Y(n13) );
  INVX2M U4 ( .A(n40), .Y(n19) );
  INVX2M U5 ( .A(FIFO_FULL), .Y(n20) );
  INVX2M U6 ( .A(n66), .Y(n18) );
  INVX2M U7 ( .A(n26), .Y(n67) );
  INVX2M U8 ( .A(n9), .Y(n8) );
  NOR2X2M U9 ( .A(n65), .B(n58), .Y(n40) );
  NOR2X2M U10 ( .A(n6), .B(n5), .Y(n39) );
  NOR2X2M U11 ( .A(n145), .B(n58), .Y(n41) );
  NAND3X2M U12 ( .A(n19), .B(n61), .C(n69), .Y(n66) );
  INVX2M U13 ( .A(n13), .Y(n11) );
  NAND2BX2M U14 ( .AN(n72), .B(n75), .Y(n74) );
  OAI21X2M U15 ( .A0(n70), .A1(n145), .B0(n19), .Y(n125) );
  INVX2M U16 ( .A(n58), .Y(n70) );
  NAND2X2M U17 ( .A(n67), .B(n142), .Y(n61) );
  NAND2X2M U18 ( .A(n68), .B(n144), .Y(n26) );
  NAND3X2M U19 ( .A(n65), .B(n66), .C(n70), .Y(n64) );
  INVX2M U20 ( .A(n24), .Y(n143) );
  INVX2M U21 ( .A(RST), .Y(n9) );
  OAI32X1M U22 ( .A0(n26), .A1(n11), .A2(n27), .B0(n68), .B1(n13), .Y(n113) );
  AOI31X2M U23 ( .A0(n29), .A1(n25), .A2(n30), .B0(state[2]), .Y(n27) );
  NOR2X2M U24 ( .A(n28), .B(n17), .Y(n29) );
  NOR3X2M U25 ( .A(n36), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n30) );
  OAI32X1M U26 ( .A0(n10), .A1(state[1]), .A2(n11), .B0(n144), .B1(n13), .Y(
        n109) );
  AOI31X2M U27 ( .A0(RX_P_DATA[4]), .A1(RX_P_DATA[0]), .A2(n14), .B0(state[0]), 
        .Y(n10) );
  AOI211X2M U28 ( .A0(n15), .A1(n16), .B0(n17), .C0(state[2]), .Y(n14) );
  NAND4X2M U29 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n34), .D(n21), .Y(n15)
         );
  OAI221X1M U30 ( .A0(n22), .A1(n23), .B0(n142), .B1(n13), .C0(n24), .Y(n111)
         );
  NAND4BX1M U31 ( .AN(n17), .B(n25), .C(RX_P_DATA[6]), .D(RX_P_DATA[2]), .Y(
        n23) );
  NAND4X2M U32 ( .A(n67), .B(n13), .C(n36), .D(n28), .Y(n22) );
  AOI21X2M U33 ( .A0(n68), .A1(n142), .B0(n144), .Y(n33) );
  AOI31X2M U34 ( .A0(state[0]), .A1(n20), .A2(RdData_Valid), .B0(n35), .Y(n32)
         );
  AOI21X2M U35 ( .A0(n68), .A1(n145), .B0(n142), .Y(n35) );
  NOR2X2M U36 ( .A(n144), .B(state[0]), .Y(n3) );
  NAND2X2M U37 ( .A(n3), .B(state[2]), .Y(n58) );
  OAI211X2M U38 ( .A0(n57), .A1(n58), .B0(n59), .C0(n12), .Y(n122) );
  NAND2X2M U39 ( .A(TX_D_VLD), .B(n57), .Y(n59) );
  INVX2M U40 ( .A(n39), .Y(n12) );
  AND2X2M U41 ( .A(n5), .B(n61), .Y(n57) );
  INVX2M U42 ( .A(state[2]), .Y(n142) );
  NAND3X2M U43 ( .A(n20), .B(n145), .C(OUT_Valid), .Y(n65) );
  INVX2M U44 ( .A(state[1]), .Y(n144) );
  NAND3X2M U45 ( .A(state[1]), .B(n142), .C(state[0]), .Y(n6) );
  NAND2X2M U46 ( .A(n55), .B(n56), .Y(n121) );
  AOI22X1M U47 ( .A0(ALU_OUT[8]), .A1(n41), .B0(TX_P_DATA[0]), .B1(n5), .Y(n55) );
  AOI22X1M U48 ( .A0(RdData[0]), .A1(n39), .B0(ALU_OUT[0]), .B1(n40), .Y(n56)
         );
  NAND2X2M U49 ( .A(n53), .B(n54), .Y(n120) );
  AOI22X1M U50 ( .A0(ALU_OUT[9]), .A1(n41), .B0(TX_P_DATA[1]), .B1(n5), .Y(n53) );
  AOI22X1M U51 ( .A0(RdData[1]), .A1(n39), .B0(ALU_OUT[1]), .B1(n40), .Y(n54)
         );
  NAND2X2M U52 ( .A(n51), .B(n52), .Y(n119) );
  AOI22X1M U53 ( .A0(ALU_OUT[10]), .A1(n41), .B0(TX_P_DATA[2]), .B1(n5), .Y(
        n51) );
  AOI22X1M U54 ( .A0(RdData[2]), .A1(n39), .B0(ALU_OUT[2]), .B1(n40), .Y(n52)
         );
  NAND2X2M U55 ( .A(n49), .B(n50), .Y(n118) );
  AOI22X1M U56 ( .A0(ALU_OUT[11]), .A1(n41), .B0(TX_P_DATA[3]), .B1(n5), .Y(
        n49) );
  AOI22X1M U57 ( .A0(RdData[3]), .A1(n39), .B0(ALU_OUT[3]), .B1(n40), .Y(n50)
         );
  NAND2X2M U58 ( .A(n47), .B(n48), .Y(n117) );
  AOI22X1M U59 ( .A0(ALU_OUT[12]), .A1(n41), .B0(TX_P_DATA[4]), .B1(n5), .Y(
        n47) );
  AOI22X1M U60 ( .A0(RdData[4]), .A1(n39), .B0(ALU_OUT[4]), .B1(n40), .Y(n48)
         );
  NAND2X2M U61 ( .A(n45), .B(n46), .Y(n116) );
  AOI22X1M U62 ( .A0(ALU_OUT[13]), .A1(n41), .B0(TX_P_DATA[5]), .B1(n5), .Y(
        n45) );
  AOI22X1M U63 ( .A0(RdData[5]), .A1(n39), .B0(ALU_OUT[5]), .B1(n40), .Y(n46)
         );
  NAND2X2M U64 ( .A(n43), .B(n44), .Y(n115) );
  AOI22X1M U65 ( .A0(ALU_OUT[14]), .A1(n41), .B0(TX_P_DATA[6]), .B1(n5), .Y(
        n43) );
  AOI22X1M U66 ( .A0(RdData[6]), .A1(n39), .B0(ALU_OUT[6]), .B1(n40), .Y(n44)
         );
  NAND2X2M U67 ( .A(n37), .B(n38), .Y(n114) );
  AOI22X1M U68 ( .A0(ALU_OUT[15]), .A1(n41), .B0(TX_P_DATA[7]), .B1(n5), .Y(
        n37) );
  AOI22X1M U69 ( .A0(RdData[7]), .A1(n39), .B0(ALU_OUT[7]), .B1(n40), .Y(n38)
         );
  INVX2M U70 ( .A(N99), .Y(n145) );
  BUFX2M U71 ( .A(n42), .Y(n5) );
  NOR3BX2M U72 ( .AN(n62), .B(n40), .C(n41), .Y(n42) );
  NAND3BX2M U73 ( .AN(n6), .B(n20), .C(RdData_Valid), .Y(n62) );
  OAI2BB1X2M U74 ( .A0N(CLK_EN), .A1N(n18), .B0(n64), .Y(n124) );
  OAI2BB1X2M U75 ( .A0N(EN), .A1N(n18), .B0(n64), .Y(n123) );
  AOI2BB2XLM U76 ( .B0(n7), .B1(n67), .A0N(n7), .A1N(n63), .Y(n1) );
  AOI211X2M U77 ( .A0(n142), .A1(state[1]), .B0(n3), .C0(n143), .Y(n7) );
  OAI21X2M U78 ( .A0(n143), .A1(n75), .B0(RX_D_VLD), .Y(n72) );
  NAND2X2M U79 ( .A(n70), .B(RX_D_VLD), .Y(n69) );
  NOR2X2M U80 ( .A(n68), .B(state[2]), .Y(n75) );
  OAI2BB2X1M U81 ( .B0(n1), .B1(n2), .A0N(WrEn), .A1N(n1), .Y(n77) );
  AOI21X2M U82 ( .A0(n3), .A1(n142), .B0(n143), .Y(n2) );
  OAI2BB2X1M U83 ( .B0(n60), .B1(n4), .A0N(WrData[0]), .A1N(n4), .Y(n130) );
  OAI2BB2X1M U84 ( .B0(n36), .B1(n4), .A0N(WrData[1]), .A1N(n4), .Y(n131) );
  OAI2BB2X1M U85 ( .B0(n34), .B1(n4), .A0N(WrData[2]), .A1N(n4), .Y(n132) );
  OAI2BB2X1M U86 ( .B0(n31), .B1(n4), .A0N(WrData[3]), .A1N(n4), .Y(n133) );
  OAI2BB2X1M U87 ( .B0(n28), .B1(n4), .A0N(WrData[5]), .A1N(n4), .Y(n135) );
  OAI2BB2X1M U88 ( .B0(n21), .B1(n4), .A0N(WrData[6]), .A1N(n4), .Y(n136) );
  OAI2BB2X1M U89 ( .B0(n36), .B1(n74), .A0N(Address[1]), .A1N(n72), .Y(n139)
         );
  OAI2BB2X1M U90 ( .B0(n34), .B1(n74), .A0N(Address[2]), .A1N(n72), .Y(n140)
         );
  OAI2BB2X1M U91 ( .B0(n31), .B1(n74), .A0N(Address[3]), .A1N(n72), .Y(n141)
         );
  OAI2BB2X1M U92 ( .B0(n60), .B1(n69), .A0N(ALU_FUN[0]), .A1N(n69), .Y(n126)
         );
  OAI2BB2X1M U93 ( .B0(n36), .B1(n69), .A0N(ALU_FUN[1]), .A1N(n69), .Y(n127)
         );
  OAI2BB2X1M U94 ( .B0(n34), .B1(n69), .A0N(ALU_FUN[2]), .A1N(n69), .Y(n128)
         );
  OAI2BB2X1M U95 ( .B0(n31), .B1(n69), .A0N(ALU_FUN[3]), .A1N(n69), .Y(n129)
         );
  OAI2BB2X1M U96 ( .B0(n1), .B1(n6), .A0N(RdEn), .A1N(n1), .Y(n107) );
  NAND2X2M U97 ( .A(state[2]), .B(n144), .Y(n24) );
  INVX2M U98 ( .A(RX_P_DATA[1]), .Y(n36) );
  INVX2M U99 ( .A(state[0]), .Y(n68) );
  NAND4X2M U100 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n36), .D(n28), .Y(n16) );
  BUFX2M U101 ( .A(n71), .Y(n4) );
  OAI221X1M U102 ( .A0(state[2]), .A1(n3), .B0(n142), .B1(n144), .C0(RX_D_VLD), 
        .Y(n71) );
  INVX2M U103 ( .A(RX_P_DATA[2]), .Y(n34) );
  INVX2M U104 ( .A(RX_P_DATA[5]), .Y(n28) );
  NAND2X2M U105 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .Y(n17) );
  INVX2M U106 ( .A(RX_P_DATA[6]), .Y(n21) );
  INVX2M U107 ( .A(RX_P_DATA[0]), .Y(n60) );
  INVX2M U108 ( .A(RX_P_DATA[3]), .Y(n31) );
  INVX2M U109 ( .A(RX_D_VLD), .Y(n63) );
  AO2B2X2M U110 ( .B0(WrData[4]), .B1(n4), .A0(RX_P_DATA[4]), .A1N(n4), .Y(
        n134) );
  AO2B2X2M U144 ( .B0(WrData[7]), .B1(n4), .A0(RX_P_DATA[7]), .A1N(n4), .Y(
        n137) );
  CLKXOR2X2M U145 ( .A(RX_P_DATA[4]), .B(n60), .Y(n25) );
  AO21XLM U146 ( .A0(Address[0]), .A1(n72), .B0(n73), .Y(n138) );
  OAI32X1M U147 ( .A0(n72), .A1(n68), .A2(n24), .B0(n74), .B1(n60), .Y(n73) );
endmodule


module Register_file_8_16_test_1 ( WrEn, RdEn, CLK, RST, WrData, Address, REG0, 
        REG1, REG2, REG3, RdData, RdData_Valid, test_si3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  output [7:0] RdData;
  input WrEn, RdEn, CLK, RST, test_si3, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
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
         \Reg_File[15][0] , N35, N36, N37, N38, N39, N40, N41, N42, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n359, n360, n361, n362, n363;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];
  assign test_so1 = \Reg_File[10][7] ;
  assign test_so2 = \Reg_File[15][7] ;

  SDFFQX2M \RdData_reg[7]  ( .D(n314), .SI(RdData[6]), .SE(n359), .CK(CLK), 
        .Q(RdData[7]) );
  SDFFQX2M \RdData_reg[6]  ( .D(n313), .SI(RdData[5]), .SE(n361), .CK(CLK), 
        .Q(RdData[6]) );
  SDFFQX2M \RdData_reg[5]  ( .D(n312), .SI(RdData[4]), .SE(n362), .CK(CLK), 
        .Q(RdData[5]) );
  SDFFQX2M \RdData_reg[4]  ( .D(n311), .SI(RdData[3]), .SE(n361), .CK(CLK), 
        .Q(RdData[4]) );
  SDFFQX2M \RdData_reg[3]  ( .D(n310), .SI(RdData[2]), .SE(n363), .CK(CLK), 
        .Q(RdData[3]) );
  SDFFQX2M \RdData_reg[2]  ( .D(n309), .SI(test_si2), .SE(n362), .CK(CLK), .Q(
        RdData[2]) );
  SDFFQX2M \RdData_reg[1]  ( .D(n308), .SI(RdData[0]), .SE(n360), .CK(CLK), 
        .Q(RdData[1]) );
  SDFFQX2M \RdData_reg[0]  ( .D(n307), .SI(RdData_Valid), .SE(n359), .CK(CLK), 
        .Q(RdData[0]) );
  SDFFQX2M \Reg_File_reg[15][7]  ( .D(n185), .SI(\Reg_File[15][6] ), .SE(n362), 
        .CK(CLK), .Q(\Reg_File[15][7] ) );
  SDFFQX2M \Reg_File_reg[15][6]  ( .D(n184), .SI(\Reg_File[15][5] ), .SE(n360), 
        .CK(CLK), .Q(\Reg_File[15][6] ) );
  SDFFQX2M \Reg_File_reg[15][5]  ( .D(n183), .SI(\Reg_File[15][4] ), .SE(n363), 
        .CK(CLK), .Q(\Reg_File[15][5] ) );
  SDFFQX2M \Reg_File_reg[15][4]  ( .D(n182), .SI(\Reg_File[15][3] ), .SE(n361), 
        .CK(CLK), .Q(\Reg_File[15][4] ) );
  SDFFQX2M \Reg_File_reg[15][3]  ( .D(n181), .SI(\Reg_File[15][2] ), .SE(n360), 
        .CK(CLK), .Q(\Reg_File[15][3] ) );
  SDFFQX2M \Reg_File_reg[15][2]  ( .D(n180), .SI(\Reg_File[15][1] ), .SE(n363), 
        .CK(CLK), .Q(\Reg_File[15][2] ) );
  SDFFQX2M \Reg_File_reg[15][1]  ( .D(n179), .SI(\Reg_File[15][0] ), .SE(n359), 
        .CK(CLK), .Q(\Reg_File[15][1] ) );
  SDFFQX2M \Reg_File_reg[15][0]  ( .D(n178), .SI(\Reg_File[14][7] ), .SE(n363), 
        .CK(CLK), .Q(\Reg_File[15][0] ) );
  SDFFRQX2M \Reg_File_reg[5][7]  ( .D(n265), .SI(\Reg_File[5][6] ), .SE(n361), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][7] ) );
  SDFFRQX2M \Reg_File_reg[5][6]  ( .D(n264), .SI(\Reg_File[5][5] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][6] ) );
  SDFFRQX2M \Reg_File_reg[5][5]  ( .D(n263), .SI(\Reg_File[5][4] ), .SE(n362), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][5] ) );
  SDFFRQX2M \Reg_File_reg[5][4]  ( .D(n262), .SI(\Reg_File[5][3] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][4] ) );
  SDFFRQX2M \Reg_File_reg[5][3]  ( .D(n261), .SI(\Reg_File[5][2] ), .SE(n362), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][3] ) );
  SDFFRQX2M \Reg_File_reg[5][2]  ( .D(n260), .SI(\Reg_File[5][1] ), .SE(n359), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][2] ) );
  SDFFRQX2M \Reg_File_reg[5][1]  ( .D(n259), .SI(\Reg_File[5][0] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][1] ) );
  SDFFRQX2M \Reg_File_reg[5][0]  ( .D(n258), .SI(\Reg_File[4][7] ), .SE(n359), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[5][0] ) );
  SDFFRQX2M \Reg_File_reg[9][7]  ( .D(n233), .SI(\Reg_File[9][6] ), .SE(n360), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][7] ) );
  SDFFRQX2M \Reg_File_reg[9][6]  ( .D(n232), .SI(\Reg_File[9][5] ), .SE(n363), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][6] ) );
  SDFFRQX2M \Reg_File_reg[9][5]  ( .D(n231), .SI(\Reg_File[9][4] ), .SE(n359), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][5] ) );
  SDFFRQX2M \Reg_File_reg[9][4]  ( .D(n230), .SI(\Reg_File[9][3] ), .SE(n363), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][4] ) );
  SDFFRQX2M \Reg_File_reg[9][3]  ( .D(n229), .SI(\Reg_File[9][2] ), .SE(n359), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][3] ) );
  SDFFRQX2M \Reg_File_reg[9][2]  ( .D(n228), .SI(\Reg_File[9][1] ), .SE(n361), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][2] ) );
  SDFFRQX2M \Reg_File_reg[9][1]  ( .D(n227), .SI(\Reg_File[9][0] ), .SE(n363), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][1] ) );
  SDFFRQX2M \Reg_File_reg[9][0]  ( .D(n226), .SI(\Reg_File[8][7] ), .SE(n361), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[9][0] ) );
  SDFFRQX2M \Reg_File_reg[13][7]  ( .D(n201), .SI(\Reg_File[13][6] ), .SE(n363), .CK(CLK), .RN(n342), .Q(\Reg_File[13][7] ) );
  SDFFRQX2M \Reg_File_reg[13][6]  ( .D(n200), .SI(\Reg_File[13][5] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[13][6] ) );
  SDFFRQX2M \Reg_File_reg[13][5]  ( .D(n199), .SI(\Reg_File[13][4] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[13][5] ) );
  SDFFRQX2M \Reg_File_reg[13][4]  ( .D(n198), .SI(\Reg_File[13][3] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[13][4] ) );
  SDFFRQX2M \Reg_File_reg[13][3]  ( .D(n197), .SI(\Reg_File[13][2] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[13][3] ) );
  SDFFRQX2M \Reg_File_reg[13][2]  ( .D(n196), .SI(\Reg_File[13][1] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[13][2] ) );
  SDFFRQX2M \Reg_File_reg[13][1]  ( .D(n195), .SI(\Reg_File[13][0] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[13][1] ) );
  SDFFRQX2M \Reg_File_reg[13][0]  ( .D(n194), .SI(\Reg_File[12][7] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[13][0] ) );
  SDFFRQX2M \Reg_File_reg[7][7]  ( .D(n249), .SI(\Reg_File[7][6] ), .SE(n362), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[7][7] ) );
  SDFFRQX2M \Reg_File_reg[7][6]  ( .D(n248), .SI(\Reg_File[7][5] ), .SE(n359), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[7][6] ) );
  SDFFRQX2M \Reg_File_reg[7][5]  ( .D(n247), .SI(\Reg_File[7][4] ), .SE(n360), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[7][5] ) );
  SDFFRQX2M \Reg_File_reg[7][4]  ( .D(n246), .SI(\Reg_File[7][3] ), .SE(n359), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[7][4] ) );
  SDFFRQX2M \Reg_File_reg[7][3]  ( .D(n245), .SI(\Reg_File[7][2] ), .SE(n360), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[7][3] ) );
  SDFFRQX2M \Reg_File_reg[7][2]  ( .D(n244), .SI(\Reg_File[7][1] ), .SE(n363), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[7][2] ) );
  SDFFRQX2M \Reg_File_reg[7][1]  ( .D(n243), .SI(\Reg_File[7][0] ), .SE(n359), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[7][1] ) );
  SDFFRQX2M \Reg_File_reg[7][0]  ( .D(n242), .SI(\Reg_File[6][7] ), .SE(n363), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[7][0] ) );
  SDFFRQX2M \Reg_File_reg[11][7]  ( .D(n217), .SI(\Reg_File[11][6] ), .SE(n359), .CK(CLK), .RN(n342), .Q(\Reg_File[11][7] ) );
  SDFFRQX2M \Reg_File_reg[11][6]  ( .D(n216), .SI(\Reg_File[11][5] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[11][6] ) );
  SDFFRQX2M \Reg_File_reg[11][5]  ( .D(n215), .SI(\Reg_File[11][4] ), .SE(n363), .CK(CLK), .RN(n342), .Q(\Reg_File[11][5] ) );
  SDFFRQX2M \Reg_File_reg[11][4]  ( .D(n214), .SI(\Reg_File[11][3] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[11][4] ) );
  SDFFRQX2M \Reg_File_reg[11][3]  ( .D(n213), .SI(\Reg_File[11][2] ), .SE(n363), .CK(CLK), .RN(n342), .Q(\Reg_File[11][3] ) );
  SDFFRQX2M \Reg_File_reg[11][2]  ( .D(n212), .SI(\Reg_File[11][1] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[11][2] ) );
  SDFFRQX2M \Reg_File_reg[11][1]  ( .D(n211), .SI(\Reg_File[11][0] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[11][1] ) );
  SDFFRQX2M \Reg_File_reg[11][0]  ( .D(n210), .SI(test_si3), .SE(n362), .CK(
        CLK), .RN(n342), .Q(\Reg_File[11][0] ) );
  SDFFRQX2M \Reg_File_reg[6][7]  ( .D(n257), .SI(\Reg_File[6][6] ), .SE(n361), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][7] ) );
  SDFFRQX2M \Reg_File_reg[6][6]  ( .D(n256), .SI(\Reg_File[6][5] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][6] ) );
  SDFFRQX2M \Reg_File_reg[6][5]  ( .D(n255), .SI(\Reg_File[6][4] ), .SE(n362), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][5] ) );
  SDFFRQX2M \Reg_File_reg[6][4]  ( .D(n254), .SI(\Reg_File[6][3] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][4] ) );
  SDFFRQX2M \Reg_File_reg[6][3]  ( .D(n253), .SI(\Reg_File[6][2] ), .SE(n362), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][3] ) );
  SDFFRQX2M \Reg_File_reg[6][2]  ( .D(n252), .SI(\Reg_File[6][1] ), .SE(n359), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][2] ) );
  SDFFRQX2M \Reg_File_reg[6][1]  ( .D(n251), .SI(\Reg_File[6][0] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][1] ) );
  SDFFRQX2M \Reg_File_reg[6][0]  ( .D(n250), .SI(\Reg_File[5][7] ), .SE(n359), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[6][0] ) );
  SDFFRQX2M \Reg_File_reg[10][7]  ( .D(n225), .SI(\Reg_File[10][6] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[10][7] ) );
  SDFFRQX2M \Reg_File_reg[10][6]  ( .D(n224), .SI(\Reg_File[10][5] ), .SE(n363), .CK(CLK), .RN(n342), .Q(\Reg_File[10][6] ) );
  SDFFRQX2M \Reg_File_reg[10][5]  ( .D(n223), .SI(\Reg_File[10][4] ), .SE(n359), .CK(CLK), .RN(n342), .Q(\Reg_File[10][5] ) );
  SDFFRQX2M \Reg_File_reg[10][4]  ( .D(n222), .SI(\Reg_File[10][3] ), .SE(n363), .CK(CLK), .RN(n342), .Q(\Reg_File[10][4] ) );
  SDFFRQX2M \Reg_File_reg[10][3]  ( .D(n221), .SI(\Reg_File[10][2] ), .SE(n359), .CK(CLK), .RN(n342), .Q(\Reg_File[10][3] ) );
  SDFFRQX2M \Reg_File_reg[10][2]  ( .D(n220), .SI(\Reg_File[10][1] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[10][2] ) );
  SDFFRQX2M \Reg_File_reg[10][1]  ( .D(n219), .SI(\Reg_File[10][0] ), .SE(n363), .CK(CLK), .RN(n342), .Q(\Reg_File[10][1] ) );
  SDFFRQX2M \Reg_File_reg[10][0]  ( .D(n218), .SI(\Reg_File[9][7] ), .SE(n361), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[10][0] ) );
  SDFFRQX2M \Reg_File_reg[14][7]  ( .D(n193), .SI(\Reg_File[14][6] ), .SE(n363), .CK(CLK), .RN(n342), .Q(\Reg_File[14][7] ) );
  SDFFRQX2M \Reg_File_reg[14][6]  ( .D(n192), .SI(\Reg_File[14][5] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[14][6] ) );
  SDFFRQX2M \Reg_File_reg[14][5]  ( .D(n191), .SI(\Reg_File[14][4] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[14][5] ) );
  SDFFRQX2M \Reg_File_reg[14][4]  ( .D(n190), .SI(\Reg_File[14][3] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[14][4] ) );
  SDFFRQX2M \Reg_File_reg[14][3]  ( .D(n189), .SI(\Reg_File[14][2] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[14][3] ) );
  SDFFRQX2M \Reg_File_reg[14][2]  ( .D(n188), .SI(\Reg_File[14][1] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[14][2] ) );
  SDFFRQX2M \Reg_File_reg[14][1]  ( .D(n187), .SI(\Reg_File[14][0] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[14][1] ) );
  SDFFRQX2M \Reg_File_reg[14][0]  ( .D(n186), .SI(\Reg_File[13][7] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[14][0] ) );
  SDFFRQX2M \Reg_File_reg[4][7]  ( .D(n273), .SI(\Reg_File[4][6] ), .SE(n362), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[4][7] ) );
  SDFFRQX2M \Reg_File_reg[4][6]  ( .D(n272), .SI(\Reg_File[4][5] ), .SE(n359), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[4][6] ) );
  SDFFRQX2M \Reg_File_reg[4][5]  ( .D(n271), .SI(\Reg_File[4][4] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[4][5] ) );
  SDFFRQX2M \Reg_File_reg[4][4]  ( .D(n270), .SI(\Reg_File[4][3] ), .SE(n359), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[4][4] ) );
  SDFFRQX2M \Reg_File_reg[4][3]  ( .D(n269), .SI(\Reg_File[4][2] ), .SE(n360), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[4][3] ) );
  SDFFRQX2M \Reg_File_reg[4][2]  ( .D(n268), .SI(\Reg_File[4][1] ), .SE(n363), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[4][2] ) );
  SDFFRQX2M \Reg_File_reg[4][1]  ( .D(n267), .SI(\Reg_File[4][0] ), .SE(n359), 
        .CK(CLK), .RN(n343), .Q(\Reg_File[4][1] ) );
  SDFFRQX2M \Reg_File_reg[4][0]  ( .D(n266), .SI(REG3[7]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(\Reg_File[4][0] ) );
  SDFFRQX2M \Reg_File_reg[8][7]  ( .D(n241), .SI(\Reg_File[8][6] ), .SE(n359), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][7] ) );
  SDFFRQX2M \Reg_File_reg[8][6]  ( .D(n240), .SI(\Reg_File[8][5] ), .SE(n361), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][6] ) );
  SDFFRQX2M \Reg_File_reg[8][5]  ( .D(n239), .SI(\Reg_File[8][4] ), .SE(n363), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][5] ) );
  SDFFRQX2M \Reg_File_reg[8][4]  ( .D(n238), .SI(\Reg_File[8][3] ), .SE(n361), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][4] ) );
  SDFFRQX2M \Reg_File_reg[8][3]  ( .D(n237), .SI(\Reg_File[8][2] ), .SE(n363), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][3] ) );
  SDFFRQX2M \Reg_File_reg[8][2]  ( .D(n236), .SI(\Reg_File[8][1] ), .SE(n362), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][2] ) );
  SDFFRQX2M \Reg_File_reg[8][1]  ( .D(n235), .SI(\Reg_File[8][0] ), .SE(n361), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][1] ) );
  SDFFRQX2M \Reg_File_reg[8][0]  ( .D(n234), .SI(\Reg_File[7][7] ), .SE(n362), 
        .CK(CLK), .RN(n342), .Q(\Reg_File[8][0] ) );
  SDFFRQX2M \Reg_File_reg[12][7]  ( .D(n209), .SI(\Reg_File[12][6] ), .SE(n361), .CK(CLK), .RN(n342), .Q(\Reg_File[12][7] ) );
  SDFFRQX2M \Reg_File_reg[12][6]  ( .D(n208), .SI(\Reg_File[12][5] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[12][6] ) );
  SDFFRQX2M \Reg_File_reg[12][5]  ( .D(n207), .SI(\Reg_File[12][4] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[12][5] ) );
  SDFFRQX2M \Reg_File_reg[12][4]  ( .D(n206), .SI(\Reg_File[12][3] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[12][4] ) );
  SDFFRQX2M \Reg_File_reg[12][3]  ( .D(n205), .SI(\Reg_File[12][2] ), .SE(n362), .CK(CLK), .RN(n342), .Q(\Reg_File[12][3] ) );
  SDFFRQX2M \Reg_File_reg[12][2]  ( .D(n204), .SI(\Reg_File[12][1] ), .SE(n359), .CK(CLK), .RN(n342), .Q(\Reg_File[12][2] ) );
  SDFFRQX2M \Reg_File_reg[12][1]  ( .D(n203), .SI(\Reg_File[12][0] ), .SE(n360), .CK(CLK), .RN(n342), .Q(\Reg_File[12][1] ) );
  SDFFRQX2M \Reg_File_reg[12][0]  ( .D(n202), .SI(\Reg_File[11][7] ), .SE(n359), .CK(CLK), .RN(n342), .Q(\Reg_File[12][0] ) );
  SDFFRQX2M RdData_Valid_reg ( .D(n306), .SI(test_si1), .SE(n360), .CK(CLK), 
        .RN(n342), .Q(RdData_Valid) );
  SDFFRQX2M \Reg_File_reg[3][0]  ( .D(n274), .SI(REG2[7]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(REG3[0]) );
  SDFFRQX2M \Reg_File_reg[1][6]  ( .D(n296), .SI(REG1[5]), .SE(n359), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \Reg_File_reg[0][7]  ( .D(n305), .SI(REG0[6]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \Reg_File_reg[0][6]  ( .D(n304), .SI(REG0[5]), .SE(n359), .CK(CLK), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \Reg_File_reg[0][5]  ( .D(n303), .SI(REG0[4]), .SE(n361), .CK(CLK), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \Reg_File_reg[0][4]  ( .D(n302), .SI(REG0[3]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \Reg_File_reg[0][3]  ( .D(n301), .SI(REG0[2]), .SE(n361), .CK(CLK), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \Reg_File_reg[0][2]  ( .D(n300), .SI(REG0[1]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \Reg_File_reg[0][1]  ( .D(n299), .SI(REG0[0]), .SE(n362), .CK(CLK), 
        .RN(n343), .Q(REG0[1]) );
  SDFFRQX2M \Reg_File_reg[0][0]  ( .D(n298), .SI(RdData[7]), .SE(n361), .CK(
        CLK), .RN(n343), .Q(REG0[0]) );
  SDFFSQX2M \Reg_File_reg[2][0]  ( .D(n282), .SI(REG1[7]), .SE(n361), .CK(CLK), 
        .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \Reg_File_reg[1][1]  ( .D(n291), .SI(REG1[0]), .SE(n362), .CK(CLK), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \Reg_File_reg[1][5]  ( .D(n295), .SI(REG1[4]), .SE(n361), .CK(CLK), 
        .RN(n343), .Q(REG1[5]) );
  SDFFRQX2M \Reg_File_reg[1][4]  ( .D(n294), .SI(REG1[3]), .SE(n360), .CK(CLK), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \Reg_File_reg[1][7]  ( .D(n297), .SI(REG1[6]), .SE(n362), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \Reg_File_reg[1][3]  ( .D(n293), .SI(REG1[2]), .SE(n360), .CK(CLK), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \Reg_File_reg[1][2]  ( .D(n292), .SI(REG1[1]), .SE(n362), .CK(CLK), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \Reg_File_reg[1][0]  ( .D(n290), .SI(REG0[7]), .SE(n359), .CK(CLK), 
        .RN(n343), .Q(REG1[0]) );
  SDFFRQX2M \Reg_File_reg[3][6]  ( .D(n280), .SI(REG3[5]), .SE(n360), .CK(CLK), 
        .RN(n343), .Q(REG3[6]) );
  SDFFRQX2M \Reg_File_reg[3][7]  ( .D(n281), .SI(REG3[6]), .SE(n359), .CK(CLK), 
        .RN(n343), .Q(REG3[7]) );
  SDFFSQX2M \Reg_File_reg[3][5]  ( .D(n279), .SI(REG3[4]), .SE(n360), .CK(CLK), 
        .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \Reg_File_reg[2][1]  ( .D(n283), .SI(REG2[0]), .SE(n360), .CK(CLK), 
        .RN(n343), .Q(REG2[1]) );
  SDFFRQX2M \Reg_File_reg[3][4]  ( .D(n278), .SI(REG3[3]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(REG3[4]) );
  SDFFRQX2M \Reg_File_reg[3][2]  ( .D(n276), .SI(REG3[1]), .SE(n359), .CK(CLK), 
        .RN(n343), .Q(REG3[2]) );
  SDFFRQX2M \Reg_File_reg[3][3]  ( .D(n277), .SI(REG3[2]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(REG3[3]) );
  SDFFRQX2M \Reg_File_reg[3][1]  ( .D(n275), .SI(REG3[0]), .SE(n359), .CK(CLK), 
        .RN(n343), .Q(REG3[1]) );
  SDFFRQX2M \Reg_File_reg[2][2]  ( .D(n284), .SI(REG2[1]), .SE(n361), .CK(CLK), 
        .RN(n343), .Q(REG2[2]) );
  SDFFRQX2M \Reg_File_reg[2][3]  ( .D(n285), .SI(REG2[2]), .SE(n363), .CK(CLK), 
        .RN(n343), .Q(REG2[3]) );
  SDFFSQX2M \Reg_File_reg[2][7]  ( .D(n289), .SI(REG2[6]), .SE(n362), .CK(CLK), 
        .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \Reg_File_reg[2][5]  ( .D(n287), .SI(REG2[4]), .SE(n361), .CK(CLK), 
        .RN(n343), .Q(REG2[5]) );
  SDFFRQX2M \Reg_File_reg[2][6]  ( .D(n288), .SI(REG2[5]), .SE(n359), .CK(CLK), 
        .RN(n343), .Q(REG2[6]) );
  SDFFRQX2M \Reg_File_reg[2][4]  ( .D(n286), .SI(REG2[3]), .SE(n362), .CK(CLK), 
        .RN(n343), .Q(REG2[4]) );
  NOR2X2M U140 ( .A(n346), .B(N11), .Y(n156) );
  NOR2X2M U141 ( .A(n346), .B(n341), .Y(n152) );
  NOR2X2M U142 ( .A(N11), .B(N12), .Y(n162) );
  NOR2X2M U143 ( .A(n341), .B(N12), .Y(n159) );
  INVX2M U144 ( .A(n337), .Y(n338) );
  INVX2M U145 ( .A(n335), .Y(n336) );
  INVX2M U146 ( .A(n337), .Y(n339) );
  BUFX2M U147 ( .A(n340), .Y(n337) );
  BUFX2M U148 ( .A(n341), .Y(n335) );
  NAND3X2M U149 ( .A(n151), .B(n342), .C(n152), .Y(n150) );
  NAND2X2M U150 ( .A(n156), .B(n151), .Y(n155) );
  NAND2X2M U151 ( .A(n156), .B(n154), .Y(n157) );
  NAND2X2M U152 ( .A(n154), .B(n152), .Y(n153) );
  NAND2X2M U153 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U154 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U155 ( .A(n167), .B(n156), .Y(n170) );
  NAND2X2M U156 ( .A(n169), .B(n156), .Y(n171) );
  INVX2M U157 ( .A(n177), .Y(n345) );
  INVX6M U158 ( .A(n344), .Y(n342) );
  INVX4M U159 ( .A(n344), .Y(n343) );
  NOR2BX2M U160 ( .AN(n163), .B(n340), .Y(n151) );
  NOR2BX2M U161 ( .AN(n163), .B(N10), .Y(n154) );
  NOR2BX2M U162 ( .AN(n175), .B(n340), .Y(n167) );
  NOR2BX2M U163 ( .AN(n175), .B(N10), .Y(n169) );
  NAND2X2M U164 ( .A(n167), .B(n159), .Y(n172) );
  NAND2X2M U165 ( .A(n169), .B(n159), .Y(n173) );
  NAND2X2M U166 ( .A(n167), .B(n162), .Y(n174) );
  NAND2X2M U167 ( .A(n169), .B(n162), .Y(n176) );
  NAND2X2M U168 ( .A(n159), .B(n151), .Y(n158) );
  NAND2X2M U169 ( .A(n159), .B(n154), .Y(n160) );
  NAND2X2M U170 ( .A(n162), .B(n151), .Y(n161) );
  NAND2X2M U171 ( .A(n162), .B(n154), .Y(n164) );
  NAND2X2M U172 ( .A(n306), .B(n342), .Y(n177) );
  INVX2M U173 ( .A(RST), .Y(n344) );
  OAI2BB2X1M U174 ( .B0(n150), .B1(n354), .A0N(\Reg_File[15][0] ), .A1N(n150), 
        .Y(n178) );
  OAI2BB2X1M U175 ( .B0(n150), .B1(n353), .A0N(\Reg_File[15][1] ), .A1N(n150), 
        .Y(n179) );
  OAI2BB2X1M U176 ( .B0(n150), .B1(n352), .A0N(\Reg_File[15][2] ), .A1N(n150), 
        .Y(n180) );
  OAI2BB2X1M U177 ( .B0(n150), .B1(n351), .A0N(\Reg_File[15][3] ), .A1N(n150), 
        .Y(n181) );
  OAI2BB2X1M U178 ( .B0(n150), .B1(n350), .A0N(\Reg_File[15][4] ), .A1N(n150), 
        .Y(n182) );
  OAI2BB2X1M U179 ( .B0(n150), .B1(n349), .A0N(\Reg_File[15][5] ), .A1N(n150), 
        .Y(n183) );
  OAI2BB2X1M U180 ( .B0(n150), .B1(n348), .A0N(\Reg_File[15][6] ), .A1N(n150), 
        .Y(n184) );
  OAI2BB2X1M U181 ( .B0(n150), .B1(n347), .A0N(\Reg_File[15][7] ), .A1N(n150), 
        .Y(n185) );
  MX4X1M U182 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(N11), .Y(n145) );
  MX4X1M U183 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(N10), .S1(N11), .Y(n140)
         );
  MX4X1M U184 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n338), .S1(N11), .Y(n144)
         );
  MX4X1M U185 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n338), .S1(n336), .Y(n148) );
  MX4X1M U186 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n338), .S1(n336), .Y(n317) );
  MX4X1M U187 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n338), .S1(n336), .Y(n321) );
  MX4X1M U188 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n339), .S1(N11), .Y(n325)
         );
  MX4X1M U189 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n339), .S1(N11), .Y(n329)
         );
  MX4X1M U190 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n339), .S1(N11), .Y(n333)
         );
  MX4X1M U191 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n339), .S1(n336), .Y(
        n138) );
  MX4X1M U192 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n338), .S1(n336), .Y(
        n146) );
  MX4X1M U193 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n338), .S1(n336), .Y(
        n315) );
  MX4X1M U194 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n338), .S1(n336), .Y(
        n319) );
  MX4X1M U195 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n339), .S1(N11), .Y(
        n323) );
  MX4X1M U196 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n339), .S1(N11), .Y(
        n327) );
  MX4X1M U197 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n339), .S1(N11), .Y(
        n331) );
  AND2X2M U198 ( .A(N13), .B(n165), .Y(n163) );
  AO22X1M U199 ( .A0(N42), .A1(n345), .B0(RdData[0]), .B1(n177), .Y(n307) );
  MX4X1M U200 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N13), .S1(N12), 
        .Y(N42) );
  MX4X1M U201 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N10), 
        .S1(N11), .Y(n141) );
  MX4X1M U202 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(N10), .S1(N11), .Y(n139) );
  AO22X1M U203 ( .A0(N41), .A1(n345), .B0(RdData[1]), .B1(n177), .Y(n308) );
  MX4X1M U204 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N13), .S1(N12), 
        .Y(N41) );
  MX4X1M U205 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(N10), .S1(N11), .Y(n143) );
  MX4X1M U206 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n338), .S1(n336), .Y(
        n142) );
  AO22X1M U207 ( .A0(N40), .A1(n345), .B0(RdData[2]), .B1(n177), .Y(n309) );
  MX4X1M U208 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N13), .S1(N12), 
        .Y(N40) );
  MX4X1M U209 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(n336), .Y(n149) );
  MX4X1M U210 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n338), .S1(n336), .Y(
        n147) );
  AO22X1M U211 ( .A0(N39), .A1(n345), .B0(RdData[3]), .B1(n177), .Y(n310) );
  MX4X1M U212 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N13), .S1(N12), 
        .Y(N39) );
  MX4X1M U213 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(n336), .Y(n318) );
  MX4X1M U214 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n338), .S1(n336), .Y(
        n316) );
  AO22X1M U215 ( .A0(N38), .A1(n345), .B0(RdData[4]), .B1(n177), .Y(n311) );
  MX4X1M U216 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N13), .S1(N12), 
        .Y(N38) );
  MX4X1M U217 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(n336), .Y(n322) );
  MX4X1M U218 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n338), .S1(n336), .Y(
        n320) );
  AO22X1M U219 ( .A0(N37), .A1(n345), .B0(RdData[5]), .B1(n177), .Y(n312) );
  MX4X1M U220 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N13), .S1(N12), 
        .Y(N37) );
  MX4X1M U221 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(N11), .Y(n326) );
  MX4X1M U222 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(n339), .S1(N11), .Y(
        n324) );
  AO22X1M U223 ( .A0(N36), .A1(n345), .B0(RdData[6]), .B1(n177), .Y(n313) );
  MX4X1M U224 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N13), .S1(N12), 
        .Y(N36) );
  MX4X1M U225 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(N11), .Y(n330) );
  MX4X1M U226 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(n339), .S1(N11), .Y(
        n328) );
  AO22X1M U227 ( .A0(N35), .A1(n345), .B0(RdData[7]), .B1(n177), .Y(n314) );
  MX4X1M U228 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N13), .S1(N12), 
        .Y(N35) );
  MX4X1M U229 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(N11), .Y(n334) );
  MX4X1M U230 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(n339), .S1(N11), .Y(
        n332) );
  INVX2M U231 ( .A(N10), .Y(n340) );
  INVX2M U232 ( .A(N11), .Y(n341) );
  INVX2M U233 ( .A(WrData[0]), .Y(n354) );
  INVX2M U234 ( .A(WrData[1]), .Y(n353) );
  INVX2M U235 ( .A(WrData[2]), .Y(n352) );
  INVX2M U236 ( .A(WrData[3]), .Y(n351) );
  INVX2M U237 ( .A(WrData[5]), .Y(n349) );
  INVX2M U238 ( .A(WrData[6]), .Y(n348) );
  INVX2M U239 ( .A(WrData[4]), .Y(n350) );
  INVX2M U240 ( .A(WrData[7]), .Y(n347) );
  NOR2BX2M U241 ( .AN(RdEn), .B(WrEn), .Y(n306) );
  OAI2BB2X1M U242 ( .B0(n354), .B1(n153), .A0N(\Reg_File[14][0] ), .A1N(n153), 
        .Y(n186) );
  OAI2BB2X1M U243 ( .B0(n353), .B1(n153), .A0N(\Reg_File[14][1] ), .A1N(n153), 
        .Y(n187) );
  OAI2BB2X1M U244 ( .B0(n352), .B1(n153), .A0N(\Reg_File[14][2] ), .A1N(n153), 
        .Y(n188) );
  OAI2BB2X1M U245 ( .B0(n351), .B1(n153), .A0N(\Reg_File[14][3] ), .A1N(n153), 
        .Y(n189) );
  OAI2BB2X1M U246 ( .B0(n350), .B1(n153), .A0N(\Reg_File[14][4] ), .A1N(n153), 
        .Y(n190) );
  OAI2BB2X1M U247 ( .B0(n349), .B1(n153), .A0N(\Reg_File[14][5] ), .A1N(n153), 
        .Y(n191) );
  OAI2BB2X1M U248 ( .B0(n348), .B1(n153), .A0N(\Reg_File[14][6] ), .A1N(n153), 
        .Y(n192) );
  OAI2BB2X1M U249 ( .B0(n347), .B1(n153), .A0N(\Reg_File[14][7] ), .A1N(n153), 
        .Y(n193) );
  OAI2BB2X1M U250 ( .B0(n354), .B1(n166), .A0N(\Reg_File[7][0] ), .A1N(n166), 
        .Y(n242) );
  OAI2BB2X1M U251 ( .B0(n353), .B1(n166), .A0N(\Reg_File[7][1] ), .A1N(n166), 
        .Y(n243) );
  OAI2BB2X1M U252 ( .B0(n352), .B1(n166), .A0N(\Reg_File[7][2] ), .A1N(n166), 
        .Y(n244) );
  OAI2BB2X1M U253 ( .B0(n351), .B1(n166), .A0N(\Reg_File[7][3] ), .A1N(n166), 
        .Y(n245) );
  OAI2BB2X1M U254 ( .B0(n350), .B1(n166), .A0N(\Reg_File[7][4] ), .A1N(n166), 
        .Y(n246) );
  OAI2BB2X1M U255 ( .B0(n349), .B1(n166), .A0N(\Reg_File[7][5] ), .A1N(n166), 
        .Y(n247) );
  OAI2BB2X1M U256 ( .B0(n348), .B1(n166), .A0N(\Reg_File[7][6] ), .A1N(n166), 
        .Y(n248) );
  OAI2BB2X1M U257 ( .B0(n347), .B1(n166), .A0N(\Reg_File[7][7] ), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U258 ( .B0(n354), .B1(n168), .A0N(\Reg_File[6][0] ), .A1N(n168), 
        .Y(n250) );
  OAI2BB2X1M U259 ( .B0(n353), .B1(n168), .A0N(\Reg_File[6][1] ), .A1N(n168), 
        .Y(n251) );
  OAI2BB2X1M U260 ( .B0(n352), .B1(n168), .A0N(\Reg_File[6][2] ), .A1N(n168), 
        .Y(n252) );
  OAI2BB2X1M U261 ( .B0(n351), .B1(n168), .A0N(\Reg_File[6][3] ), .A1N(n168), 
        .Y(n253) );
  OAI2BB2X1M U262 ( .B0(n350), .B1(n168), .A0N(\Reg_File[6][4] ), .A1N(n168), 
        .Y(n254) );
  OAI2BB2X1M U263 ( .B0(n349), .B1(n168), .A0N(\Reg_File[6][5] ), .A1N(n168), 
        .Y(n255) );
  OAI2BB2X1M U264 ( .B0(n348), .B1(n168), .A0N(\Reg_File[6][6] ), .A1N(n168), 
        .Y(n256) );
  OAI2BB2X1M U265 ( .B0(n347), .B1(n168), .A0N(\Reg_File[6][7] ), .A1N(n168), 
        .Y(n257) );
  OAI2BB2X1M U266 ( .B0(n354), .B1(n170), .A0N(\Reg_File[5][0] ), .A1N(n170), 
        .Y(n258) );
  OAI2BB2X1M U267 ( .B0(n353), .B1(n170), .A0N(\Reg_File[5][1] ), .A1N(n170), 
        .Y(n259) );
  OAI2BB2X1M U268 ( .B0(n352), .B1(n170), .A0N(\Reg_File[5][2] ), .A1N(n170), 
        .Y(n260) );
  OAI2BB2X1M U269 ( .B0(n351), .B1(n170), .A0N(\Reg_File[5][3] ), .A1N(n170), 
        .Y(n261) );
  OAI2BB2X1M U270 ( .B0(n350), .B1(n170), .A0N(\Reg_File[5][4] ), .A1N(n170), 
        .Y(n262) );
  OAI2BB2X1M U271 ( .B0(n349), .B1(n170), .A0N(\Reg_File[5][5] ), .A1N(n170), 
        .Y(n263) );
  OAI2BB2X1M U272 ( .B0(n348), .B1(n170), .A0N(\Reg_File[5][6] ), .A1N(n170), 
        .Y(n264) );
  OAI2BB2X1M U273 ( .B0(n347), .B1(n170), .A0N(\Reg_File[5][7] ), .A1N(n170), 
        .Y(n265) );
  OAI2BB2X1M U274 ( .B0(n354), .B1(n171), .A0N(\Reg_File[4][0] ), .A1N(n171), 
        .Y(n266) );
  OAI2BB2X1M U275 ( .B0(n353), .B1(n171), .A0N(\Reg_File[4][1] ), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U276 ( .B0(n352), .B1(n171), .A0N(\Reg_File[4][2] ), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U277 ( .B0(n351), .B1(n171), .A0N(\Reg_File[4][3] ), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U278 ( .B0(n350), .B1(n171), .A0N(\Reg_File[4][4] ), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U279 ( .B0(n349), .B1(n171), .A0N(\Reg_File[4][5] ), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U280 ( .B0(n348), .B1(n171), .A0N(\Reg_File[4][6] ), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U281 ( .B0(n347), .B1(n171), .A0N(\Reg_File[4][7] ), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U282 ( .B0(n354), .B1(n172), .A0N(REG3[0]), .A1N(n172), .Y(n274)
         );
  OAI2BB2X1M U283 ( .B0(n353), .B1(n172), .A0N(REG3[1]), .A1N(n172), .Y(n275)
         );
  OAI2BB2X1M U284 ( .B0(n352), .B1(n172), .A0N(REG3[2]), .A1N(n172), .Y(n276)
         );
  OAI2BB2X1M U285 ( .B0(n351), .B1(n172), .A0N(REG3[3]), .A1N(n172), .Y(n277)
         );
  OAI2BB2X1M U286 ( .B0(n350), .B1(n172), .A0N(REG3[4]), .A1N(n172), .Y(n278)
         );
  OAI2BB2X1M U287 ( .B0(n348), .B1(n172), .A0N(REG3[6]), .A1N(n172), .Y(n280)
         );
  OAI2BB2X1M U288 ( .B0(n347), .B1(n172), .A0N(REG3[7]), .A1N(n172), .Y(n281)
         );
  OAI2BB2X1M U289 ( .B0(n353), .B1(n173), .A0N(REG2[1]), .A1N(n173), .Y(n283)
         );
  OAI2BB2X1M U290 ( .B0(n352), .B1(n173), .A0N(REG2[2]), .A1N(n173), .Y(n284)
         );
  OAI2BB2X1M U291 ( .B0(n351), .B1(n173), .A0N(REG2[3]), .A1N(n173), .Y(n285)
         );
  OAI2BB2X1M U292 ( .B0(n350), .B1(n173), .A0N(REG2[4]), .A1N(n173), .Y(n286)
         );
  OAI2BB2X1M U293 ( .B0(n349), .B1(n173), .A0N(REG2[5]), .A1N(n173), .Y(n287)
         );
  OAI2BB2X1M U294 ( .B0(n348), .B1(n173), .A0N(REG2[6]), .A1N(n173), .Y(n288)
         );
  OAI2BB2X1M U295 ( .B0(n354), .B1(n174), .A0N(REG1[0]), .A1N(n174), .Y(n290)
         );
  OAI2BB2X1M U296 ( .B0(n353), .B1(n174), .A0N(REG1[1]), .A1N(n174), .Y(n291)
         );
  OAI2BB2X1M U297 ( .B0(n352), .B1(n174), .A0N(REG1[2]), .A1N(n174), .Y(n292)
         );
  OAI2BB2X1M U298 ( .B0(n351), .B1(n174), .A0N(REG1[3]), .A1N(n174), .Y(n293)
         );
  OAI2BB2X1M U299 ( .B0(n350), .B1(n174), .A0N(REG1[4]), .A1N(n174), .Y(n294)
         );
  OAI2BB2X1M U300 ( .B0(n349), .B1(n174), .A0N(REG1[5]), .A1N(n174), .Y(n295)
         );
  OAI2BB2X1M U301 ( .B0(n348), .B1(n174), .A0N(REG1[6]), .A1N(n174), .Y(n296)
         );
  OAI2BB2X1M U302 ( .B0(n347), .B1(n174), .A0N(REG1[7]), .A1N(n174), .Y(n297)
         );
  OAI2BB2X1M U303 ( .B0(n354), .B1(n176), .A0N(REG0[0]), .A1N(n176), .Y(n298)
         );
  OAI2BB2X1M U304 ( .B0(n353), .B1(n176), .A0N(REG0[1]), .A1N(n176), .Y(n299)
         );
  OAI2BB2X1M U305 ( .B0(n352), .B1(n176), .A0N(REG0[2]), .A1N(n176), .Y(n300)
         );
  OAI2BB2X1M U306 ( .B0(n351), .B1(n176), .A0N(REG0[3]), .A1N(n176), .Y(n301)
         );
  OAI2BB2X1M U307 ( .B0(n350), .B1(n176), .A0N(REG0[4]), .A1N(n176), .Y(n302)
         );
  OAI2BB2X1M U308 ( .B0(n349), .B1(n176), .A0N(REG0[5]), .A1N(n176), .Y(n303)
         );
  OAI2BB2X1M U309 ( .B0(n348), .B1(n176), .A0N(REG0[6]), .A1N(n176), .Y(n304)
         );
  OAI2BB2X1M U310 ( .B0(n347), .B1(n176), .A0N(REG0[7]), .A1N(n176), .Y(n305)
         );
  OAI2BB2X1M U311 ( .B0(n354), .B1(n155), .A0N(\Reg_File[13][0] ), .A1N(n155), 
        .Y(n194) );
  OAI2BB2X1M U312 ( .B0(n353), .B1(n155), .A0N(\Reg_File[13][1] ), .A1N(n155), 
        .Y(n195) );
  OAI2BB2X1M U313 ( .B0(n352), .B1(n155), .A0N(\Reg_File[13][2] ), .A1N(n155), 
        .Y(n196) );
  OAI2BB2X1M U314 ( .B0(n351), .B1(n155), .A0N(\Reg_File[13][3] ), .A1N(n155), 
        .Y(n197) );
  OAI2BB2X1M U315 ( .B0(n350), .B1(n155), .A0N(\Reg_File[13][4] ), .A1N(n155), 
        .Y(n198) );
  OAI2BB2X1M U316 ( .B0(n349), .B1(n155), .A0N(\Reg_File[13][5] ), .A1N(n155), 
        .Y(n199) );
  OAI2BB2X1M U317 ( .B0(n348), .B1(n155), .A0N(\Reg_File[13][6] ), .A1N(n155), 
        .Y(n200) );
  OAI2BB2X1M U318 ( .B0(n347), .B1(n155), .A0N(\Reg_File[13][7] ), .A1N(n155), 
        .Y(n201) );
  OAI2BB2X1M U319 ( .B0(n354), .B1(n157), .A0N(\Reg_File[12][0] ), .A1N(n157), 
        .Y(n202) );
  OAI2BB2X1M U320 ( .B0(n353), .B1(n157), .A0N(\Reg_File[12][1] ), .A1N(n157), 
        .Y(n203) );
  OAI2BB2X1M U321 ( .B0(n352), .B1(n157), .A0N(\Reg_File[12][2] ), .A1N(n157), 
        .Y(n204) );
  OAI2BB2X1M U322 ( .B0(n351), .B1(n157), .A0N(\Reg_File[12][3] ), .A1N(n157), 
        .Y(n205) );
  OAI2BB2X1M U323 ( .B0(n350), .B1(n157), .A0N(\Reg_File[12][4] ), .A1N(n157), 
        .Y(n206) );
  OAI2BB2X1M U324 ( .B0(n349), .B1(n157), .A0N(\Reg_File[12][5] ), .A1N(n157), 
        .Y(n207) );
  OAI2BB2X1M U325 ( .B0(n348), .B1(n157), .A0N(\Reg_File[12][6] ), .A1N(n157), 
        .Y(n208) );
  OAI2BB2X1M U326 ( .B0(n347), .B1(n157), .A0N(\Reg_File[12][7] ), .A1N(n157), 
        .Y(n209) );
  OAI2BB2X1M U327 ( .B0(n354), .B1(n158), .A0N(\Reg_File[11][0] ), .A1N(n158), 
        .Y(n210) );
  OAI2BB2X1M U328 ( .B0(n353), .B1(n158), .A0N(\Reg_File[11][1] ), .A1N(n158), 
        .Y(n211) );
  OAI2BB2X1M U329 ( .B0(n352), .B1(n158), .A0N(\Reg_File[11][2] ), .A1N(n158), 
        .Y(n212) );
  OAI2BB2X1M U330 ( .B0(n351), .B1(n158), .A0N(\Reg_File[11][3] ), .A1N(n158), 
        .Y(n213) );
  OAI2BB2X1M U331 ( .B0(n350), .B1(n158), .A0N(\Reg_File[11][4] ), .A1N(n158), 
        .Y(n214) );
  OAI2BB2X1M U332 ( .B0(n349), .B1(n158), .A0N(\Reg_File[11][5] ), .A1N(n158), 
        .Y(n215) );
  OAI2BB2X1M U333 ( .B0(n348), .B1(n158), .A0N(\Reg_File[11][6] ), .A1N(n158), 
        .Y(n216) );
  OAI2BB2X1M U334 ( .B0(n347), .B1(n158), .A0N(\Reg_File[11][7] ), .A1N(n158), 
        .Y(n217) );
  OAI2BB2X1M U335 ( .B0(n354), .B1(n160), .A0N(\Reg_File[10][0] ), .A1N(n160), 
        .Y(n218) );
  OAI2BB2X1M U336 ( .B0(n353), .B1(n160), .A0N(\Reg_File[10][1] ), .A1N(n160), 
        .Y(n219) );
  OAI2BB2X1M U337 ( .B0(n352), .B1(n160), .A0N(\Reg_File[10][2] ), .A1N(n160), 
        .Y(n220) );
  OAI2BB2X1M U338 ( .B0(n351), .B1(n160), .A0N(\Reg_File[10][3] ), .A1N(n160), 
        .Y(n221) );
  OAI2BB2X1M U339 ( .B0(n350), .B1(n160), .A0N(\Reg_File[10][4] ), .A1N(n160), 
        .Y(n222) );
  OAI2BB2X1M U340 ( .B0(n349), .B1(n160), .A0N(\Reg_File[10][5] ), .A1N(n160), 
        .Y(n223) );
  OAI2BB2X1M U341 ( .B0(n348), .B1(n160), .A0N(\Reg_File[10][6] ), .A1N(n160), 
        .Y(n224) );
  OAI2BB2X1M U342 ( .B0(n347), .B1(n160), .A0N(\Reg_File[10][7] ), .A1N(n160), 
        .Y(n225) );
  OAI2BB2X1M U343 ( .B0(n354), .B1(n161), .A0N(\Reg_File[9][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U344 ( .B0(n353), .B1(n161), .A0N(\Reg_File[9][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U345 ( .B0(n352), .B1(n161), .A0N(\Reg_File[9][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U346 ( .B0(n351), .B1(n161), .A0N(\Reg_File[9][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U347 ( .B0(n350), .B1(n161), .A0N(\Reg_File[9][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U348 ( .B0(n349), .B1(n161), .A0N(\Reg_File[9][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U349 ( .B0(n348), .B1(n161), .A0N(\Reg_File[9][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U350 ( .B0(n347), .B1(n161), .A0N(\Reg_File[9][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U351 ( .B0(n354), .B1(n164), .A0N(\Reg_File[8][0] ), .A1N(n164), 
        .Y(n234) );
  OAI2BB2X1M U352 ( .B0(n353), .B1(n164), .A0N(\Reg_File[8][1] ), .A1N(n164), 
        .Y(n235) );
  OAI2BB2X1M U353 ( .B0(n352), .B1(n164), .A0N(\Reg_File[8][2] ), .A1N(n164), 
        .Y(n236) );
  OAI2BB2X1M U354 ( .B0(n351), .B1(n164), .A0N(\Reg_File[8][3] ), .A1N(n164), 
        .Y(n237) );
  OAI2BB2X1M U355 ( .B0(n350), .B1(n164), .A0N(\Reg_File[8][4] ), .A1N(n164), 
        .Y(n238) );
  OAI2BB2X1M U356 ( .B0(n349), .B1(n164), .A0N(\Reg_File[8][5] ), .A1N(n164), 
        .Y(n239) );
  OAI2BB2X1M U357 ( .B0(n348), .B1(n164), .A0N(\Reg_File[8][6] ), .A1N(n164), 
        .Y(n240) );
  OAI2BB2X1M U358 ( .B0(n347), .B1(n164), .A0N(\Reg_File[8][7] ), .A1N(n164), 
        .Y(n241) );
  OAI2BB2X1M U359 ( .B0(n349), .B1(n172), .A0N(REG3[5]), .A1N(n172), .Y(n279)
         );
  OAI2BB2X1M U360 ( .B0(n354), .B1(n173), .A0N(REG2[0]), .A1N(n173), .Y(n282)
         );
  OAI2BB2X1M U361 ( .B0(n347), .B1(n173), .A0N(REG2[7]), .A1N(n173), .Y(n289)
         );
  NOR2BX2M U362 ( .AN(n165), .B(N13), .Y(n175) );
  NOR2BX2M U363 ( .AN(WrEn), .B(RdEn), .Y(n165) );
  INVX2M U364 ( .A(N12), .Y(n346) );
  DLY1X1M U365 ( .A(test_se), .Y(n359) );
  DLY1X1M U366 ( .A(test_se), .Y(n360) );
  DLY1X1M U367 ( .A(test_se), .Y(n361) );
  DLY1X1M U368 ( .A(test_se), .Y(n362) );
  DLY1X1M U369 ( .A(test_se), .Y(n363) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
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
  NAND2X2M U10 ( .A(n2), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U11 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n3) );
  INVX2M U13 ( .A(n18), .Y(n2) );
  NAND2X2M U14 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n5) );
  INVX2M U16 ( .A(n18), .Y(n4) );
  NAND2X2M U17 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  INVX2M U19 ( .A(n18), .Y(n6) );
  NAND2X2M U20 ( .A(n6), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U21 ( .A(a[2]), .Y(n8) );
  NAND2X2M U22 ( .A(n4), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U23 ( .A(a[1]), .Y(n9) );
  NAND2X2M U24 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n1) );
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
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
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
  INVX2M U5 ( .A(n9), .Y(SUM[6]) );
  XNOR2X2M U6 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U7 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U8 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
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
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n23) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U17 ( .A(\ab[0][7] ), .Y(n24) );
  INVX2M U18 ( .A(\ab[0][4] ), .Y(n21) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n22) );
  INVX2M U20 ( .A(\ab[0][3] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n19) );
  XNOR2X2M U22 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U23 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U24 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U25 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U27 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U28 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U29 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U30 ( .A(\ab[1][0] ), .B(n18), .Y(PRODUCT[1]) );
  INVX2M U31 ( .A(\ab[0][1] ), .Y(n18) );
  XNOR2X2M U32 ( .A(\ab[1][6] ), .B(n24), .Y(\SUMB[1][6] ) );
  XNOR2X2M U33 ( .A(\ab[1][2] ), .B(n20), .Y(\SUMB[1][2] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n21), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n22), .Y(\SUMB[1][4] ) );
  XNOR2X2M U36 ( .A(\ab[1][5] ), .B(n23), .Y(\SUMB[1][5] ) );
  XNOR2X2M U37 ( .A(\ab[1][1] ), .B(n19), .Y(\SUMB[1][1] ) );
  INVX2M U38 ( .A(A[7]), .Y(n25) );
  INVX2M U39 ( .A(A[6]), .Y(n26) );
  INVX2M U40 ( .A(A[1]), .Y(n31) );
  INVX2M U41 ( .A(A[0]), .Y(n32) );
  INVX2M U42 ( .A(A[3]), .Y(n29) );
  INVX2M U43 ( .A(A[2]), .Y(n30) );
  INVX2M U44 ( .A(A[4]), .Y(n28) );
  INVX2M U45 ( .A(A[5]), .Y(n27) );
  INVX2M U46 ( .A(B[6]), .Y(n34) );
  INVX2M U47 ( .A(B[0]), .Y(n40) );
  INVX2M U48 ( .A(B[2]), .Y(n38) );
  INVX2M U49 ( .A(B[3]), .Y(n37) );
  INVX2M U50 ( .A(B[7]), .Y(n33) );
  INVX2M U51 ( .A(B[5]), .Y(n35) );
  INVX2M U52 ( .A(B[4]), .Y(n36) );
  INVX2M U53 ( .A(B[1]), .Y(n39) );
  NOR2X1M U55 ( .A(n25), .B(n33), .Y(\ab[7][7] ) );
  NOR2X1M U56 ( .A(n25), .B(n34), .Y(\ab[7][6] ) );
  NOR2X1M U57 ( .A(n25), .B(n35), .Y(\ab[7][5] ) );
  NOR2X1M U58 ( .A(n25), .B(n36), .Y(\ab[7][4] ) );
  NOR2X1M U59 ( .A(n25), .B(n37), .Y(\ab[7][3] ) );
  NOR2X1M U60 ( .A(n25), .B(n38), .Y(\ab[7][2] ) );
  NOR2X1M U61 ( .A(n25), .B(n39), .Y(\ab[7][1] ) );
  NOR2X1M U62 ( .A(n25), .B(n40), .Y(\ab[7][0] ) );
  NOR2X1M U63 ( .A(n33), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U64 ( .A(n34), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U65 ( .A(n35), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U66 ( .A(n36), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U67 ( .A(n37), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U68 ( .A(n38), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U69 ( .A(n39), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U70 ( .A(n40), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U71 ( .A(n33), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U72 ( .A(n34), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U73 ( .A(n35), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U74 ( .A(n36), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U75 ( .A(n37), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U76 ( .A(n38), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U77 ( .A(n39), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U78 ( .A(n40), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U79 ( .A(n33), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U80 ( .A(n34), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U81 ( .A(n35), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U82 ( .A(n36), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U83 ( .A(n37), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U84 ( .A(n38), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U85 ( .A(n39), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U86 ( .A(n40), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U87 ( .A(n33), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U88 ( .A(n34), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U89 ( .A(n35), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U90 ( .A(n36), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U91 ( .A(n37), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U92 ( .A(n38), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U93 ( .A(n39), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U94 ( .A(n40), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U95 ( .A(n33), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U96 ( .A(n34), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U97 ( .A(n35), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U98 ( .A(n36), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U99 ( .A(n37), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U100 ( .A(n38), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U101 ( .A(n39), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U102 ( .A(n40), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U103 ( .A(n33), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U104 ( .A(n34), .B(n31), .Y(\ab[1][6] ) );
  NOR2X1M U105 ( .A(n35), .B(n31), .Y(\ab[1][5] ) );
  NOR2X1M U106 ( .A(n36), .B(n31), .Y(\ab[1][4] ) );
  NOR2X1M U107 ( .A(n37), .B(n31), .Y(\ab[1][3] ) );
  NOR2X1M U108 ( .A(n38), .B(n31), .Y(\ab[1][2] ) );
  NOR2X1M U109 ( .A(n39), .B(n31), .Y(\ab[1][1] ) );
  NOR2X1M U110 ( .A(n40), .B(n31), .Y(\ab[1][0] ) );
  NOR2X1M U111 ( .A(n33), .B(n32), .Y(\ab[0][7] ) );
  NOR2X1M U112 ( .A(n34), .B(n32), .Y(\ab[0][6] ) );
  NOR2X1M U113 ( .A(n35), .B(n32), .Y(\ab[0][5] ) );
  NOR2X1M U114 ( .A(n36), .B(n32), .Y(\ab[0][4] ) );
  NOR2X1M U115 ( .A(n37), .B(n32), .Y(\ab[0][3] ) );
  NOR2X1M U116 ( .A(n38), .B(n32), .Y(\ab[0][2] ) );
  NOR2X1M U117 ( .A(n39), .B(n32), .Y(\ab[0][1] ) );
  NOR2X1M U118 ( .A(n40), .B(n32), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( CLK, RST, Enable, A, B, ALU_FUN, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable, test_si, test_se;
  output OUT_VALID;
  wire   N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N159, N160, N161, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n4, n5, n6, n7, n8, n9, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196;

  SDFFQX2M \ALU_OUT_reg[7]  ( .D(n159), .SI(ALU_OUT[6]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[7]) );
  SDFFQX2M \ALU_OUT_reg[6]  ( .D(n158), .SI(ALU_OUT[5]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[6]) );
  SDFFQX2M \ALU_OUT_reg[5]  ( .D(n157), .SI(ALU_OUT[4]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[5]) );
  SDFFQX2M \ALU_OUT_reg[4]  ( .D(n156), .SI(ALU_OUT[3]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[4]) );
  SDFFQX2M \ALU_OUT_reg[3]  ( .D(n155), .SI(ALU_OUT[2]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[3]) );
  SDFFQX2M \ALU_OUT_reg[2]  ( .D(n154), .SI(ALU_OUT[1]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[2]) );
  SDFFQX2M \ALU_OUT_reg[1]  ( .D(n153), .SI(ALU_OUT[0]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[1]) );
  SDFFQX2M \ALU_OUT_reg[0]  ( .D(n152), .SI(test_si), .SE(test_se), .CK(CLK), 
        .Q(ALU_OUT[0]) );
  SDFFQX2M \ALU_OUT_reg[8]  ( .D(n160), .SI(ALU_OUT[7]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[8]) );
  SDFFQX2M \ALU_OUT_reg[15]  ( .D(n172), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        CLK), .Q(ALU_OUT[15]) );
  SDFFQX2M \ALU_OUT_reg[14]  ( .D(n173), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        CLK), .Q(ALU_OUT[14]) );
  SDFFQX2M \ALU_OUT_reg[13]  ( .D(n174), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        CLK), .Q(ALU_OUT[13]) );
  SDFFQX2M \ALU_OUT_reg[12]  ( .D(n175), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        CLK), .Q(ALU_OUT[12]) );
  SDFFQX2M \ALU_OUT_reg[11]  ( .D(n176), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        CLK), .Q(ALU_OUT[11]) );
  SDFFQX2M \ALU_OUT_reg[10]  ( .D(n177), .SI(ALU_OUT[9]), .SE(test_se), .CK(
        CLK), .Q(ALU_OUT[10]) );
  SDFFQX2M \ALU_OUT_reg[9]  ( .D(n178), .SI(ALU_OUT[8]), .SE(test_se), .CK(CLK), .Q(ALU_OUT[9]) );
  SDFFX1M OUT_VALID_reg ( .D(n161), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .Q(OUT_VALID), .QN(n181) );
  NOR3X2M U23 ( .A(n194), .B(ALU_FUN[2]), .C(n133), .Y(n75) );
  NOR3X2M U24 ( .A(n194), .B(ALU_FUN[2]), .C(n136), .Y(n76) );
  BUFX2M U25 ( .A(A[6]), .Y(n28) );
  INVX2M U26 ( .A(n138), .Y(n179) );
  INVX2M U27 ( .A(n140), .Y(n180) );
  OAI21X2M U28 ( .A0(n74), .A1(n150), .B0(n140), .Y(n138) );
  AO21XLM U29 ( .A0(N110), .A1(n77), .B0(n31), .Y(n150) );
  NOR2X2M U30 ( .A(n151), .B(n30), .Y(n140) );
  BUFX2M U31 ( .A(n57), .Y(n30) );
  AOI21X2M U32 ( .A0(n181), .A1(n196), .B0(n33), .Y(n57) );
  AND2X2M U33 ( .A(n75), .B(n140), .Y(n143) );
  INVX2M U34 ( .A(n4), .Y(n168) );
  AOI222X1M U35 ( .A0(N94), .A1(n78), .B0(N112), .B1(n75), .C0(N103), .C1(n77), 
        .Y(n80) );
  AOI222X1M U36 ( .A0(N111), .A1(n75), .B0(n32), .B1(n5), .C0(N127), .C1(n76), 
        .Y(n60) );
  AOI222X1M U37 ( .A0(N113), .A1(n75), .B0(n7), .B1(n32), .C0(N129), .C1(n76), 
        .Y(n92) );
  AOI222X1M U38 ( .A0(N114), .A1(n75), .B0(n8), .B1(n32), .C0(N130), .C1(n76), 
        .Y(n99) );
  AOI222X1M U39 ( .A0(N115), .A1(n75), .B0(n9), .B1(n32), .C0(N131), .C1(n76), 
        .Y(n106) );
  AOI222X1M U40 ( .A0(N116), .A1(n75), .B0(n27), .B1(n32), .C0(N132), .C1(n76), 
        .Y(n113) );
  AOI222X1M U41 ( .A0(N117), .A1(n75), .B0(n28), .B1(n32), .C0(N133), .C1(n76), 
        .Y(n120) );
  OAI21X2M U42 ( .A0(n141), .A1(n136), .B0(n134), .Y(n74) );
  OAI222X1M U43 ( .A0(n123), .A1(n168), .B0(n4), .B1(n124), .C0(n192), .C1(
        n183), .Y(n122) );
  AOI221XLM U44 ( .A0(n28), .A1(n67), .B0(n74), .B1(n182), .C0(n31), .Y(n124)
         );
  AOI221XLM U45 ( .A0(n67), .A1(n182), .B0(n28), .B1(n68), .C0(n32), .Y(n123)
         );
  NOR3X2M U46 ( .A(n193), .B(n89), .C(n195), .Y(n65) );
  OAI21X2M U47 ( .A0(n89), .A1(n133), .B0(n134), .Y(n68) );
  AOI221XLM U48 ( .A0(n67), .A1(n171), .B0(n29), .B1(n68), .C0(n32), .Y(n130)
         );
  NOR2BX2M U49 ( .AN(n135), .B(n136), .Y(n77) );
  NOR2BX2M U50 ( .AN(n135), .B(n133), .Y(n78) );
  NAND2X2M U51 ( .A(n193), .B(n195), .Y(n133) );
  INVX2M U52 ( .A(n132), .Y(n192) );
  BUFX2M U53 ( .A(n62), .Y(n31) );
  NOR2X2M U54 ( .A(n133), .B(n141), .Y(n62) );
  BUFX2M U55 ( .A(n69), .Y(n32) );
  NOR2X2M U56 ( .A(n136), .B(n89), .Y(n69) );
  INVX2M U57 ( .A(n5), .Y(n188) );
  INVX2M U58 ( .A(RST), .Y(n33) );
  INVX2M U59 ( .A(n28), .Y(n182) );
  INVX2M U60 ( .A(n6), .Y(n187) );
  INVX2M U61 ( .A(n8), .Y(n185) );
  INVX2M U62 ( .A(n7), .Y(n186) );
  INVX2M U63 ( .A(n9), .Y(n184) );
  INVX2M U64 ( .A(n27), .Y(n183) );
  INVX2M U65 ( .A(n151), .Y(n196) );
  INVX2M U66 ( .A(n29), .Y(n171) );
  OAI32X1M U67 ( .A0(n181), .A1(n196), .A2(n33), .B0(OUT_VALID), .B1(n151), 
        .Y(n161) );
  OAI211X2M U68 ( .A0(n137), .A1(n180), .B0(n138), .C0(n139), .Y(n160) );
  AOI222X1M U69 ( .A0(N101), .A1(n78), .B0(n29), .B1(n132), .C0(N119), .C1(n75), .Y(n137) );
  NAND2X2M U70 ( .A(ALU_OUT[8]), .B(n30), .Y(n139) );
  INVX2M U71 ( .A(n142), .Y(n178) );
  AOI221XLM U72 ( .A0(ALU_OUT[9]), .A1(n30), .B0(N120), .B1(n143), .C0(n179), 
        .Y(n142) );
  INVX2M U73 ( .A(n144), .Y(n177) );
  AOI221XLM U74 ( .A0(ALU_OUT[10]), .A1(n30), .B0(N121), .B1(n143), .C0(n179), 
        .Y(n144) );
  INVX2M U75 ( .A(n145), .Y(n176) );
  AOI221XLM U76 ( .A0(ALU_OUT[11]), .A1(n30), .B0(N122), .B1(n143), .C0(n179), 
        .Y(n145) );
  INVX2M U77 ( .A(n146), .Y(n175) );
  AOI221XLM U78 ( .A0(ALU_OUT[12]), .A1(n30), .B0(N123), .B1(n143), .C0(n179), 
        .Y(n146) );
  INVX2M U79 ( .A(n147), .Y(n174) );
  AOI221XLM U80 ( .A0(ALU_OUT[13]), .A1(n30), .B0(N124), .B1(n143), .C0(n179), 
        .Y(n147) );
  INVX2M U81 ( .A(n148), .Y(n173) );
  AOI221XLM U82 ( .A0(ALU_OUT[14]), .A1(n30), .B0(N125), .B1(n143), .C0(n179), 
        .Y(n148) );
  INVX2M U83 ( .A(n149), .Y(n172) );
  AOI221XLM U84 ( .A0(ALU_OUT[15]), .A1(n30), .B0(N126), .B1(n143), .C0(n179), 
        .Y(n149) );
  AO21XLM U85 ( .A0(ALU_OUT[0]), .A1(n30), .B0(n58), .Y(n152) );
  AOI31X2M U86 ( .A0(n59), .A1(n60), .A2(n61), .B0(n180), .Y(n58) );
  AOI22X1M U87 ( .A0(N102), .A1(n77), .B0(N93), .B1(n78), .Y(n59) );
  AOI211X2M U88 ( .A0(n31), .A1(n188), .B0(n63), .C0(n64), .Y(n61) );
  AO21XLM U89 ( .A0(ALU_OUT[1]), .A1(n30), .B0(n79), .Y(n153) );
  AOI31X2M U90 ( .A0(n80), .A1(n81), .A2(n82), .B0(n180), .Y(n79) );
  AOI211X2M U91 ( .A0(n7), .A1(n65), .B0(n83), .C0(n84), .Y(n82) );
  AOI222X1M U92 ( .A0(N128), .A1(n76), .B0(n31), .B1(n187), .C0(n32), .C1(n6), 
        .Y(n81) );
  AO21XLM U93 ( .A0(ALU_OUT[2]), .A1(n30), .B0(n90), .Y(n154) );
  AOI31X2M U94 ( .A0(n91), .A1(n92), .A2(n93), .B0(n180), .Y(n90) );
  AOI22X1M U95 ( .A0(N104), .A1(n77), .B0(N95), .B1(n78), .Y(n91) );
  AOI221XLM U96 ( .A0(n8), .A1(n65), .B0(n31), .B1(n186), .C0(n94), .Y(n93) );
  AO21XLM U97 ( .A0(ALU_OUT[3]), .A1(n30), .B0(n97), .Y(n155) );
  AOI31X2M U98 ( .A0(n98), .A1(n99), .A2(n100), .B0(n180), .Y(n97) );
  AOI22X1M U99 ( .A0(N105), .A1(n77), .B0(N96), .B1(n78), .Y(n98) );
  AOI221XLM U100 ( .A0(n9), .A1(n65), .B0(n31), .B1(n185), .C0(n101), .Y(n100)
         );
  AO21XLM U101 ( .A0(ALU_OUT[4]), .A1(n30), .B0(n104), .Y(n156) );
  AOI31X2M U102 ( .A0(n105), .A1(n106), .A2(n107), .B0(n180), .Y(n104) );
  AOI22X1M U103 ( .A0(N106), .A1(n77), .B0(N97), .B1(n78), .Y(n105) );
  AOI221XLM U104 ( .A0(n27), .A1(n65), .B0(n31), .B1(n184), .C0(n108), .Y(n107) );
  AO21XLM U105 ( .A0(ALU_OUT[5]), .A1(n30), .B0(n111), .Y(n157) );
  AOI31X2M U106 ( .A0(n112), .A1(n113), .A2(n114), .B0(n180), .Y(n111) );
  AOI22X1M U107 ( .A0(N107), .A1(n77), .B0(N98), .B1(n78), .Y(n112) );
  AOI221XLM U108 ( .A0(n28), .A1(n65), .B0(n31), .B1(n183), .C0(n115), .Y(n114) );
  AO21XLM U109 ( .A0(ALU_OUT[6]), .A1(n30), .B0(n118), .Y(n158) );
  AOI31X2M U110 ( .A0(n119), .A1(n120), .A2(n121), .B0(n180), .Y(n118) );
  AOI22X1M U111 ( .A0(N108), .A1(n77), .B0(N99), .B1(n78), .Y(n119) );
  AOI221XLM U112 ( .A0(n29), .A1(n65), .B0(n31), .B1(n182), .C0(n122), .Y(n121) );
  AO21XLM U113 ( .A0(ALU_OUT[7]), .A1(n30), .B0(n125), .Y(n159) );
  AOI31X2M U114 ( .A0(n126), .A1(n127), .A2(n128), .B0(n180), .Y(n125) );
  AOI22X1M U115 ( .A0(N134), .A1(n76), .B0(N118), .B1(n75), .Y(n127) );
  AOI22X1M U116 ( .A0(N109), .A1(n77), .B0(N100), .B1(n78), .Y(n126) );
  OAI222X1M U117 ( .A0(n95), .A1(n166), .B0(B[2]), .B1(n96), .C0(n187), .C1(
        n192), .Y(n94) );
  AOI221XLM U118 ( .A0(n7), .A1(n67), .B0(n74), .B1(n186), .C0(n31), .Y(n96)
         );
  AOI221XLM U119 ( .A0(n67), .A1(n186), .B0(n7), .B1(n68), .C0(n32), .Y(n95)
         );
  OAI222X1M U120 ( .A0(n102), .A1(n167), .B0(B[3]), .B1(n103), .C0(n192), .C1(
        n186), .Y(n101) );
  AOI221XLM U121 ( .A0(n8), .A1(n67), .B0(n74), .B1(n185), .C0(n31), .Y(n103)
         );
  AOI221XLM U122 ( .A0(n67), .A1(n185), .B0(n8), .B1(n68), .C0(n32), .Y(n102)
         );
  OAI222X1M U123 ( .A0(n109), .A1(n191), .B0(B[4]), .B1(n110), .C0(n192), .C1(
        n185), .Y(n108) );
  INVX2M U124 ( .A(B[4]), .Y(n191) );
  AOI221XLM U125 ( .A0(n9), .A1(n67), .B0(n74), .B1(n184), .C0(n31), .Y(n110)
         );
  AOI221XLM U126 ( .A0(n67), .A1(n184), .B0(n9), .B1(n68), .C0(n32), .Y(n109)
         );
  OAI222X1M U127 ( .A0(n116), .A1(n190), .B0(B[5]), .B1(n117), .C0(n192), .C1(
        n184), .Y(n115) );
  INVX2M U128 ( .A(B[5]), .Y(n190) );
  AOI221XLM U129 ( .A0(n27), .A1(n67), .B0(n74), .B1(n183), .C0(n31), .Y(n117)
         );
  AOI221XLM U130 ( .A0(n67), .A1(n183), .B0(n27), .B1(n68), .C0(n32), .Y(n116)
         );
  AOI221XLM U131 ( .A0(n31), .A1(n171), .B0(n29), .B1(n32), .C0(n129), .Y(n128) );
  OAI222X1M U132 ( .A0(n130), .A1(n189), .B0(B[7]), .B1(n131), .C0(n192), .C1(
        n182), .Y(n129) );
  INVX2M U133 ( .A(B[7]), .Y(n189) );
  AOI221XLM U134 ( .A0(n29), .A1(n67), .B0(n74), .B1(n171), .C0(n31), .Y(n131)
         );
  NOR4BX1M U135 ( .AN(N161), .B(n193), .C(n89), .D(ALU_FUN[0]), .Y(n73) );
  NOR3X2M U136 ( .A(n193), .B(ALU_FUN[0]), .C(n141), .Y(n132) );
  INVX2M U137 ( .A(n34), .Y(n169) );
  OAI2B2X1M U138 ( .A1N(B[1]), .A0(n85), .B0(n188), .B1(n192), .Y(n84) );
  AOI221XLM U139 ( .A0(n67), .A1(n187), .B0(n6), .B1(n68), .C0(n32), .Y(n85)
         );
  NOR2X2M U140 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n135) );
  AND3X2M U141 ( .A(n135), .B(ALU_FUN[3]), .C(n195), .Y(n67) );
  NAND2X2M U142 ( .A(ALU_FUN[0]), .B(n193), .Y(n136) );
  NAND2X2M U143 ( .A(ALU_FUN[2]), .B(n194), .Y(n89) );
  INVX2M U144 ( .A(ALU_FUN[3]), .Y(n193) );
  NAND2X2M U145 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n141) );
  INVX2M U146 ( .A(n45), .Y(n170) );
  OAI21X2M U147 ( .A0(B[0]), .A1(n70), .B0(n71), .Y(n63) );
  AOI31X2M U148 ( .A0(N159), .A1(ALU_FUN[1]), .A2(n72), .B0(n73), .Y(n71) );
  AOI221XLM U149 ( .A0(n5), .A1(n67), .B0(n74), .B1(n188), .C0(n31), .Y(n70)
         );
  NOR3X2M U150 ( .A(n193), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n72) );
  OAI21X2M U151 ( .A0(B[1]), .A1(n86), .B0(n87), .Y(n83) );
  AOI31X2M U152 ( .A0(N160), .A1(ALU_FUN[0]), .A2(n88), .B0(n73), .Y(n87) );
  AOI221XLM U153 ( .A0(n6), .A1(n67), .B0(n74), .B1(n187), .C0(n31), .Y(n86)
         );
  NOR3X2M U154 ( .A(n194), .B(ALU_FUN[2]), .C(n193), .Y(n88) );
  NAND3X2M U155 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .C(n135), .Y(n134) );
  INVX2M U156 ( .A(ALU_FUN[0]), .Y(n195) );
  INVX2M U157 ( .A(ALU_FUN[1]), .Y(n194) );
  BUFX2M U158 ( .A(A[7]), .Y(n29) );
  BUFX2M U159 ( .A(A[1]), .Y(n6) );
  NAND2BX2M U160 ( .AN(n33), .B(Enable), .Y(n151) );
  BUFX2M U161 ( .A(A[0]), .Y(n5) );
  BUFX2M U162 ( .A(A[3]), .Y(n8) );
  BUFX2M U163 ( .A(A[2]), .Y(n7) );
  BUFX2M U164 ( .A(A[4]), .Y(n9) );
  BUFX2M U165 ( .A(A[5]), .Y(n27) );
  BUFX2M U166 ( .A(B[6]), .Y(n4) );
  INVX2M U167 ( .A(B[0]), .Y(n165) );
  INVX2M U168 ( .A(B[2]), .Y(n166) );
  INVX2M U169 ( .A(B[3]), .Y(n167) );
  AO2B2X2M U170 ( .B0(n65), .B1(n6), .A0(B[0]), .A1N(n66), .Y(n64) );
  AOI221XLM U171 ( .A0(n67), .A1(n188), .B0(n5), .B1(n68), .C0(n32), .Y(n66)
         );
  NOR2X1M U172 ( .A(n171), .B(B[7]), .Y(n56) );
  NAND2BX1M U173 ( .AN(B[4]), .B(n9), .Y(n49) );
  NAND2BX1M U174 ( .AN(n9), .B(B[4]), .Y(n38) );
  CLKNAND2X2M U175 ( .A(n49), .B(n38), .Y(n51) );
  NOR2X1M U176 ( .A(n167), .B(n8), .Y(n46) );
  NOR2X1M U177 ( .A(n166), .B(n7), .Y(n37) );
  NOR2X1M U178 ( .A(n165), .B(n5), .Y(n34) );
  CLKNAND2X2M U179 ( .A(n7), .B(n166), .Y(n48) );
  NAND2BX1M U180 ( .AN(n37), .B(n48), .Y(n43) );
  AOI21X1M U181 ( .A0(n34), .A1(n187), .B0(B[1]), .Y(n35) );
  AOI211X1M U182 ( .A0(n6), .A1(n169), .B0(n43), .C0(n35), .Y(n36) );
  CLKNAND2X2M U183 ( .A(n8), .B(n167), .Y(n47) );
  OAI31X1M U184 ( .A0(n46), .A1(n37), .A2(n36), .B0(n47), .Y(n39) );
  NAND2BX1M U185 ( .AN(n27), .B(B[5]), .Y(n54) );
  OAI211X1M U186 ( .A0(n51), .A1(n39), .B0(n38), .C0(n54), .Y(n40) );
  NAND2BX1M U187 ( .AN(B[5]), .B(n27), .Y(n50) );
  XNOR2X1M U188 ( .A(n28), .B(n4), .Y(n53) );
  AOI32X1M U189 ( .A0(n40), .A1(n50), .A2(n53), .B0(n4), .B1(n182), .Y(n41) );
  CLKNAND2X2M U190 ( .A(B[7]), .B(n171), .Y(n162) );
  OAI21X1M U191 ( .A0(n56), .A1(n41), .B0(n162), .Y(N161) );
  CLKNAND2X2M U192 ( .A(n5), .B(n165), .Y(n44) );
  OA21X1M U193 ( .A0(n44), .A1(n187), .B0(B[1]), .Y(n42) );
  AOI211X1M U194 ( .A0(n44), .A1(n187), .B0(n43), .C0(n42), .Y(n45) );
  AOI31X1M U195 ( .A0(n170), .A1(n48), .A2(n47), .B0(n46), .Y(n52) );
  OAI2B11X1M U196 ( .A1N(n52), .A0(n51), .B0(n50), .C0(n49), .Y(n55) );
  AOI32X1M U197 ( .A0(n55), .A1(n54), .A2(n53), .B0(n28), .B1(n168), .Y(n163)
         );
  AOI2B1X1M U198 ( .A1N(n163), .A0(n162), .B0(n56), .Y(n164) );
  CLKINVX1M U199 ( .A(n164), .Y(N160) );
  NOR2X1M U200 ( .A(N161), .B(N160), .Y(N159) );
  ALU_DW_div_uns_0 div_25 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N134, N133, N132, N131, N130, N129, N128, 
        N127}) );
  ALU_DW01_sub_0 sub_23 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N110, N109, N108, N107, 
        N106, N105, N104, N103, N102}) );
  ALU_DW01_add_0 add_22 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N101, N100, N99, N98, N97, 
        N96, N95, N94, N93}) );
  ALU_DW02_mult_0 mult_24 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111}) );
endmodule


module PULSE_GEN_test_1 ( RST, CLK, LVL_SIG, PULSE_SIG, test_si, test_so, 
        test_se );
  input RST, CLK, LVL_SIG, test_si, test_se;
  output PULSE_SIG, test_so;
  wire   pulse_done, n3;
  assign test_so = pulse_done;

  SDFFRQX2M pulse_done_reg ( .D(LVL_SIG), .SI(PULSE_SIG), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(pulse_done) );
  SDFFRQX2M PULSE_SIG_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(PULSE_SIG) );
  AOI2BB1X2M U5 ( .A0N(PULSE_SIG), .A1N(LVL_SIG), .B0(pulse_done), .Y(n3) );
endmodule


module delay_one_period_test_1 ( CLK, Signal, Signal_delayed, test_si, test_se
 );
  input CLK, Signal, test_si, test_se;
  output Signal_delayed;


  SDFFQX1M Signal_delayed_reg ( .D(Signal), .SI(test_si), .SE(test_se), .CK(
        CLK), .Q(Signal_delayed) );
endmodule


module FSM_TX_test_1 ( CLK, nRESET, Data_Valid, PAR_EN, ser_done, mux_sel, 
        busy, ser_en, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input CLK, nRESET, Data_Valid, PAR_EN, ser_done, test_si, test_se;
  output busy, ser_en, test_so;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n9, n10, n11, n12, n13, n32, n35, n36;
  wire   [2:0] state;
  assign test_so = n12;

  SDFFRQX2M ser_en_reg ( .D(n26), .SI(mux_sel[1]), .SE(test_se), .CK(CLK), 
        .RN(nRESET), .Q(ser_en) );
  SDFFRQX2M busy_reg ( .D(n25), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        nRESET), .Q(busy) );
  SDFFRQX2M \mux_sel_reg[1]  ( .D(n27), .SI(mux_sel[0]), .SE(test_se), .CK(CLK), .RN(nRESET), .Q(mux_sel[1]) );
  SDFFRQX2M \state_reg[2]  ( .D(n30), .SI(state[1]), .SE(test_se), .CK(CLK), 
        .RN(nRESET), .Q(state[2]) );
  SDFFRQX2M \state_reg[0]  ( .D(n31), .SI(ser_en), .SE(test_se), .CK(CLK), 
        .RN(nRESET), .Q(state[0]) );
  SDFFRQX2M \state_reg[1]  ( .D(n29), .SI(state[0]), .SE(test_se), .CK(CLK), 
        .RN(nRESET), .Q(state[1]) );
  SDFFSQX1M \mux_sel_reg[0]  ( .D(n28), .SI(busy), .SE(test_se), .CK(CLK), 
        .SN(nRESET), .Q(mux_sel[0]) );
  INVX2M U11 ( .A(n18), .Y(n9) );
  NAND4BX1M U12 ( .AN(n30), .B(n17), .C(n10), .D(n22), .Y(n18) );
  OAI2BB1X2M U13 ( .A0N(n24), .A1N(n23), .B0(n21), .Y(n30) );
  OAI21X2M U14 ( .A0(n10), .A1(n32), .B0(n17), .Y(n15) );
  OAI21X2M U15 ( .A0(n23), .A1(n11), .B0(n17), .Y(n29) );
  OAI21X2M U16 ( .A0(n10), .A1(n32), .B0(n22), .Y(n31) );
  INVX2M U17 ( .A(n24), .Y(n11) );
  NAND2X2M U18 ( .A(n11), .B(n21), .Y(n16) );
  INVX2M U19 ( .A(n20), .Y(n10) );
  NOR3X2M U20 ( .A(state[0]), .B(state[2]), .C(n13), .Y(n24) );
  INVX2M U21 ( .A(state[1]), .Y(n13) );
  AO22X1M U22 ( .A0(n18), .A1(n29), .B0(mux_sel[1]), .B1(n9), .Y(n27) );
  NOR2X2M U23 ( .A(state[1]), .B(state[0]), .Y(n20) );
  OAI2BB2X1M U24 ( .B0(n9), .B1(n14), .A0N(busy), .A1N(n9), .Y(n25) );
  NOR2X2M U25 ( .A(n15), .B(n16), .Y(n14) );
  OAI2BB2X1M U26 ( .B0(n9), .B1(n19), .A0N(mux_sel[0]), .A1N(n9), .Y(n28) );
  AOI21X2M U27 ( .A0(n20), .A1(n32), .B0(n16), .Y(n19) );
  NAND3X2M U28 ( .A(n13), .B(n12), .C(state[0]), .Y(n17) );
  NOR2BX2M U29 ( .AN(n36), .B(PAR_EN), .Y(n23) );
  NAND3X2M U30 ( .A(state[1]), .B(n12), .C(state[0]), .Y(n21) );
  NAND3X2M U31 ( .A(PAR_EN), .B(n24), .C(n36), .Y(n22) );
  INVX2M U32 ( .A(state[2]), .Y(n12) );
  INVX2M U33 ( .A(Data_Valid), .Y(n32) );
  AO21XLM U34 ( .A0(ser_en), .A1(n9), .B0(n15), .Y(n26) );
  INVXLM U35 ( .A(ser_done), .Y(n35) );
  INVXLM U36 ( .A(n35), .Y(n36) );
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

  XNOR2X2M U1 ( .A(P_DATA_save[3]), .B(P_DATA_save[2]), .Y(n3) );
  XOR3XLM U2 ( .A(PAR_TYP), .B(n1), .C(n2), .Y(par_bit) );
  XOR3XLM U3 ( .A(P_DATA_save[5]), .B(P_DATA_save[4]), .C(n4), .Y(n1) );
  XOR3XLM U4 ( .A(P_DATA_save[1]), .B(P_DATA_save[0]), .C(n3), .Y(n2) );
  XNOR2X2M U5 ( .A(P_DATA_save[7]), .B(P_DATA_save[6]), .Y(n4) );
endmodule


module serializer_test_1 ( CLK, nRESET, ser_en, P_DATA, ser_data, ser_done, 
        P_DATA_save, test_si, test_se );
  input [7:0] P_DATA;
  output [7:0] P_DATA_save;
  input CLK, nRESET, ser_en, test_si, test_se;
  output ser_data, ser_done;
  wire   N2, N3, N4, N11, n2, n5, n6, n8, n10, n13, n20, n22, n24, n26, n28,
         n30, n32, n34, n36, n37, n38, n39, n40, n3, n4, n7, n9, n11, n12, n14,
         n41, n42, n43, n44, n47, n48;

  SDFFRQX2M \P_DATA_save_reg[5]  ( .D(n30), .SI(P_DATA_save[4]), .SE(n48), 
        .CK(CLK), .RN(nRESET), .Q(P_DATA_save[5]) );
  SDFFRQX2M \P_DATA_save_reg[1]  ( .D(n22), .SI(P_DATA_save[0]), .SE(n48), 
        .CK(CLK), .RN(nRESET), .Q(P_DATA_save[1]) );
  SDFFRQX2M \P_DATA_save_reg[4]  ( .D(n28), .SI(P_DATA_save[3]), .SE(n48), 
        .CK(CLK), .RN(nRESET), .Q(P_DATA_save[4]) );
  SDFFRQX2M \P_DATA_save_reg[0]  ( .D(n20), .SI(test_si), .SE(n48), .CK(CLK), 
        .RN(nRESET), .Q(P_DATA_save[0]) );
  SDFFRQX2M \P_DATA_save_reg[3]  ( .D(n26), .SI(P_DATA_save[2]), .SE(n48), 
        .CK(CLK), .RN(nRESET), .Q(P_DATA_save[3]) );
  SDFFRQX2M \P_DATA_save_reg[6]  ( .D(n32), .SI(P_DATA_save[5]), .SE(n48), 
        .CK(CLK), .RN(nRESET), .Q(P_DATA_save[6]) );
  SDFFRQX2M \P_DATA_save_reg[2]  ( .D(n24), .SI(P_DATA_save[1]), .SE(n48), 
        .CK(CLK), .RN(nRESET), .Q(P_DATA_save[2]) );
  SDFFRQX2M ser_data_reg ( .D(n36), .SI(N4), .SE(n48), .CK(CLK), .RN(nRESET), 
        .Q(ser_data) );
  SDFFRQX2M \P_DATA_save_reg[7]  ( .D(n34), .SI(P_DATA_save[6]), .SE(n48), 
        .CK(CLK), .RN(nRESET), .Q(P_DATA_save[7]) );
  SDFFRQX2M \count_reg[2]  ( .D(n39), .SI(N3), .SE(n48), .CK(CLK), .RN(nRESET), 
        .Q(N4) );
  SDFFRQX2M \count_reg[1]  ( .D(n37), .SI(N2), .SE(n48), .CK(CLK), .RN(nRESET), 
        .Q(N3) );
  SDFFRQX2M \count_reg[0]  ( .D(n40), .SI(n41), .SE(n48), .CK(CLK), .RN(nRESET), .Q(N2) );
  SDFFRX1M ser_done_reg ( .D(n38), .SI(ser_data), .SE(n48), .CK(CLK), .RN(
        nRESET), .Q(ser_done), .QN(n42) );
  NOR2X2M U4 ( .A(n9), .B(n13), .Y(n6) );
  INVX2M U5 ( .A(n13), .Y(n11) );
  NOR3X2M U6 ( .A(n44), .B(n12), .C(n43), .Y(n13) );
  OAI32X1M U7 ( .A0(n8), .A1(n12), .A2(n44), .B0(n13), .B1(n43), .Y(n39) );
  OAI21X2M U8 ( .A0(n3), .A1(n42), .B0(n11), .Y(n38) );
  INVX2M U9 ( .A(n3), .Y(n14) );
  INVX2M U10 ( .A(n8), .Y(n9) );
  OAI32X1M U11 ( .A0(n8), .A1(N3), .A2(n12), .B0(n10), .B1(n44), .Y(n37) );
  NOR2X2M U12 ( .A(n6), .B(n12), .Y(n10) );
  NAND3X2M U13 ( .A(n11), .B(n42), .C(ser_en), .Y(n8) );
  OAI2BB2X1M U14 ( .B0(n3), .B1(n41), .A0N(P_DATA[7]), .A1N(n3), .Y(n34) );
  OAI2BB2X1M U15 ( .B0(N2), .B1(n8), .A0N(N2), .A1N(n6), .Y(n40) );
  OAI21X2M U16 ( .A0(n41), .A1(n11), .B0(n5), .Y(n36) );
  AOI22X1M U17 ( .A0(ser_data), .A1(n6), .B0(N11), .B1(n9), .Y(n5) );
  MX2X2M U18 ( .A(n7), .B(n4), .S0(N4), .Y(N11) );
  MX4X1M U19 ( .A(P_DATA_save[0]), .B(P_DATA_save[1]), .C(P_DATA_save[2]), .D(
        P_DATA_save[3]), .S0(N2), .S1(N3), .Y(n7) );
  INVX2M U20 ( .A(N2), .Y(n12) );
  MX4X1M U21 ( .A(P_DATA_save[4]), .B(P_DATA_save[5]), .C(P_DATA_save[6]), .D(
        P_DATA_save[7]), .S0(N2), .S1(N3), .Y(n4) );
  BUFX2M U22 ( .A(n2), .Y(n3) );
  NOR3X2M U23 ( .A(N3), .B(N4), .C(N2), .Y(n2) );
  INVX2M U24 ( .A(N3), .Y(n44) );
  INVX2M U25 ( .A(N4), .Y(n43) );
  INVX2M U26 ( .A(P_DATA_save[7]), .Y(n41) );
  AO22X1M U27 ( .A0(P_DATA_save[0]), .A1(n14), .B0(P_DATA[0]), .B1(n3), .Y(n20) );
  AO22X1M U28 ( .A0(P_DATA_save[1]), .A1(n14), .B0(P_DATA[1]), .B1(n3), .Y(n22) );
  AO22X1M U29 ( .A0(P_DATA_save[2]), .A1(n14), .B0(P_DATA[2]), .B1(n3), .Y(n24) );
  AO22X1M U43 ( .A0(P_DATA_save[3]), .A1(n14), .B0(P_DATA[3]), .B1(n3), .Y(n26) );
  AO22X1M U44 ( .A0(P_DATA_save[4]), .A1(n14), .B0(P_DATA[4]), .B1(n3), .Y(n28) );
  AO22X1M U45 ( .A0(P_DATA_save[5]), .A1(n14), .B0(P_DATA[5]), .B1(n3), .Y(n30) );
  AO22X1M U46 ( .A0(P_DATA_save[6]), .A1(n14), .B0(P_DATA[6]), .B1(n3), .Y(n32) );
  INVXLM U47 ( .A(test_se), .Y(n47) );
  INVXLM U48 ( .A(n47), .Y(n48) );
endmodule


module UART_TX_TOP_test_1 ( CLK, nRESET, P_DATA, Data_Valid, PAR_EN, PAR_TYP, 
        TX_OUT, busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, nRESET, Data_Valid, PAR_EN, PAR_TYP, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2, n3, n7;
  wire   [1:0] mux_sel;
  wire   [7:0] P_DATA_save;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(nRESET), .Y(n2) );
  DLY1X1M U4 ( .A(ser_done), .Y(n7) );
  FSM_TX_test_1 linkFSM ( .CLK(CLK), .nRESET(n1), .Data_Valid(Data_Valid), 
        .PAR_EN(PAR_EN), .ser_done(n7), .mux_sel(mux_sel), .busy(busy), 
        .ser_en(ser_en), .test_si(test_si), .test_so(n3), .test_se(test_se) );
  mux linkmux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  parity_calc linkparity_calc ( .PAR_TYP(PAR_TYP), .P_DATA_save(P_DATA_save), 
        .par_bit(par_bit) );
  serializer_test_1 linkserializer ( .CLK(CLK), .nRESET(n1), .ser_en(ser_en), 
        .P_DATA(P_DATA), .ser_data(ser_data), .ser_done(ser_done), 
        .P_DATA_save(P_DATA_save), .test_si(n3), .test_se(test_se) );
  BUFX2M U3 ( .A(ser_done), .Y(test_so) );
endmodule


module FSM_RX_test_1 ( CLK, nRESET, RX_IN, PAR_EN, par_err, strt_glitch, 
        stp_err, bit_cnt, edge_cnt, Prescale, dat_samp_en, enable, deser_en, 
        data_valid, stp_chk_en, strt_chk_en, par_chk_en, test_si, test_se );
  input [3:0] bit_cnt;
  input [4:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, nRESET, RX_IN, PAR_EN, par_err, strt_glitch, stp_err, test_si,
         test_se;
  output dat_samp_en, enable, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en;
  wire   N30, N31, N32, N33, N34, N35, N36, N38, N39, N40, N41, N42, N43, N44,
         N45, N96, N97, N98, N99, N100, N101, N102, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, \add_119/carry[4] , \add_119/carry[3] ,
         \r99/carry[4] , \r99/carry[3] , \r99/carry[2] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n84, n85, n86, n87, n88, n89, n92, n93;
  wire   [2:0] state;
  assign N96 = Prescale[1];

  SDFFRQX2M data_valid_reg ( .D(n39), .SI(dat_samp_en), .SE(n93), .CK(CLK), 
        .RN(nRESET), .Q(data_valid) );
  SDFFRQX2M stp_chk_en_reg ( .D(n76), .SI(n88), .SE(n93), .CK(CLK), .RN(nRESET), .Q(stp_chk_en) );
  SDFFRQX2M strt_chk_en_reg ( .D(n77), .SI(stp_chk_en), .SE(n93), .CK(CLK), 
        .RN(nRESET), .Q(strt_chk_en) );
  SDFFRQX2M par_chk_en_reg ( .D(n75), .SI(enable), .SE(n93), .CK(CLK), .RN(
        nRESET), .Q(par_chk_en) );
  SDFFRQX2M deser_en_reg ( .D(n78), .SI(data_valid), .SE(n93), .CK(CLK), .RN(
        nRESET), .Q(deser_en) );
  SDFFRQX2M enable_reg ( .D(n80), .SI(deser_en), .SE(n93), .CK(CLK), .RN(
        nRESET), .Q(enable) );
  SDFFRQX2M dat_samp_en_reg ( .D(n79), .SI(test_si), .SE(n93), .CK(CLK), .RN(
        nRESET), .Q(dat_samp_en) );
  SDFFRQX2M \state_reg[1]  ( .D(n81), .SI(n85), .SE(n93), .CK(CLK), .RN(nRESET), .Q(state[1]) );
  SDFFRQX2M \state_reg[2]  ( .D(n82), .SI(n87), .SE(n93), .CK(CLK), .RN(nRESET), .Q(state[2]) );
  SDFFRQX2M \state_reg[0]  ( .D(n83), .SI(par_chk_en), .SE(n93), .CK(CLK), 
        .RN(nRESET), .Q(state[0]) );
  NOR3X2M U5 ( .A(state[0]), .B(state[2]), .C(n87), .Y(n55) );
  NOR2X2M U6 ( .A(n61), .B(n41), .Y(n59) );
  INVX2M U7 ( .A(n66), .Y(n42) );
  INVX2M U8 ( .A(n60), .Y(n84) );
  NAND4BX1M U9 ( .AN(n71), .B(n62), .C(n73), .D(n61), .Y(n67) );
  OAI21X2M U10 ( .A0(n56), .A1(n48), .B0(n42), .Y(n73) );
  NAND2X2M U19 ( .A(N45), .B(n44), .Y(n61) );
  NOR3BX2M U20 ( .AN(N45), .B(n46), .C(par_err), .Y(n71) );
  NAND2X2M U21 ( .A(N45), .B(n49), .Y(n66) );
  NAND3BXLM U22 ( .AN(strt_glitch), .B(n86), .C(N45), .Y(n69) );
  OAI21X2M U23 ( .A0(n72), .A1(n84), .B0(n89), .Y(n63) );
  NOR2X2M U24 ( .A(stp_err), .B(n61), .Y(n72) );
  OAI211X2M U25 ( .A0(n87), .A1(n67), .B0(n68), .C0(n69), .Y(n81) );
  OAI211X2M U26 ( .A0(n85), .A1(n67), .B0(n68), .C0(n63), .Y(n83) );
  INVX2M U27 ( .A(n64), .Y(n40) );
  OAI211X2M U28 ( .A0(n65), .A1(n66), .B0(n61), .C0(n60), .Y(n64) );
  AOI22X1M U29 ( .A0(strt_glitch), .A1(n56), .B0(par_err), .B1(n48), .Y(n65)
         );
  NAND3X2M U30 ( .A(n87), .B(n88), .C(n85), .Y(n60) );
  INVX2M U31 ( .A(n53), .Y(n86) );
  INVX2M U32 ( .A(stp_err), .Y(n41) );
  INVX2M U33 ( .A(n51), .Y(n44) );
  INVX2M U34 ( .A(RX_IN), .Y(n89) );
  OAI2B2X1M U35 ( .A1N(n67), .A0(n70), .B0(n88), .B1(n67), .Y(n82) );
  AOI2B1X1M U36 ( .A1N(PAR_EN), .A0(n55), .B0(n71), .Y(n70) );
  NAND3X2M U37 ( .A(n55), .B(n67), .C(PAR_EN), .Y(n68) );
  OAI2BB2X1M U38 ( .B0(n62), .B1(n53), .A0N(deser_en), .A1N(n62), .Y(n78) );
  OR2X2M U39 ( .A(N96), .B(Prescale[0]), .Y(n1) );
  AND3X2M U40 ( .A(n69), .B(n60), .C(n74), .Y(n62) );
  NAND4X2M U41 ( .A(n42), .B(n55), .C(bit_cnt[3]), .D(n43), .Y(n74) );
  INVX2M U42 ( .A(n57), .Y(n39) );
  AOI32X1M U43 ( .A0(n44), .A1(n41), .A2(N102), .B0(data_valid), .B1(n58), .Y(
        n57) );
  OAI32X1M U44 ( .A0(n59), .A1(n84), .A2(n86), .B0(n60), .B1(n89), .Y(n58) );
  OAI2BB1X2M U45 ( .A0N(enable), .A1N(n40), .B0(n63), .Y(n80) );
  OAI2BB1X2M U46 ( .A0N(dat_samp_en), .A1N(n40), .B0(n63), .Y(n79) );
  OAI2BB2X1M U47 ( .B0(n50), .B1(n51), .A0N(stp_chk_en), .A1N(n50), .Y(n76) );
  AOI211X2M U48 ( .A0(N36), .A1(n44), .B0(n86), .C0(n84), .Y(n50) );
  ADDHX1M U49 ( .A(Prescale[5]), .B(\r99/carry[4] ), .CO(N35), .S(N34) );
  OAI2BB2X1M U50 ( .B0(n45), .B1(n46), .A0N(par_chk_en), .A1N(n45), .Y(n75) );
  NOR3BX2M U51 ( .AN(n47), .B(n44), .C(n84), .Y(n45) );
  NAND3X2M U52 ( .A(n48), .B(n49), .C(N36), .Y(n47) );
  OAI2BB2X1M U53 ( .B0(n52), .B1(n53), .A0N(strt_chk_en), .A1N(n52), .Y(n77)
         );
  NOR3BX2M U54 ( .AN(n54), .B(n55), .C(n84), .Y(n52) );
  NAND3X2M U55 ( .A(N36), .B(n49), .C(n56), .Y(n54) );
  ADDHX1M U56 ( .A(Prescale[2]), .B(N96), .CO(\r99/carry[2] ), .S(N31) );
  ADDHX1M U57 ( .A(Prescale[4]), .B(\r99/carry[3] ), .CO(\r99/carry[4] ), .S(
        N33) );
  ADDHX1M U58 ( .A(Prescale[3]), .B(\r99/carry[2] ), .CO(\r99/carry[3] ), .S(
        N32) );
  NOR3BX2M U59 ( .AN(bit_cnt[3]), .B(n43), .C(n46), .Y(n48) );
  NOR3X2M U60 ( .A(bit_cnt[0]), .B(bit_cnt[3]), .C(n53), .Y(n56) );
  NOR2X2M U61 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n49) );
  NAND3X2M U62 ( .A(n87), .B(n88), .C(state[0]), .Y(n53) );
  INVX2M U63 ( .A(bit_cnt[0]), .Y(n43) );
  INVX2M U64 ( .A(state[1]), .Y(n87) );
  NAND3X2M U65 ( .A(state[0]), .B(n88), .C(state[1]), .Y(n46) );
  INVX2M U66 ( .A(state[2]), .Y(n88) );
  INVX2M U67 ( .A(state[0]), .Y(n85) );
  NAND3X2M U68 ( .A(n85), .B(n87), .C(state[2]), .Y(n51) );
  INVX2M U69 ( .A(Prescale[2]), .Y(N97) );
  AND2X1M U70 ( .A(\add_119/carry[4] ), .B(Prescale[5]), .Y(N101) );
  CLKXOR2X2M U71 ( .A(Prescale[5]), .B(\add_119/carry[4] ), .Y(N100) );
  AND2X1M U72 ( .A(\add_119/carry[3] ), .B(Prescale[4]), .Y(\add_119/carry[4] ) );
  CLKXOR2X2M U73 ( .A(Prescale[4]), .B(\add_119/carry[3] ), .Y(N99) );
  AND2X1M U74 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\add_119/carry[3] ) );
  CLKXOR2X2M U75 ( .A(Prescale[3]), .B(Prescale[2]), .Y(N98) );
  CLKINVX1M U76 ( .A(N96), .Y(N30) );
  CLKINVX1M U77 ( .A(Prescale[0]), .Y(N38) );
  OAI2BB1X1M U78 ( .A0N(Prescale[0]), .A1N(N96), .B0(n1), .Y(N39) );
  OR2X1M U79 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U80 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N40) );
  OR2X1M U81 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U82 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N41) );
  OR2X1M U83 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U84 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N42) );
  NOR2X1M U85 ( .A(n4), .B(Prescale[5]), .Y(N44) );
  AO21XLM U86 ( .A0(n4), .A1(Prescale[5]), .B0(N44), .Y(N43) );
  NOR2BX1M U87 ( .AN(N30), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U88 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N31), .B1(n5), .Y(n8) );
  NOR2BX1M U89 ( .AN(edge_cnt[0]), .B(N30), .Y(n6) );
  OAI2B2X1M U90 ( .A1N(N31), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND3BX1M U91 ( .AN(N35), .B(n8), .C(n7), .Y(n12) );
  CLKXOR2X2M U92 ( .A(N34), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U93 ( .A(N32), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U94 ( .A(N33), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U95 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N36) );
  NOR2BX1M U96 ( .AN(edge_cnt[0]), .B(N38), .Y(n13) );
  OAI2B2X1M U97 ( .A1N(N39), .A0(n13), .B0(edge_cnt[1]), .B1(n13), .Y(n16) );
  NOR2BX1M U98 ( .AN(N38), .B(edge_cnt[0]), .Y(n14) );
  OAI2B2X1M U99 ( .A1N(edge_cnt[1]), .A0(n14), .B0(N39), .B1(n14), .Y(n15) );
  NAND4BBX1M U100 ( .AN(N44), .BN(N43), .C(n16), .D(n15), .Y(n20) );
  CLKXOR2X2M U101 ( .A(N42), .B(edge_cnt[4]), .Y(n19) );
  CLKXOR2X2M U102 ( .A(N40), .B(edge_cnt[2]), .Y(n18) );
  CLKXOR2X2M U103 ( .A(N41), .B(edge_cnt[3]), .Y(n17) );
  NOR4X1M U104 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(N45) );
  NOR2BX1M U105 ( .AN(N96), .B(edge_cnt[0]), .Y(n21) );
  OAI2B2X1M U106 ( .A1N(edge_cnt[1]), .A0(n21), .B0(N97), .B1(n21), .Y(n34) );
  NOR2BX1M U107 ( .AN(edge_cnt[0]), .B(N96), .Y(n22) );
  OAI2B2X1M U108 ( .A1N(N97), .A0(n22), .B0(edge_cnt[1]), .B1(n22), .Y(n33) );
  NAND3BX1M U109 ( .AN(N101), .B(n34), .C(n33), .Y(n38) );
  CLKXOR2X2M U110 ( .A(N100), .B(edge_cnt[4]), .Y(n37) );
  CLKXOR2X2M U111 ( .A(N98), .B(edge_cnt[2]), .Y(n36) );
  CLKXOR2X2M U112 ( .A(N99), .B(edge_cnt[3]), .Y(n35) );
  NOR4X1M U113 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N102) );
  INVXLM U114 ( .A(test_se), .Y(n92) );
  INVXLM U115 ( .A(n92), .Y(n93) );
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


module edge_bit_counter_test_1 ( enable, CLK, nRESET, PAR_EN, Prescale, 
        bit_cnt, edge_cnt, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input enable, CLK, nRESET, PAR_EN, test_si, test_se;
  wire   N10, N11, N12, N14, N15, N16, N17, N18, N19, N20, N21, N38, N69, N70,
         N71, N72, N73, n18, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, \add_22/carry[4] ,
         \add_22/carry[3] , \add_22/carry[2] , n2, n3, n4, n5, n6, n7, n17,
         n19, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51;

  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n33), .SI(bit_cnt[1]), .SE(test_se), .CK(CLK), .RN(nRESET), .Q(bit_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N73), .SI(edge_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(nRESET), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N69), .SI(bit_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(nRESET), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N71), .SI(edge_cnt[1]), .SE(test_se), .CK(
        CLK), .RN(nRESET), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N72), .SI(edge_cnt[2]), .SE(test_se), .CK(
        CLK), .RN(nRESET), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N70), .SI(edge_cnt[0]), .SE(test_se), .CK(
        CLK), .RN(nRESET), .Q(edge_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n34), .SI(bit_cnt[0]), .SE(test_se), .CK(CLK), .RN(nRESET), .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n35), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(nRESET), .Q(bit_cnt[0]) );
  SDFFRX1M \bit_cnt_reg[3]  ( .D(n36), .SI(bit_cnt[2]), .SE(test_se), .CK(CLK), 
        .RN(nRESET), .Q(bit_cnt[3]), .QN(n18) );
  NAND2X2M U8 ( .A(n50), .B(n25), .Y(n24) );
  NAND2BX2M U9 ( .AN(N21), .B(n50), .Y(n25) );
  INVX2M U15 ( .A(n29), .Y(n50) );
  NOR2BX2M U16 ( .AN(N12), .B(n25), .Y(N72) );
  NOR2BX2M U17 ( .AN(N11), .B(n25), .Y(N71) );
  NOR2BX2M U18 ( .AN(N10), .B(n25), .Y(N70) );
  OAI32X1M U19 ( .A0(n26), .A1(n24), .A2(n27), .B0(n28), .B1(n18), .Y(n36) );
  NAND2X2M U20 ( .A(bit_cnt[0]), .B(n18), .Y(n26) );
  AOI21X2M U21 ( .A0(n50), .A1(n27), .B0(n22), .Y(n28) );
  NAND2X2M U22 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n27) );
  OAI21X2M U23 ( .A0(bit_cnt[0]), .A1(n29), .B0(n25), .Y(n22) );
  NAND3X2M U24 ( .A(n30), .B(n31), .C(enable), .Y(n29) );
  NAND4X2M U25 ( .A(PAR_EN), .B(n32), .C(bit_cnt[1]), .D(n51), .Y(n30) );
  NAND3BX2M U26 ( .AN(PAR_EN), .B(n23), .C(n32), .Y(n31) );
  NOR3BX2M U27 ( .AN(N38), .B(bit_cnt[2]), .C(n18), .Y(n32) );
  OR2X2M U28 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n3) );
  AO2B2X2M U29 ( .B0(n22), .B1(bit_cnt[1]), .A0(n23), .A1N(n24), .Y(n34) );
  OAI22X1M U30 ( .A0(n51), .A1(n25), .B0(bit_cnt[0]), .B1(n24), .Y(n35) );
  NOR2BX2M U31 ( .AN(enable), .B(n20), .Y(n33) );
  CLKXOR2X2M U32 ( .A(n21), .B(bit_cnt[2]), .Y(n20) );
  NAND3X2M U33 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(N21), .Y(n21) );
  NOR2X2M U34 ( .A(n2), .B(n25), .Y(N73) );
  XNOR2X2M U35 ( .A(\add_22/carry[4] ), .B(edge_cnt[4]), .Y(n2) );
  NOR2X2M U36 ( .A(edge_cnt[0]), .B(n25), .Y(N69) );
  INVX2M U37 ( .A(bit_cnt[0]), .Y(n51) );
  NOR2X2M U38 ( .A(n51), .B(bit_cnt[1]), .Y(n23) );
  ADDHX1M U39 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_22/carry[2] ), .S(
        N10) );
  ADDHX1M U40 ( .A(edge_cnt[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N11) );
  ADDHX1M U41 ( .A(edge_cnt[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), 
        .S(N12) );
  CLKINVX1M U42 ( .A(Prescale[0]), .Y(N14) );
  OAI2BB1X1M U43 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n3), .Y(N15) );
  OR2X1M U44 ( .A(n3), .B(Prescale[2]), .Y(n4) );
  OAI2BB1X1M U45 ( .A0N(n3), .A1N(Prescale[2]), .B0(n4), .Y(N16) );
  OR2X1M U46 ( .A(n4), .B(Prescale[3]), .Y(n5) );
  OAI2BB1X1M U47 ( .A0N(n4), .A1N(Prescale[3]), .B0(n5), .Y(N17) );
  OR2X1M U48 ( .A(n5), .B(Prescale[4]), .Y(n6) );
  OAI2BB1X1M U49 ( .A0N(n5), .A1N(Prescale[4]), .B0(n6), .Y(N18) );
  NOR2X1M U50 ( .A(n6), .B(Prescale[5]), .Y(N20) );
  AO21XLM U51 ( .A0(n6), .A1(Prescale[5]), .B0(N20), .Y(N19) );
  NOR2BX1M U52 ( .AN(N14), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U53 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N15), .B1(n7), .Y(n37) );
  NOR2BX1M U54 ( .AN(edge_cnt[0]), .B(N14), .Y(n17) );
  OAI2B2X1M U55 ( .A1N(N15), .A0(n17), .B0(edge_cnt[1]), .B1(n17), .Y(n19) );
  NAND3BX1M U56 ( .AN(N19), .B(n37), .C(n19), .Y(n41) );
  CLKXOR2X2M U57 ( .A(N18), .B(edge_cnt[4]), .Y(n40) );
  CLKXOR2X2M U58 ( .A(N16), .B(edge_cnt[2]), .Y(n39) );
  CLKXOR2X2M U59 ( .A(N17), .B(edge_cnt[3]), .Y(n38) );
  NOR4X1M U60 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(N38) );
  NOR2BX1M U61 ( .AN(edge_cnt[0]), .B(N14), .Y(n42) );
  OAI2B2X1M U62 ( .A1N(N15), .A0(n42), .B0(edge_cnt[1]), .B1(n42), .Y(n45) );
  NOR2BX1M U63 ( .AN(N14), .B(edge_cnt[0]), .Y(n43) );
  OAI2B2X1M U64 ( .A1N(edge_cnt[1]), .A0(n43), .B0(N15), .B1(n43), .Y(n44) );
  NAND4BBX1M U65 ( .AN(N20), .BN(N19), .C(n45), .D(n44), .Y(n49) );
  CLKXOR2X2M U66 ( .A(N18), .B(edge_cnt[4]), .Y(n48) );
  CLKXOR2X2M U67 ( .A(N16), .B(edge_cnt[2]), .Y(n47) );
  CLKXOR2X2M U68 ( .A(N17), .B(edge_cnt[3]), .Y(n46) );
  NOR4X1M U69 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(N21) );
endmodule


module deserializer_test_1 ( CLK, deser_en, sampled_bit, bit_cnt, Prescale, 
        edge_cnt, P_DATA, test_si, test_se );
  input [3:0] bit_cnt;
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  output [7:0] P_DATA;
  input CLK, deser_en, sampled_bit, test_si, test_se;
  wire   N9, N10, N11, N12, N13, N14, N15, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         \add_12/carry[4] , \add_12/carry[3] , n1, n2, n3, n4, n13, n14, n15,
         n16, n38, n39, n40, n41;
  assign N9 = Prescale[1];

  SDFFQX2M \P_DATA_reg[5]  ( .D(n35), .SI(P_DATA[4]), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[5]) );
  SDFFQX2M \P_DATA_reg[1]  ( .D(n31), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[1]) );
  SDFFQX2M \P_DATA_reg[4]  ( .D(n34), .SI(P_DATA[3]), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[4]) );
  SDFFQX2M \P_DATA_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[0]) );
  SDFFQX2M \P_DATA_reg[7]  ( .D(n37), .SI(P_DATA[6]), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[7]) );
  SDFFQX2M \P_DATA_reg[3]  ( .D(n33), .SI(P_DATA[2]), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[3]) );
  SDFFQX2M \P_DATA_reg[6]  ( .D(n36), .SI(P_DATA[5]), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[6]) );
  SDFFQX2M \P_DATA_reg[2]  ( .D(n32), .SI(P_DATA[1]), .SE(test_se), .CK(CLK), 
        .Q(P_DATA[2]) );
  NOR2BX2M U4 ( .AN(n27), .B(bit_cnt[3]), .Y(n18) );
  AND3X2M U5 ( .A(n18), .B(n41), .C(bit_cnt[1]), .Y(n20) );
  OAI2BB2X1M U13 ( .B0(n38), .B1(n19), .A0N(P_DATA[1]), .A1N(n19), .Y(n31) );
  NAND2X2M U14 ( .A(n20), .B(n39), .Y(n19) );
  OAI2BB2X1M U15 ( .B0(n38), .B1(n22), .A0N(P_DATA[3]), .A1N(n22), .Y(n33) );
  NAND3X2M U16 ( .A(n39), .B(n40), .C(n23), .Y(n22) );
  OAI2BB2X1M U17 ( .B0(n38), .B1(n24), .A0N(P_DATA[4]), .A1N(n24), .Y(n34) );
  NAND3X2M U18 ( .A(bit_cnt[0]), .B(n40), .C(n23), .Y(n24) );
  OAI2BB2X1M U19 ( .B0(n38), .B1(n21), .A0N(P_DATA[2]), .A1N(n21), .Y(n32) );
  NAND2X2M U20 ( .A(n20), .B(bit_cnt[0]), .Y(n21) );
  OAI2BB2X1M U21 ( .B0(n38), .B1(n25), .A0N(P_DATA[5]), .A1N(n25), .Y(n35) );
  NAND3X2M U22 ( .A(bit_cnt[1]), .B(n39), .C(n23), .Y(n25) );
  OAI2BB2X1M U23 ( .B0(n38), .B1(n26), .A0N(P_DATA[6]), .A1N(n26), .Y(n36) );
  NAND3X2M U24 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n23), .Y(n26) );
  AND2X2M U25 ( .A(n18), .B(bit_cnt[2]), .Y(n23) );
  AND2X2M U26 ( .A(deser_en), .B(N15), .Y(n27) );
  OAI2BB2X1M U27 ( .B0(n38), .B1(n28), .A0N(P_DATA[7]), .A1N(n28), .Y(n37) );
  NAND4X2M U28 ( .A(bit_cnt[3]), .B(n27), .C(n29), .D(n39), .Y(n28) );
  NOR2X2M U29 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n29) );
  OAI2BB2X1M U30 ( .B0(n17), .B1(n38), .A0N(P_DATA[0]), .A1N(n17), .Y(n30) );
  NAND4X2M U31 ( .A(bit_cnt[0]), .B(n18), .C(n40), .D(n41), .Y(n17) );
  INVX2M U32 ( .A(Prescale[2]), .Y(N10) );
  INVX2M U33 ( .A(bit_cnt[0]), .Y(n39) );
  INVX2M U34 ( .A(bit_cnt[1]), .Y(n40) );
  INVX2M U35 ( .A(sampled_bit), .Y(n38) );
  INVX2M U36 ( .A(bit_cnt[2]), .Y(n41) );
  AND2X1M U37 ( .A(\add_12/carry[4] ), .B(Prescale[5]), .Y(N14) );
  CLKXOR2X2M U38 ( .A(Prescale[5]), .B(\add_12/carry[4] ), .Y(N13) );
  AND2X1M U39 ( .A(\add_12/carry[3] ), .B(Prescale[4]), .Y(\add_12/carry[4] )
         );
  CLKXOR2X2M U40 ( .A(Prescale[4]), .B(\add_12/carry[3] ), .Y(N12) );
  AND2X1M U41 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\add_12/carry[3] ) );
  CLKXOR2X2M U42 ( .A(Prescale[3]), .B(Prescale[2]), .Y(N11) );
  NOR2BX1M U43 ( .AN(N9), .B(edge_cnt[0]), .Y(n1) );
  OAI2B2X1M U44 ( .A1N(edge_cnt[1]), .A0(n1), .B0(N10), .B1(n1), .Y(n4) );
  NOR2BX1M U45 ( .AN(edge_cnt[0]), .B(N9), .Y(n2) );
  OAI2B2X1M U46 ( .A1N(N10), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n3) );
  NAND3BX1M U47 ( .AN(N14), .B(n4), .C(n3), .Y(n16) );
  CLKXOR2X2M U48 ( .A(N13), .B(edge_cnt[4]), .Y(n15) );
  CLKXOR2X2M U49 ( .A(N11), .B(edge_cnt[2]), .Y(n14) );
  CLKXOR2X2M U50 ( .A(N12), .B(edge_cnt[3]), .Y(n13) );
  NOR4X1M U51 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(N15) );
endmodule


module data_sampling_test_1 ( CLK, RX_IN, dat_samp_en, edge_cnt, Prescale, 
        sampled_bit, test_si, test_so, test_se );
  input [4:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RX_IN, dat_samp_en, test_si, test_se;
  output sampled_bit, test_so;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, \r91/carry[4] ,
         \r91/carry[3] , \r91/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n30, n40;
  wire   [2:0] saving;
  assign test_so = saving[1];

  SDFFQX2M \saving_reg[1]  ( .D(n39), .SI(saving[0]), .SE(test_se), .CK(CLK), 
        .Q(saving[1]) );
  SDFFQX2M \saving_reg[0]  ( .D(n38), .SI(sampled_bit), .SE(test_se), .CK(CLK), 
        .Q(saving[0]) );
  SDFFQX2M sampled_bit_reg ( .D(n37), .SI(test_si), .SE(test_se), .CK(CLK), 
        .Q(sampled_bit) );
  INVX2M U6 ( .A(RX_IN), .Y(n40) );
  NOR4BBX1M U7 ( .AN(saving[1]), .BN(saving[0]), .C(N9), .D(N10), .Y(n34) );
  OAI2BB2X1M U8 ( .B0(n31), .B1(n32), .A0N(sampled_bit), .A1N(n32), .Y(n37) );
  NAND2X2M U9 ( .A(dat_samp_en), .B(N17), .Y(n32) );
  AOI21X2M U10 ( .A0(RX_IN), .A1(n33), .B0(n34), .Y(n31) );
  OAI2BB2X1M U11 ( .B0(n40), .B1(n36), .A0N(n36), .A1N(saving[1]), .Y(n39) );
  NAND2X2M U12 ( .A(N10), .B(dat_samp_en), .Y(n36) );
  OAI2BB2X1M U13 ( .B0(n40), .B1(n35), .A0N(n35), .A1N(saving[0]), .Y(n38) );
  NAND2X2M U14 ( .A(N9), .B(dat_samp_en), .Y(n35) );
  OR2X2M U15 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  OR4X1M U16 ( .A(N10), .B(N9), .C(saving[0]), .D(saving[1]), .Y(n33) );
  ADDHX1M U17 ( .A(Prescale[5]), .B(\r91/carry[4] ), .CO(N16), .S(N15) );
  ADDHX1M U18 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\r91/carry[2] ), .S(N12)
         );
  ADDHX1M U19 ( .A(Prescale[4]), .B(\r91/carry[3] ), .CO(\r91/carry[4] ), .S(
        N14) );
  ADDHX1M U20 ( .A(Prescale[3]), .B(\r91/carry[2] ), .CO(\r91/carry[3] ), .S(
        N13) );
  CLKINVX1M U21 ( .A(Prescale[1]), .Y(N11) );
  OAI2BB1X1M U22 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n1), .Y(N4) );
  OR2X1M U23 ( .A(n1), .B(Prescale[3]), .Y(n2) );
  OAI2BB1X1M U24 ( .A0N(n1), .A1N(Prescale[3]), .B0(n2), .Y(N5) );
  XNOR2X1M U25 ( .A(Prescale[4]), .B(n2), .Y(N6) );
  NOR3X1M U26 ( .A(Prescale[4]), .B(Prescale[5]), .C(n2), .Y(N8) );
  OAI21X1M U27 ( .A0(Prescale[4]), .A1(n2), .B0(Prescale[5]), .Y(n3) );
  NAND2BX1M U28 ( .AN(N8), .B(n3), .Y(N7) );
  NOR2BX1M U29 ( .AN(N11), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U30 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N12), .B1(n4), .Y(n7) );
  NOR2BX1M U31 ( .AN(edge_cnt[0]), .B(N11), .Y(n5) );
  OAI2B2X1M U32 ( .A1N(N12), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n6) );
  NAND3BX1M U33 ( .AN(N16), .B(n7), .C(n6), .Y(n11) );
  CLKXOR2X2M U34 ( .A(N15), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U35 ( .A(N13), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U36 ( .A(N14), .B(edge_cnt[3]), .Y(n8) );
  NOR4X1M U37 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N17) );
  NOR2BX1M U38 ( .AN(N11), .B(edge_cnt[0]), .Y(n12) );
  OAI2B2X1M U39 ( .A1N(edge_cnt[1]), .A0(n12), .B0(N4), .B1(n12), .Y(n15) );
  NOR2BX1M U40 ( .AN(edge_cnt[0]), .B(N11), .Y(n13) );
  OAI2B2X1M U41 ( .A1N(N4), .A0(n13), .B0(edge_cnt[1]), .B1(n13), .Y(n14) );
  NAND3BX1M U42 ( .AN(N8), .B(n15), .C(n14), .Y(n19) );
  CLKXOR2X2M U43 ( .A(N7), .B(edge_cnt[4]), .Y(n18) );
  CLKXOR2X2M U44 ( .A(N5), .B(edge_cnt[2]), .Y(n17) );
  CLKXOR2X2M U45 ( .A(N6), .B(edge_cnt[3]), .Y(n16) );
  NOR4X1M U46 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(N9) );
  CLKXOR2X2M U47 ( .A(Prescale[3]), .B(edge_cnt[2]), .Y(n30) );
  NOR2BX1M U48 ( .AN(Prescale[1]), .B(edge_cnt[0]), .Y(n20) );
  OAI2B2X1M U49 ( .A1N(edge_cnt[1]), .A0(n20), .B0(Prescale[2]), .B1(n20), .Y(
        n23) );
  NOR2BX1M U50 ( .AN(edge_cnt[0]), .B(Prescale[1]), .Y(n21) );
  OAI2B2X1M U51 ( .A1N(Prescale[2]), .A0(n21), .B0(edge_cnt[1]), .B1(n21), .Y(
        n22) );
  CLKNAND2X2M U52 ( .A(n23), .B(n22), .Y(n26) );
  CLKXOR2X2M U53 ( .A(Prescale[4]), .B(edge_cnt[3]), .Y(n25) );
  CLKXOR2X2M U54 ( .A(Prescale[5]), .B(edge_cnt[4]), .Y(n24) );
  NOR4X1M U55 ( .A(n30), .B(n26), .C(n25), .D(n24), .Y(N10) );
endmodule


module UART_RX_TOP_test_1 ( CLK, nRESET, RX_IN, PAR_EN, PAR_TYP, Prescale, 
        data_valid, P_DATA, par_err, stp_err, test_si, test_so, test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, nRESET, RX_IN, PAR_EN, PAR_TYP, test_si, test_se;
  output data_valid, par_err, stp_err, test_so;
  wire   strt_glitch, dat_samp_en, enable, deser_en, stp_chk_en, strt_chk_en,
         par_chk_en, sampled_bit, n1, n2, n3;
  wire   [3:0] bit_cnt;
  wire   [4:0] edge_cnt;
  assign test_so = edge_cnt[4];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(nRESET), .Y(n2) );
  FSM_RX_test_1 FSM_block ( .CLK(CLK), .nRESET(n1), .RX_IN(RX_IN), .PAR_EN(
        PAR_EN), .par_err(par_err), .strt_glitch(strt_glitch), .stp_err(
        stp_err), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(Prescale), 
        .dat_samp_en(dat_samp_en), .enable(enable), .deser_en(deser_en), 
        .data_valid(data_valid), .stp_chk_en(stp_chk_en), .strt_chk_en(
        strt_chk_en), .par_chk_en(par_chk_en), .test_si(test_si), .test_se(
        test_se) );
  parity_Check parity_Check_block ( .nRESET(n1), .PAR_TYP(PAR_TYP), 
        .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .P_DATA(P_DATA), 
        .par_err(par_err) );
  Stop_Check Stop_Check_block ( .nRESET(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(stp_err) );
  strt_Check strt_Check_block ( .nRESET(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .strt_glitch(strt_glitch) );
  edge_bit_counter_test_1 edge_bit_counter_block ( .enable(enable), .CLK(CLK), 
        .nRESET(n1), .PAR_EN(PAR_EN), .Prescale(Prescale), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt), .test_si(P_DATA[7]), .test_se(test_se) );
  deserializer_test_1 deserializer_block ( .CLK(CLK), .deser_en(deser_en), 
        .sampled_bit(sampled_bit), .bit_cnt(bit_cnt), .Prescale(Prescale), 
        .edge_cnt(edge_cnt), .P_DATA(P_DATA), .test_si(n3), .test_se(test_se)
         );
  data_sampling_test_1 data_sampling_block ( .CLK(CLK), .RX_IN(RX_IN), 
        .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt), .Prescale(Prescale), 
        .sampled_bit(sampled_bit), .test_si(strt_chk_en), .test_so(n3), 
        .test_se(test_se) );
endmodule


module UART_TOP_test_1 ( TX_CLK, RX_CLK, RST, Prescale, TX_IN_P, TX_IN_V, 
        TX_OUT_S, TX_OUT_V, RX_IN_S, RX_OUT_P, RX_OUT_V, parity_error, 
        framing_error, PAR_TYP, PAR_EN, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [7:0] TX_IN_P;
  output [7:0] RX_OUT_P;
  input TX_CLK, RX_CLK, RST, TX_IN_V, RX_IN_S, PAR_TYP, PAR_EN, test_si,
         test_se;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, parity_error, framing_error, test_so;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_TOP_test_1 UART_Tx ( .CLK(TX_CLK), .nRESET(n1), .P_DATA(TX_IN_P), 
        .Data_Valid(TX_IN_V), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V), .test_si(n4), .test_so(test_so), .test_se(
        test_se) );
  UART_RX_TOP_test_1 UART_Rx ( .CLK(RX_CLK), .nRESET(n1), .RX_IN(RX_IN_S), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .Prescale(Prescale), .data_valid(
        RX_OUT_V), .P_DATA(RX_OUT_P), .par_err(parity_error), .stp_err(
        framing_error), .test_si(test_si), .test_so(n4), .test_se(test_se) );
endmodule


module FIFO_WR_test_1 ( wclk, wrst_n, winc, wq2_rptr, waddr, wptr, wfull, 
        test_si, test_se );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input wclk, wrst_n, winc, test_si, test_se;
  output wfull;
  wire   n1, n2, n3, n6, n8, n9, n10, n11, n12, n13, n14, n15, n17, n18, n19,
         n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42, n4, n5,
         n7, n16;
  wire   [3:0] wptr_bin;

  SDFFRQX2M \wptr_bin_reg[3]  ( .D(n34), .SI(wptr_bin[2]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr_bin[3]) );
  SDFFRQX2M \waddr_reg[2]  ( .D(n22), .SI(waddr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M \wptr_bin_reg[2]  ( .D(n36), .SI(wptr_bin[1]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr_bin[2]) );
  SDFFRQX2M \wptr_bin_reg[1]  ( .D(n38), .SI(n5), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr_bin[1]) );
  SDFFRQX2M \wptr_bin_reg[0]  ( .D(n40), .SI(waddr[2]), .SE(test_se), .CK(wclk), .RN(wrst_n), .Q(wptr_bin[0]) );
  SDFFRQX2M \waddr_reg[1]  ( .D(n24), .SI(waddr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[1]) );
  SDFFRQX2M \waddr_reg[0]  ( .D(n26), .SI(test_si), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[0]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(n32), .SI(wptr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(n42), .SI(wptr_bin[3]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[0]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(n30), .SI(wptr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[2]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(n28), .SI(wptr[2]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[3]) );
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
  XNOR2X2M U15 ( .A(wptr_bin[0]), .B(n2), .Y(n40) );
  OAI2BB2X1M U16 ( .B0(n7), .B1(n2), .A0N(waddr[1]), .A1N(n2), .Y(n24) );
  OAI2BB2X1M U17 ( .B0(wptr_bin[0]), .B1(n2), .A0N(waddr[0]), .A1N(n2), .Y(n26) );
  OAI2BB2X1M U18 ( .B0(n16), .B1(n2), .A0N(n2), .A1N(wptr[3]), .Y(n28) );
  OAI2BB2X1M U19 ( .B0(wptr_bin[1]), .B1(n2), .A0N(n2), .A1N(wptr[0]), .Y(n42)
         );
  NAND2BX2M U20 ( .AN(n14), .B(wptr_bin[2]), .Y(n10) );
  NAND2X2M U21 ( .A(wptr_bin[1]), .B(wptr_bin[0]), .Y(n14) );
  CLKXOR2X2M U22 ( .A(n14), .B(wptr_bin[2]), .Y(n9) );
  CLKXOR2X2M U23 ( .A(wptr_bin[0]), .B(wptr_bin[1]), .Y(n12) );
  OAI2BB1X2M U24 ( .A0N(n2), .A1N(wptr[2]), .B0(n6), .Y(n30) );
  AOI32X1M U25 ( .A0(n4), .A1(n8), .A2(n9), .B0(n3), .B1(n16), .Y(n6) );
  OAI2BB1X2M U26 ( .A0N(n2), .A1N(wptr[1]), .B0(n11), .Y(n32) );
  AOI32X1M U27 ( .A0(n4), .A1(n12), .A2(n9), .B0(n7), .B1(n3), .Y(n11) );
  AO21XLM U28 ( .A0(waddr[2]), .A1(n2), .B0(n3), .Y(n22) );
  AO21XLM U29 ( .A0(n2), .A1(wptr_bin[2]), .B0(n3), .Y(n36) );
  CLKXOR2X2M U30 ( .A(wptr_bin[3]), .B(n13), .Y(n34) );
  NOR2X2M U31 ( .A(n2), .B(n10), .Y(n13) );
  CLKXOR2X2M U32 ( .A(wptr_bin[1]), .B(n15), .Y(n38) );
  NOR2X2M U33 ( .A(n5), .B(n2), .Y(n15) );
  INVX2M U34 ( .A(wptr_bin[0]), .Y(n5) );
endmodule


module DF_SYNC_test_1 ( clk, rst_n, ptr, q2_ptr, test_si, test_se );
  input [3:0] ptr;
  output [3:0] q2_ptr;
  input clk, rst_n, test_si, test_se;

  wire   [3:0] ff1;

  SDFFRQX2M \q2_ptr_reg[1]  ( .D(ff1[1]), .SI(q2_ptr[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(q2_ptr[1]) );
  SDFFRQX2M \q2_ptr_reg[0]  ( .D(ff1[0]), .SI(ff1[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q2_ptr[0]) );
  SDFFRQX2M \q2_ptr_reg[3]  ( .D(ff1[3]), .SI(q2_ptr[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(q2_ptr[3]) );
  SDFFRQX2M \q2_ptr_reg[2]  ( .D(ff1[2]), .SI(q2_ptr[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(q2_ptr[2]) );
  SDFFRQX2M \ff1_reg[3]  ( .D(ptr[3]), .SI(ff1[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[3]) );
  SDFFRQX2M \ff1_reg[2]  ( .D(ptr[2]), .SI(ff1[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[2]) );
  SDFFRQX2M \ff1_reg[1]  ( .D(ptr[1]), .SI(ff1[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[1]) );
  SDFFRQX2M \ff1_reg[0]  ( .D(ptr[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[0]) );
endmodule


module FIFO_RD_test_1 ( rclk, rrst_n, rinc, rq2_wptr, rempty, raddr, rptr, 
        test_si, test_se );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rclk, rrst_n, rinc, test_si, test_se;
  output rempty;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n12, n13, n14,
         n40;
  wire   [3:0] rptr_bin;

  SDFFRQX2M \rptr_bin_reg[3]  ( .D(n35), .SI(rptr_bin[2]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr_bin[3]) );
  SDFFRQX2M \rptr_reg[0]  ( .D(n39), .SI(rptr_bin[3]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[0]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(n32), .SI(rptr[2]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[3]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(n33), .SI(rptr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(n34), .SI(rptr[0]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[1]) );
  SDFFRQX2M \raddr_reg[2]  ( .D(n29), .SI(raddr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[2]) );
  SDFFRQX2M \rptr_bin_reg[2]  ( .D(n36), .SI(rptr_bin[1]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr_bin[2]) );
  SDFFRQX2M \raddr_reg[1]  ( .D(n30), .SI(raddr[0]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[1]) );
  SDFFRQX2M \rptr_bin_reg[1]  ( .D(n37), .SI(rptr_bin[0]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr_bin[1]) );
  SDFFRQX2M \raddr_reg[0]  ( .D(n31), .SI(test_si), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M \rptr_bin_reg[0]  ( .D(n38), .SI(raddr[2]), .SE(test_se), .CK(rclk), .RN(rrst_n), .Q(rptr_bin[0]) );
  INVX2M U14 ( .A(n21), .Y(n40) );
  INVX2M U15 ( .A(n17), .Y(n13) );
  XNOR2X2M U16 ( .A(rptr_bin[3]), .B(n22), .Y(n18) );
  NOR2BX2M U17 ( .AN(rptr_bin[2]), .B(n23), .Y(n22) );
  XNOR2X2M U18 ( .A(n23), .B(rptr_bin[2]), .Y(n21) );
  XNOR2X2M U19 ( .A(rptr[2]), .B(rq2_wptr[2]), .Y(n28) );
  NAND2X2M U20 ( .A(rinc), .B(n15), .Y(n12) );
  NAND4X2M U21 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n15) );
  XNOR2X2M U22 ( .A(rptr[1]), .B(rq2_wptr[1]), .Y(n25) );
  XNOR2X2M U23 ( .A(rptr[0]), .B(rq2_wptr[0]), .Y(n26) );
  XNOR2X2M U24 ( .A(rptr[3]), .B(rq2_wptr[3]), .Y(n27) );
  NAND2X2M U25 ( .A(rinc), .B(n15), .Y(n16) );
  XNOR2X2M U26 ( .A(rptr_bin[0]), .B(n12), .Y(n38) );
  OAI2BB2X1M U27 ( .B0(n16), .B1(n24), .A0N(n16), .A1N(rptr[0]), .Y(n39) );
  XNOR2X2M U28 ( .A(n14), .B(n13), .Y(n24) );
  OAI2BB2X1M U29 ( .B0(n20), .B1(n16), .A0N(n12), .A1N(rptr[1]), .Y(n34) );
  XNOR2X2M U30 ( .A(n21), .B(n13), .Y(n20) );
  OAI2BB2X1M U31 ( .B0(n18), .B1(n12), .A0N(n16), .A1N(rptr_bin[3]), .Y(n35)
         );
  OAI2BB2X1M U32 ( .B0(n19), .B1(n12), .A0N(n16), .A1N(rptr[2]), .Y(n33) );
  XNOR2X2M U33 ( .A(n18), .B(n40), .Y(n19) );
  OAI2BB2X1M U34 ( .B0(n18), .B1(n16), .A0N(n12), .A1N(rptr[3]), .Y(n32) );
  OAI2BB2X1M U35 ( .B0(n40), .B1(n16), .A0N(n12), .A1N(rptr_bin[2]), .Y(n36)
         );
  OAI2BB2X1M U36 ( .B0(n40), .B1(n12), .A0N(raddr[2]), .A1N(n16), .Y(n29) );
  OAI2BB2X1M U37 ( .B0(rptr_bin[0]), .B1(n12), .A0N(raddr[0]), .A1N(n16), .Y(
        n31) );
  OAI2BB2X1M U38 ( .B0(n17), .B1(n12), .A0N(n16), .A1N(rptr_bin[1]), .Y(n37)
         );
  OAI2BB2X1M U39 ( .B0(n17), .B1(n16), .A0N(raddr[1]), .A1N(n12), .Y(n30) );
  NAND2X2M U40 ( .A(rptr_bin[1]), .B(rptr_bin[0]), .Y(n23) );
  CLKXOR2X2M U41 ( .A(rptr_bin[1]), .B(n14), .Y(n17) );
  INVX2M U42 ( .A(n15), .Y(rempty) );
  INVX2M U43 ( .A(rptr_bin[0]), .Y(n14) );
endmodule


module DF_SYNC_test_0 ( clk, rst_n, ptr, q2_ptr, test_si, test_se );
  input [3:0] ptr;
  output [3:0] q2_ptr;
  input clk, rst_n, test_si, test_se;

  wire   [3:0] ff1;

  SDFFRQX2M \q2_ptr_reg[3]  ( .D(ff1[3]), .SI(q2_ptr[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(q2_ptr[3]) );
  SDFFRQX2M \q2_ptr_reg[2]  ( .D(ff1[2]), .SI(q2_ptr[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(q2_ptr[2]) );
  SDFFRQX2M \q2_ptr_reg[1]  ( .D(ff1[1]), .SI(q2_ptr[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(q2_ptr[1]) );
  SDFFRQX2M \q2_ptr_reg[0]  ( .D(ff1[0]), .SI(ff1[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q2_ptr[0]) );
  SDFFRQX2M \ff1_reg[3]  ( .D(ptr[3]), .SI(ff1[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[3]) );
  SDFFRQX2M \ff1_reg[2]  ( .D(ptr[2]), .SI(ff1[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[2]) );
  SDFFRQX2M \ff1_reg[1]  ( .D(ptr[1]), .SI(ff1[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[1]) );
  SDFFRQX2M \ff1_reg[0]  ( .D(ptr[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(ff1[0]) );
endmodule


module FIFO_MEM_CNTRL_test_1 ( wclk, waddr, raddr, wdata, winc, wfull, rdata, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, winc, wfull, test_si2, test_si1, test_se;
  output test_so2, test_so1;
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
         \RAM[7][4] , \RAM[7][3] , \RAM[7][2] , \RAM[7][1] , \RAM[7][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n170, n171, n172;
  assign test_so1 = \RAM[6][6] ;
  assign test_so2 = \RAM[7][7] ;

  SDFFQX2M \RAM_reg[1][7]  ( .D(n142), .SI(\RAM[1][6] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[1][7] ) );
  SDFFQX2M \RAM_reg[1][6]  ( .D(n141), .SI(\RAM[1][5] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[1][6] ) );
  SDFFQX2M \RAM_reg[1][5]  ( .D(n140), .SI(\RAM[1][4] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[1][5] ) );
  SDFFQX2M \RAM_reg[1][4]  ( .D(n139), .SI(\RAM[1][3] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[1][4] ) );
  SDFFQX2M \RAM_reg[1][3]  ( .D(n138), .SI(\RAM[1][2] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[1][3] ) );
  SDFFQX2M \RAM_reg[1][2]  ( .D(n137), .SI(\RAM[1][1] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[1][2] ) );
  SDFFQX2M \RAM_reg[1][1]  ( .D(n136), .SI(\RAM[1][0] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[1][1] ) );
  SDFFQX2M \RAM_reg[1][0]  ( .D(n135), .SI(\RAM[0][7] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[1][0] ) );
  SDFFQX2M \RAM_reg[5][7]  ( .D(n110), .SI(\RAM[5][6] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[5][7] ) );
  SDFFQX2M \RAM_reg[5][6]  ( .D(n109), .SI(\RAM[5][5] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[5][6] ) );
  SDFFQX2M \RAM_reg[5][5]  ( .D(n108), .SI(\RAM[5][4] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[5][5] ) );
  SDFFQX2M \RAM_reg[5][4]  ( .D(n107), .SI(\RAM[5][3] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[5][4] ) );
  SDFFQX2M \RAM_reg[5][3]  ( .D(n106), .SI(\RAM[5][2] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[5][3] ) );
  SDFFQX2M \RAM_reg[5][2]  ( .D(n105), .SI(\RAM[5][1] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[5][2] ) );
  SDFFQX2M \RAM_reg[5][1]  ( .D(n104), .SI(\RAM[5][0] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[5][1] ) );
  SDFFQX2M \RAM_reg[5][0]  ( .D(n103), .SI(\RAM[4][7] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[5][0] ) );
  SDFFQX2M \RAM_reg[3][7]  ( .D(n126), .SI(\RAM[3][6] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[3][7] ) );
  SDFFQX2M \RAM_reg[3][6]  ( .D(n125), .SI(\RAM[3][5] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[3][6] ) );
  SDFFQX2M \RAM_reg[3][5]  ( .D(n124), .SI(\RAM[3][4] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[3][5] ) );
  SDFFQX2M \RAM_reg[3][4]  ( .D(n123), .SI(\RAM[3][3] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[3][4] ) );
  SDFFQX2M \RAM_reg[3][3]  ( .D(n122), .SI(\RAM[3][2] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[3][3] ) );
  SDFFQX2M \RAM_reg[3][2]  ( .D(n121), .SI(\RAM[3][1] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[3][2] ) );
  SDFFQX2M \RAM_reg[3][1]  ( .D(n120), .SI(\RAM[3][0] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[3][1] ) );
  SDFFQX2M \RAM_reg[3][0]  ( .D(n119), .SI(\RAM[2][7] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[3][0] ) );
  SDFFQX2M \RAM_reg[7][7]  ( .D(n94), .SI(\RAM[7][6] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[7][7] ) );
  SDFFQX2M \RAM_reg[7][6]  ( .D(n93), .SI(\RAM[7][5] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[7][6] ) );
  SDFFQX2M \RAM_reg[7][5]  ( .D(n92), .SI(\RAM[7][4] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[7][5] ) );
  SDFFQX2M \RAM_reg[7][4]  ( .D(n91), .SI(\RAM[7][3] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[7][4] ) );
  SDFFQX2M \RAM_reg[7][3]  ( .D(n90), .SI(\RAM[7][2] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[7][3] ) );
  SDFFQX2M \RAM_reg[7][2]  ( .D(n89), .SI(\RAM[7][1] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[7][2] ) );
  SDFFQX2M \RAM_reg[7][1]  ( .D(n88), .SI(\RAM[7][0] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[7][1] ) );
  SDFFQX2M \RAM_reg[7][0]  ( .D(n87), .SI(\RAM[6][7] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[7][0] ) );
  SDFFQX2M \RAM_reg[2][7]  ( .D(n134), .SI(\RAM[2][6] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[2][7] ) );
  SDFFQX2M \RAM_reg[2][6]  ( .D(n133), .SI(\RAM[2][5] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[2][6] ) );
  SDFFQX2M \RAM_reg[2][5]  ( .D(n132), .SI(\RAM[2][4] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[2][5] ) );
  SDFFQX2M \RAM_reg[2][4]  ( .D(n131), .SI(\RAM[2][3] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[2][4] ) );
  SDFFQX2M \RAM_reg[2][3]  ( .D(n130), .SI(\RAM[2][2] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[2][3] ) );
  SDFFQX2M \RAM_reg[2][2]  ( .D(n129), .SI(\RAM[2][1] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[2][2] ) );
  SDFFQX2M \RAM_reg[2][1]  ( .D(n128), .SI(\RAM[2][0] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[2][1] ) );
  SDFFQX2M \RAM_reg[2][0]  ( .D(n127), .SI(\RAM[1][7] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[2][0] ) );
  SDFFQX2M \RAM_reg[6][7]  ( .D(n102), .SI(test_si2), .SE(n172), .CK(wclk), 
        .Q(\RAM[6][7] ) );
  SDFFQX2M \RAM_reg[6][6]  ( .D(n101), .SI(\RAM[6][5] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[6][6] ) );
  SDFFQX2M \RAM_reg[6][5]  ( .D(n100), .SI(\RAM[6][4] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[6][5] ) );
  SDFFQX2M \RAM_reg[6][4]  ( .D(n99), .SI(\RAM[6][3] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[6][4] ) );
  SDFFQX2M \RAM_reg[6][3]  ( .D(n98), .SI(\RAM[6][2] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[6][3] ) );
  SDFFQX2M \RAM_reg[6][2]  ( .D(n97), .SI(\RAM[6][1] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[6][2] ) );
  SDFFQX2M \RAM_reg[6][1]  ( .D(n96), .SI(\RAM[6][0] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[6][1] ) );
  SDFFQX2M \RAM_reg[6][0]  ( .D(n95), .SI(\RAM[5][7] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[6][0] ) );
  SDFFQX2M \RAM_reg[0][7]  ( .D(n150), .SI(\RAM[0][6] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[0][7] ) );
  SDFFQX2M \RAM_reg[0][6]  ( .D(n149), .SI(\RAM[0][5] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[0][6] ) );
  SDFFQX2M \RAM_reg[0][5]  ( .D(n148), .SI(\RAM[0][4] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[0][5] ) );
  SDFFQX2M \RAM_reg[0][4]  ( .D(n147), .SI(\RAM[0][3] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[0][4] ) );
  SDFFQX2M \RAM_reg[0][3]  ( .D(n146), .SI(\RAM[0][2] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[0][3] ) );
  SDFFQX2M \RAM_reg[0][2]  ( .D(n145), .SI(\RAM[0][1] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[0][2] ) );
  SDFFQX2M \RAM_reg[0][1]  ( .D(n144), .SI(\RAM[0][0] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[0][1] ) );
  SDFFQX2M \RAM_reg[0][0]  ( .D(n143), .SI(test_si1), .SE(n172), .CK(wclk), 
        .Q(\RAM[0][0] ) );
  SDFFQX2M \RAM_reg[4][7]  ( .D(n118), .SI(\RAM[4][6] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[4][7] ) );
  SDFFQX2M \RAM_reg[4][6]  ( .D(n117), .SI(\RAM[4][5] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[4][6] ) );
  SDFFQX2M \RAM_reg[4][5]  ( .D(n116), .SI(\RAM[4][4] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[4][5] ) );
  SDFFQX2M \RAM_reg[4][4]  ( .D(n115), .SI(\RAM[4][3] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[4][4] ) );
  SDFFQX2M \RAM_reg[4][3]  ( .D(n114), .SI(\RAM[4][2] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[4][3] ) );
  SDFFQX2M \RAM_reg[4][2]  ( .D(n113), .SI(\RAM[4][1] ), .SE(n172), .CK(wclk), 
        .Q(\RAM[4][2] ) );
  SDFFQX2M \RAM_reg[4][1]  ( .D(n112), .SI(\RAM[4][0] ), .SE(n171), .CK(wclk), 
        .Q(\RAM[4][1] ) );
  SDFFQX2M \RAM_reg[4][0]  ( .D(n111), .SI(\RAM[3][7] ), .SE(n170), .CK(wclk), 
        .Q(\RAM[4][0] ) );
  NOR2BX2M U67 ( .AN(n80), .B(waddr[2]), .Y(n82) );
  NAND3X2M U68 ( .A(n157), .B(n158), .C(n76), .Y(n79) );
  NAND3X2M U69 ( .A(n157), .B(n158), .C(n82), .Y(n85) );
  NAND3X2M U70 ( .A(waddr[1]), .B(waddr[0]), .C(n82), .Y(n81) );
  NAND3X2M U71 ( .A(waddr[1]), .B(n157), .C(n82), .Y(n83) );
  NAND3X2M U72 ( .A(waddr[0]), .B(n158), .C(n82), .Y(n84) );
  NAND3X2M U73 ( .A(n76), .B(n157), .C(waddr[1]), .Y(n77) );
  NAND3X2M U74 ( .A(n76), .B(n158), .C(waddr[0]), .Y(n78) );
  NAND3X2M U75 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n75) );
  OAI2BB2X1M U76 ( .B0(n75), .B1(n166), .A0N(\RAM[7][0] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U77 ( .B0(n75), .B1(n165), .A0N(\RAM[7][1] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U78 ( .B0(n75), .B1(n164), .A0N(\RAM[7][2] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U79 ( .B0(n75), .B1(n163), .A0N(\RAM[7][3] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U80 ( .B0(n75), .B1(n162), .A0N(\RAM[7][4] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U81 ( .B0(n75), .B1(n161), .A0N(\RAM[7][5] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U82 ( .B0(n75), .B1(n160), .A0N(\RAM[7][6] ), .A1N(n75), .Y(n93)
         );
  OAI2BB2X1M U83 ( .B0(n75), .B1(n159), .A0N(\RAM[7][7] ), .A1N(n75), .Y(n94)
         );
  OAI2BB2X1M U84 ( .B0(n166), .B1(n81), .A0N(\RAM[3][0] ), .A1N(n81), .Y(n119)
         );
  OAI2BB2X1M U85 ( .B0(n165), .B1(n81), .A0N(\RAM[3][1] ), .A1N(n81), .Y(n120)
         );
  OAI2BB2X1M U86 ( .B0(n164), .B1(n81), .A0N(\RAM[3][2] ), .A1N(n81), .Y(n121)
         );
  OAI2BB2X1M U87 ( .B0(n163), .B1(n81), .A0N(\RAM[3][3] ), .A1N(n81), .Y(n122)
         );
  OAI2BB2X1M U88 ( .B0(n162), .B1(n81), .A0N(\RAM[3][4] ), .A1N(n81), .Y(n123)
         );
  OAI2BB2X1M U89 ( .B0(n161), .B1(n81), .A0N(\RAM[3][5] ), .A1N(n81), .Y(n124)
         );
  OAI2BB2X1M U90 ( .B0(n160), .B1(n81), .A0N(\RAM[3][6] ), .A1N(n81), .Y(n125)
         );
  OAI2BB2X1M U91 ( .B0(n159), .B1(n81), .A0N(\RAM[3][7] ), .A1N(n81), .Y(n126)
         );
  OAI2BB2X1M U92 ( .B0(n166), .B1(n83), .A0N(\RAM[2][0] ), .A1N(n83), .Y(n127)
         );
  OAI2BB2X1M U93 ( .B0(n165), .B1(n83), .A0N(\RAM[2][1] ), .A1N(n83), .Y(n128)
         );
  OAI2BB2X1M U94 ( .B0(n164), .B1(n83), .A0N(\RAM[2][2] ), .A1N(n83), .Y(n129)
         );
  OAI2BB2X1M U95 ( .B0(n163), .B1(n83), .A0N(\RAM[2][3] ), .A1N(n83), .Y(n130)
         );
  OAI2BB2X1M U96 ( .B0(n162), .B1(n83), .A0N(\RAM[2][4] ), .A1N(n83), .Y(n131)
         );
  OAI2BB2X1M U97 ( .B0(n161), .B1(n83), .A0N(\RAM[2][5] ), .A1N(n83), .Y(n132)
         );
  OAI2BB2X1M U98 ( .B0(n160), .B1(n83), .A0N(\RAM[2][6] ), .A1N(n83), .Y(n133)
         );
  OAI2BB2X1M U99 ( .B0(n159), .B1(n83), .A0N(\RAM[2][7] ), .A1N(n83), .Y(n134)
         );
  OAI2BB2X1M U100 ( .B0(n166), .B1(n84), .A0N(\RAM[1][0] ), .A1N(n84), .Y(n135) );
  OAI2BB2X1M U101 ( .B0(n165), .B1(n84), .A0N(\RAM[1][1] ), .A1N(n84), .Y(n136) );
  OAI2BB2X1M U102 ( .B0(n164), .B1(n84), .A0N(\RAM[1][2] ), .A1N(n84), .Y(n137) );
  OAI2BB2X1M U103 ( .B0(n163), .B1(n84), .A0N(\RAM[1][3] ), .A1N(n84), .Y(n138) );
  OAI2BB2X1M U104 ( .B0(n162), .B1(n84), .A0N(\RAM[1][4] ), .A1N(n84), .Y(n139) );
  OAI2BB2X1M U105 ( .B0(n161), .B1(n84), .A0N(\RAM[1][5] ), .A1N(n84), .Y(n140) );
  OAI2BB2X1M U106 ( .B0(n160), .B1(n84), .A0N(\RAM[1][6] ), .A1N(n84), .Y(n141) );
  OAI2BB2X1M U107 ( .B0(n159), .B1(n84), .A0N(\RAM[1][7] ), .A1N(n84), .Y(n142) );
  OAI2BB2X1M U108 ( .B0(n166), .B1(n85), .A0N(\RAM[0][0] ), .A1N(n85), .Y(n143) );
  OAI2BB2X1M U109 ( .B0(n165), .B1(n85), .A0N(\RAM[0][1] ), .A1N(n85), .Y(n144) );
  OAI2BB2X1M U110 ( .B0(n164), .B1(n85), .A0N(\RAM[0][2] ), .A1N(n85), .Y(n145) );
  OAI2BB2X1M U111 ( .B0(n163), .B1(n85), .A0N(\RAM[0][3] ), .A1N(n85), .Y(n146) );
  OAI2BB2X1M U112 ( .B0(n162), .B1(n85), .A0N(\RAM[0][4] ), .A1N(n85), .Y(n147) );
  OAI2BB2X1M U113 ( .B0(n161), .B1(n85), .A0N(\RAM[0][5] ), .A1N(n85), .Y(n148) );
  OAI2BB2X1M U114 ( .B0(n160), .B1(n85), .A0N(\RAM[0][6] ), .A1N(n85), .Y(n149) );
  OAI2BB2X1M U115 ( .B0(n159), .B1(n85), .A0N(\RAM[0][7] ), .A1N(n85), .Y(n150) );
  OAI2BB2X1M U116 ( .B0(n166), .B1(n77), .A0N(\RAM[6][0] ), .A1N(n77), .Y(n95)
         );
  OAI2BB2X1M U117 ( .B0(n165), .B1(n77), .A0N(\RAM[6][1] ), .A1N(n77), .Y(n96)
         );
  OAI2BB2X1M U118 ( .B0(n164), .B1(n77), .A0N(\RAM[6][2] ), .A1N(n77), .Y(n97)
         );
  OAI2BB2X1M U119 ( .B0(n163), .B1(n77), .A0N(\RAM[6][3] ), .A1N(n77), .Y(n98)
         );
  OAI2BB2X1M U120 ( .B0(n162), .B1(n77), .A0N(\RAM[6][4] ), .A1N(n77), .Y(n99)
         );
  OAI2BB2X1M U121 ( .B0(n161), .B1(n77), .A0N(\RAM[6][5] ), .A1N(n77), .Y(n100) );
  OAI2BB2X1M U122 ( .B0(n160), .B1(n77), .A0N(\RAM[6][6] ), .A1N(n77), .Y(n101) );
  OAI2BB2X1M U123 ( .B0(n159), .B1(n77), .A0N(\RAM[6][7] ), .A1N(n77), .Y(n102) );
  OAI2BB2X1M U124 ( .B0(n166), .B1(n78), .A0N(\RAM[5][0] ), .A1N(n78), .Y(n103) );
  OAI2BB2X1M U125 ( .B0(n165), .B1(n78), .A0N(\RAM[5][1] ), .A1N(n78), .Y(n104) );
  OAI2BB2X1M U126 ( .B0(n164), .B1(n78), .A0N(\RAM[5][2] ), .A1N(n78), .Y(n105) );
  OAI2BB2X1M U127 ( .B0(n163), .B1(n78), .A0N(\RAM[5][3] ), .A1N(n78), .Y(n106) );
  OAI2BB2X1M U128 ( .B0(n162), .B1(n78), .A0N(\RAM[5][4] ), .A1N(n78), .Y(n107) );
  OAI2BB2X1M U129 ( .B0(n161), .B1(n78), .A0N(\RAM[5][5] ), .A1N(n78), .Y(n108) );
  OAI2BB2X1M U130 ( .B0(n160), .B1(n78), .A0N(\RAM[5][6] ), .A1N(n78), .Y(n109) );
  OAI2BB2X1M U131 ( .B0(n159), .B1(n78), .A0N(\RAM[5][7] ), .A1N(n78), .Y(n110) );
  OAI2BB2X1M U132 ( .B0(n166), .B1(n79), .A0N(\RAM[4][0] ), .A1N(n79), .Y(n111) );
  OAI2BB2X1M U133 ( .B0(n165), .B1(n79), .A0N(\RAM[4][1] ), .A1N(n79), .Y(n112) );
  OAI2BB2X1M U134 ( .B0(n164), .B1(n79), .A0N(\RAM[4][2] ), .A1N(n79), .Y(n113) );
  OAI2BB2X1M U135 ( .B0(n163), .B1(n79), .A0N(\RAM[4][3] ), .A1N(n79), .Y(n114) );
  OAI2BB2X1M U136 ( .B0(n162), .B1(n79), .A0N(\RAM[4][4] ), .A1N(n79), .Y(n115) );
  OAI2BB2X1M U137 ( .B0(n161), .B1(n79), .A0N(\RAM[4][5] ), .A1N(n79), .Y(n116) );
  OAI2BB2X1M U138 ( .B0(n160), .B1(n79), .A0N(\RAM[4][6] ), .A1N(n79), .Y(n117) );
  OAI2BB2X1M U139 ( .B0(n159), .B1(n79), .A0N(\RAM[4][7] ), .A1N(n79), .Y(n118) );
  NOR2BX2M U140 ( .AN(winc), .B(wfull), .Y(n80) );
  AND2X2M U141 ( .A(waddr[2]), .B(n80), .Y(n76) );
  XNOR2X4M U142 ( .A(raddr[0]), .B(raddr[1]), .Y(N10) );
  INVX4M U143 ( .A(raddr[0]), .Y(N9) );
  INVX2M U144 ( .A(wdata[0]), .Y(n166) );
  INVX2M U145 ( .A(wdata[1]), .Y(n165) );
  INVX2M U146 ( .A(wdata[2]), .Y(n164) );
  INVX2M U147 ( .A(wdata[3]), .Y(n163) );
  INVX2M U148 ( .A(wdata[4]), .Y(n162) );
  INVX2M U149 ( .A(wdata[5]), .Y(n161) );
  INVX2M U150 ( .A(wdata[6]), .Y(n160) );
  INVX2M U151 ( .A(wdata[7]), .Y(n159) );
  INVX2M U152 ( .A(waddr[0]), .Y(n157) );
  INVX2M U153 ( .A(waddr[1]), .Y(n158) );
  MX2X2M U154 ( .A(n156), .B(n155), .S0(N11), .Y(rdata[7]) );
  MX4X1M U155 ( .A(\RAM[0][7] ), .B(\RAM[1][7] ), .C(\RAM[2][7] ), .D(
        \RAM[3][7] ), .S0(N9), .S1(N10), .Y(n156) );
  MX4X1M U156 ( .A(\RAM[4][7] ), .B(\RAM[5][7] ), .C(\RAM[6][7] ), .D(
        \RAM[7][7] ), .S0(N9), .S1(N10), .Y(n155) );
  CLKXOR2X2M U157 ( .A(raddr[2]), .B(n86), .Y(N11) );
  NOR2X2M U158 ( .A(raddr[0]), .B(raddr[1]), .Y(n86) );
  MX2X2M U159 ( .A(n66), .B(n65), .S0(N11), .Y(rdata[0]) );
  MX4X1M U160 ( .A(\RAM[0][0] ), .B(\RAM[1][0] ), .C(\RAM[2][0] ), .D(
        \RAM[3][0] ), .S0(N9), .S1(N10), .Y(n66) );
  MX4X1M U161 ( .A(\RAM[4][0] ), .B(\RAM[5][0] ), .C(\RAM[6][0] ), .D(
        \RAM[7][0] ), .S0(N9), .S1(N10), .Y(n65) );
  MX2X2M U162 ( .A(n68), .B(n67), .S0(N11), .Y(rdata[1]) );
  MX4X1M U163 ( .A(\RAM[0][1] ), .B(\RAM[1][1] ), .C(\RAM[2][1] ), .D(
        \RAM[3][1] ), .S0(N9), .S1(N10), .Y(n68) );
  MX4X1M U164 ( .A(\RAM[4][1] ), .B(\RAM[5][1] ), .C(\RAM[6][1] ), .D(
        \RAM[7][1] ), .S0(N9), .S1(N10), .Y(n67) );
  MX2X2M U165 ( .A(n70), .B(n69), .S0(N11), .Y(rdata[2]) );
  MX4X1M U166 ( .A(\RAM[0][2] ), .B(\RAM[1][2] ), .C(\RAM[2][2] ), .D(
        \RAM[3][2] ), .S0(N9), .S1(N10), .Y(n70) );
  MX4X1M U167 ( .A(\RAM[4][2] ), .B(\RAM[5][2] ), .C(\RAM[6][2] ), .D(
        \RAM[7][2] ), .S0(N9), .S1(N10), .Y(n69) );
  MX2X2M U168 ( .A(n72), .B(n71), .S0(N11), .Y(rdata[3]) );
  MX4X1M U169 ( .A(\RAM[0][3] ), .B(\RAM[1][3] ), .C(\RAM[2][3] ), .D(
        \RAM[3][3] ), .S0(N9), .S1(N10), .Y(n72) );
  MX4X1M U170 ( .A(\RAM[4][3] ), .B(\RAM[5][3] ), .C(\RAM[6][3] ), .D(
        \RAM[7][3] ), .S0(N9), .S1(N10), .Y(n71) );
  MX2X2M U171 ( .A(n74), .B(n73), .S0(N11), .Y(rdata[4]) );
  MX4X1M U172 ( .A(\RAM[0][4] ), .B(\RAM[1][4] ), .C(\RAM[2][4] ), .D(
        \RAM[3][4] ), .S0(N9), .S1(N10), .Y(n74) );
  MX4X1M U173 ( .A(\RAM[4][4] ), .B(\RAM[5][4] ), .C(\RAM[6][4] ), .D(
        \RAM[7][4] ), .S0(N9), .S1(N10), .Y(n73) );
  MX2X2M U174 ( .A(n152), .B(n151), .S0(N11), .Y(rdata[5]) );
  MX4X1M U175 ( .A(\RAM[0][5] ), .B(\RAM[1][5] ), .C(\RAM[2][5] ), .D(
        \RAM[3][5] ), .S0(N9), .S1(N10), .Y(n152) );
  MX4X1M U176 ( .A(\RAM[4][5] ), .B(\RAM[5][5] ), .C(\RAM[6][5] ), .D(
        \RAM[7][5] ), .S0(N9), .S1(N10), .Y(n151) );
  MX2X2M U177 ( .A(n154), .B(n153), .S0(N11), .Y(rdata[6]) );
  MX4X1M U178 ( .A(\RAM[0][6] ), .B(\RAM[1][6] ), .C(\RAM[2][6] ), .D(
        \RAM[3][6] ), .S0(N9), .S1(N10), .Y(n154) );
  MX4X1M U179 ( .A(\RAM[4][6] ), .B(\RAM[5][6] ), .C(\RAM[6][6] ), .D(
        \RAM[7][6] ), .S0(N9), .S1(N10), .Y(n153) );
  DLY1X1M U180 ( .A(test_se), .Y(n170) );
  DLY1X1M U181 ( .A(test_se), .Y(n171) );
  DLY1X1M U182 ( .A(test_se), .Y(n172) );
endmodule


module ASYNC_FIFO_test_1 ( wclk, rclk, wrst_n, rrst_n, rinc, winc, wdata, 
        wfull, rempty, rdata, test_si2, test_si1, test_so2, test_so1, test_se
 );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, rclk, wrst_n, rrst_n, rinc, winc, test_si2, test_si1, test_se;
  output wfull, rempty, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5;
  wire   [3:0] wq2_rptr;
  wire   [3:0] wptr;
  wire   [2:0] waddr;
  wire   [3:0] rptr;
  wire   [3:0] rq2_wptr;
  wire   [2:0] raddr;
  assign test_so2 = wq2_rptr[3];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(wrst_n), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rrst_n), .Y(n2) );
  FIFO_WR_test_1 link_FIFO_Write ( .wclk(wclk), .wrst_n(n3), .winc(winc), 
        .wq2_rptr(wq2_rptr), .waddr(waddr), .wptr(wptr), .wfull(wfull), 
        .test_si(rptr[3]), .test_se(test_se) );
  DF_SYNC_test_1 link_synchronizer_write ( .clk(wclk), .rst_n(n3), .ptr(rptr), 
        .q2_ptr(wq2_rptr), .test_si(rq2_wptr[3]), .test_se(test_se) );
  FIFO_RD_test_1 link_FIFO_Read ( .rclk(rclk), .rrst_n(n1), .rinc(rinc), 
        .rq2_wptr(rq2_wptr), .rempty(rempty), .raddr(raddr), .rptr(rptr), 
        .test_si(test_si1), .test_se(test_se) );
  DF_SYNC_test_0 link_synchronizer_read ( .clk(rclk), .rst_n(n1), .ptr(wptr), 
        .q2_ptr(rq2_wptr), .test_si(n5), .test_se(test_se) );
  FIFO_MEM_CNTRL_test_1 link_Memory ( .wclk(wclk), .waddr(waddr), .raddr(raddr), .wdata(wdata), .winc(winc), .wfull(wfull), .rdata(rdata), .test_si2(test_si2), .test_si1(wptr[3]), .test_so2(n5), .test_so1(test_so1), .test_se(test_se) );
endmodule


module DATA_SYNC_test_1 ( unsync_bus, bus_enable, CLK, RST, sync_bus, 
        enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   Pulse_Gen, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [0:1] ff;

  SDFFRQX2M Pulse_Gen_reg ( .D(ff[1]), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Pulse_Gen) );
  SDFFRQX2M \ff_reg[1]  ( .D(ff[0]), .SI(ff[0]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(ff[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(ff[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(Pulse_Gen), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \ff_reg[0]  ( .D(bus_enable), .SI(enable_pulse), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ff[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(Pulse_Gen), .B(ff[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module SYS_TOP ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, UART_CLK, 
        REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_CLK_M, UART_CLK_M, TX_CLK, TX_CLK_M, RX_CLK, RX_CLK_M, CLK_EN,
         GATED_CLK, RST_M, SYNC_RST_REF_CLK, SYNC_RST_REF_CLK_M,
         SYNC_RST_UART_CLK, SYNC_RST_UART_CLK_M, WrEn, RdEn, RdData_Valid, EN,
         OUT_Valid, TX_D_VLD, FIFO_FULL, RX_D_VLD, _2_net_, RD_INC, busy_TX,
         F_EMPTY, RD_INC_ff, data_valid, n1, n2, n3, n4, n5, n6, n7, n10, n14,
         n15, n16, n17, n18, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39;
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
  assign SO[2] = RdData[1];

  INVX2M U3 ( .A(n5), .Y(n4) );
  INVX2M U4 ( .A(n7), .Y(n6) );
  BUFX2M U5 ( .A(Address[0]), .Y(n2) );
  BUFX2M U6 ( .A(Address[1]), .Y(n3) );
  NOR2X2M U7 ( .A(busy_TX), .B(F_EMPTY), .Y(_2_net_) );
  INVX2M U8 ( .A(SYNC_RST_REF_CLK_M), .Y(n7) );
  INVX2M U9 ( .A(SYNC_RST_UART_CLK_M), .Y(n5) );
  BUFX2M U10 ( .A(UART_RX_IN), .Y(n1) );
  DLY1X1M U16 ( .A(n23), .Y(n22) );
  INVXLM U17 ( .A(n36), .Y(n23) );
  DLY1X1M U18 ( .A(n27), .Y(n24) );
  INVXLM U19 ( .A(n39), .Y(n25) );
  INVXLM U20 ( .A(n25), .Y(n26) );
  INVXLM U21 ( .A(n25), .Y(n27) );
  DLY1X1M U22 ( .A(n31), .Y(n28) );
  INVXLM U23 ( .A(n38), .Y(n29) );
  INVXLM U24 ( .A(n29), .Y(n30) );
  INVXLM U25 ( .A(n29), .Y(n31) );
  INVXLM U26 ( .A(n30), .Y(n32) );
  INVXLM U27 ( .A(n32), .Y(n33) );
  INVXLM U28 ( .A(n37), .Y(n34) );
  INVXLM U29 ( .A(n34), .Y(n35) );
  INVXLM U30 ( .A(SE), .Y(n36) );
  INVXLM U31 ( .A(n36), .Y(n37) );
  INVXLM U32 ( .A(n36), .Y(n38) );
  INVXLM U33 ( .A(n36), .Y(n39) );
  mux2X1_1 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        REF_CLK_M) );
  mux2X1_5 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_CLK_M) );
  mux2X1_0 U2_mux2X1 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        TX_CLK_M) );
  mux2X1_6 U3_mux2X1 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        RX_CLK_M) );
  CLK_GATE CLOCK_GATING ( .test_en(test_mode), .CLK(REF_CLK_M), .CLK_EN(CLK_EN), .GATED_CLK(GATED_CLK) );
  mux2X1_4 U4_mux2X1 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_M) );
  mux2X1_3 U5_mux2X1 ( .IN_0(SYNC_RST_REF_CLK), .IN_1(scan_rst), .SEL(
        test_mode), .OUT(SYNC_RST_REF_CLK_M) );
  mux2X1_2 U6_mux2X1 ( .IN_0(SYNC_RST_UART_CLK), .IN_1(scan_rst), .SEL(
        test_mode), .OUT(SYNC_RST_UART_CLK_M) );
  ClkDiv_test_1 CLK_DIV_TX ( .i_ref_clk(UART_CLK_M), .i_rst_n(n4), .i_clk_en(
        1'b1), .i_div_ratio(Div_Ratio), .o_div_clk(TX_CLK), .test_si(n17), 
        .test_so(n16), .test_se(n33) );
  ClkDiv_test_0 CLK_DIV_RX ( .i_ref_clk(UART_CLK_M), .i_rst_n(n4), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, clk_div_RX[2:0]}), 
        .o_div_clk(RX_CLK), .test_si(n18), .test_so(n17), .test_se(n35) );
  Mux_Prescale PRESCALE_MUX ( .Prescale(UART_Config[7:2]), .clk_div({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, clk_div_RX[2:0]}) );
  RST_SYNC_test_0 RST_SYN_REF ( .RST(RST_M), .CLK(REF_CLK_M), .SYNC_RST(
        SYNC_RST_REF_CLK), .test_si(n10), .test_se(n35) );
  RST_SYNC_test_1 RST_SYN_UART ( .RST(RST_M), .CLK(UART_CLK_M), .SYNC_RST(
        SYNC_RST_UART_CLK), .test_si(SYNC_RST_REF_CLK), .test_se(n37) );
  SYS_CTRL_test_1 CONTROL_UNIT ( .CLK(REF_CLK_M), .RST(n6), .WrEn(WrEn), 
        .RdEn(RdEn), .Address(Address), .WrData(WrData), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .CLK_EN(CLK_EN), .ALU_FUN(ALU_FUN), .EN(
        EN), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), .TX_D_VLD(TX_D_VLD), 
        .TX_P_DATA(TX_P_DATA), .FIFO_FULL(FIFO_FULL), .RX_P_DATA(RX_P_DATA), 
        .RX_D_VLD(RX_D_VLD), .test_si(n16), .test_so(n15), .test_se(n28) );
  Register_file_8_16_test_1 REGISTER_FILE ( .WrEn(WrEn), .RdEn(RdEn), .CLK(
        REF_CLK_M), .RST(n6), .WrData(WrData), .Address({Address[3:2], n3, n2}), .REG0(A), .REG1(B), .REG2(UART_Config), .REG3(Div_Ratio), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .test_si3(SI[0]), .test_si2(SI[1]), 
        .test_si1(n14), .test_so2(n10), .test_so1(SO[1]), .test_se(SE) );
  ALU_test_1 ALU_UNIT ( .CLK(GATED_CLK), .RST(n6), .Enable(EN), .A(A), .B(B), 
        .ALU_FUN(ALU_FUN), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid), .test_si(
        SI[3]), .test_se(n24) );
  PULSE_GEN_test_1 PULSE_GENERATOR ( .RST(n4), .CLK(TX_CLK_M), .LVL_SIG(
        _2_net_), .PULSE_SIG(RD_INC), .test_si(RD_INC_ff), .test_so(n14), 
        .test_se(n35) );
  delay_one_period_test_1 DELAY_ONE_PERIOD ( .CLK(TX_CLK_M), .Signal(RD_INC), 
        .Signal_delayed(RD_INC_ff), .test_si(RX_P_DATA[7]), .test_se(n33) );
  UART_TOP_test_1 UART ( .TX_CLK(TX_CLK_M), .RX_CLK(RX_CLK_M), .RST(n4), 
        .Prescale(UART_Config[7:2]), .TX_IN_P(RD_DATA), .TX_IN_V(RD_INC_ff), 
        .TX_OUT_S(UART_TX_O), .TX_OUT_V(busy_TX), .RX_IN_S(n1), .RX_OUT_P(
        P_DATA), .RX_OUT_V(data_valid), .parity_error(parity_error), 
        .framing_error(framing_error), .PAR_TYP(UART_Config[1]), .PAR_EN(
        UART_Config[0]), .test_si(SYNC_RST_UART_CLK), .test_so(SO[0]), 
        .test_se(n22) );
  ASYNC_FIFO_test_1 ASYN_FIFO ( .wclk(REF_CLK_M), .rclk(TX_CLK_M), .wrst_n(n6), 
        .rrst_n(n4), .rinc(RD_INC), .winc(TX_D_VLD), .wdata(TX_P_DATA), 
        .wfull(FIFO_FULL), .rempty(F_EMPTY), .rdata(RD_DATA), .test_si2(SI[2]), 
        .test_si1(OUT_Valid), .test_so2(n18), .test_so1(SO[3]), .test_se(SE)
         );
  DATA_SYNC_test_1 DATA_SYNC ( .unsync_bus(P_DATA), .bus_enable(data_valid), 
        .CLK(REF_CLK_M), .RST(n6), .sync_bus(RX_P_DATA), .enable_pulse(
        RX_D_VLD), .test_si(n15), .test_se(n26) );
endmodule

