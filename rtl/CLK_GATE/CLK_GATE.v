module CLK_GATE(
input wire CLK,CLK_EN,
output wire GATED_CLK
);
reg latch_out;

always@(CLK or CLK_EN)
begin
    if(!CLK)
       latch_out <= CLK_EN;
end

assign GATED_CLK = latch_out & CLK;

endmodule