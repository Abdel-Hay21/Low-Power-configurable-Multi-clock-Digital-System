module CLK_GATE(
input test_en,
input wire CLK,CLK_EN,
output wire GATED_CLK
);

TLATNCAX12M U0_TLATNCAX12M (
.E(CLK_EN|test_en),
.CK(CLK),
.ECK(GATED_CLK)
);

endmodule
