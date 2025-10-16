module delay_one_period(
input wire CLK,
input wire Signal,
output reg Signal_delayed
);
always@(posedge CLK)
begin
    Signal_delayed <= Signal;
end
endmodule