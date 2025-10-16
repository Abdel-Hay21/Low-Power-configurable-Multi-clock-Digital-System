module PULSE_GEN(
input wire RST, CLK, LVL_SIG,
output reg PULSE_SIG
);
reg pulse_done;

always@(posedge CLK, negedge RST)
begin
    if(!RST)
    begin
       PULSE_SIG <= 1'b0;
       pulse_done <= 1'b0;
    end
    else begin
        if(pulse_done)
        begin
            PULSE_SIG <= 1'b0;
            if(!LVL_SIG)
               pulse_done <= 1'b0;
        end

        else if(!pulse_done && LVL_SIG)
        begin
            PULSE_SIG <= 1'b1;
            pulse_done <= 1'b1;
        end
    end
end


endmodule