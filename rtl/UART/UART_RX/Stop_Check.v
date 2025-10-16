module Stop_Check(
input wire nRESET,
input wire stp_chk_en, sampled_bit,
output reg stp_err
);

always@(*)
begin
    if(!nRESET)
    begin
        stp_err = 1'b0;
    end
    else if(stp_chk_en)
    begin
      if(sampled_bit)
      stp_err = 1'b0;
      else
      stp_err = 1'b1;
    end
    else
      stp_err = 1'b0;

end


endmodule
