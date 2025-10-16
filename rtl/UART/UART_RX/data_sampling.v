module data_sampling(
input wire CLK,
input RX_IN,dat_samp_en,
input wire [4:0] edge_cnt,
input wire [5:0] Prescale,
output reg sampled_bit
);
reg [2:0] saving;

always@(posedge CLK)
begin
    if(dat_samp_en)
    begin
        if(edge_cnt == (Prescale/2 -1))
           saving[0] = RX_IN;

        if(edge_cnt == (Prescale/2))
           saving[1] = RX_IN;

        if(edge_cnt == (Prescale/2 +1))
           saving[2] = RX_IN;    
    end


    if(dat_samp_en && (edge_cnt == (Prescale/2 +1)))     
    begin
        if(saving[0] + saving[1] + saving[2] > 3'b001)
            sampled_bit = 1'b1;
        else
            sampled_bit = 1'b0;
    end
end


endmodule
