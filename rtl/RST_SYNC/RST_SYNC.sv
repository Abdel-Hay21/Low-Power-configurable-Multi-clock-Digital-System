module RST_SYNC#(
parameter NUM_STAGES = 2
)(
input wire RST, CLK,
output wire SYNC_RST
);
logic [0:NUM_STAGES-1] ff;
always@(posedge CLK or negedge RST)
begin
    if(!RST)
    begin
        ff <= 'd0;
    end
    else begin
        ff[0] <= 1'b1;
        for(int i=1; i<NUM_STAGES; i++)
        begin
            ff[i] <= ff[i-1];
        end
    end
end


assign SYNC_RST = ff[NUM_STAGES - 1];
endmodule