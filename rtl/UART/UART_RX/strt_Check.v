module strt_Check(
input wire nRESET,
input wire strt_chk_en, sampled_bit,
output reg strt_glitch
);

always@(*)
begin
    if(!nRESET)
    begin
        strt_glitch = 1'b0;
    end
    else if(strt_chk_en)
    begin
      if(!sampled_bit)
         strt_glitch = 1'b0;
      else
         strt_glitch = 1'b1;
    end
    else
      strt_glitch = 1'b0;

end

endmodule
