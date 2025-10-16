module Mux_Prescale(
input wire [5:0] Prescale,
output reg [7:0] clk_div   
);
always@(*)
begin
    case(Prescale)
    6'd8:  clk_div = 8'd4;
    6'd16: clk_div = 8'd2;
    6'd32: clk_div = 8'd1;
    default: clk_div = 8'd1;
    endcase
end
endmodule