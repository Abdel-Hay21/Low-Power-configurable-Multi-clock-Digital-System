module parity_calc(
input wire PAR_TYP,
input wire [7:0] P_DATA_save,
output reg par_bit
);

always@(*)
begin
    if(!PAR_TYP)
      par_bit = ^(P_DATA_save);
    else
      par_bit = !(^(P_DATA_save));                      
end
  
endmodule
