module parity_Check(
input wire nRESET,
input wire PAR_TYP, par_chk_en, sampled_bit,
input wire [7:0] P_DATA,
output reg par_err
);
reg xor_result;

always@(*)
begin
    if(!nRESET)
    begin
        par_err = 1'b0;
    end
    else if(par_chk_en)
    begin
      xor_result = ^(P_DATA);

      if(   ( !PAR_TYP && (xor_result == sampled_bit) )  ||  ( PAR_TYP && ((!xor_result) == sampled_bit) )   )
        par_err = 0;
      else
        par_err = 1;
    end
    else begin
        par_err = 1'b0;
        xor_result = xor_result;
    end
end


endmodule
