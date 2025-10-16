module deserializer(
input wire CLK,
input wire deser_en, sampled_bit,
input wire [3:0] bit_cnt,
input wire [5:0] Prescale,
input wire [4:0] edge_cnt,
output reg [7:0] P_DATA
);

always@(posedge CLK)
begin
    if(deser_en && (edge_cnt == (Prescale/2 + 6'd2)))
        P_DATA[bit_cnt - 4'd1] = sampled_bit;
end
endmodule
