module edge_bit_counter(
input wire enable, CLK, nRESET,PAR_EN,
input wire [5:0] Prescale,
output reg [3:0] bit_cnt,
output reg [4:0] edge_cnt
);

always@(posedge CLK or negedge nRESET)
begin
    if(!nRESET)
    begin
        bit_cnt <= 4'd0;
        edge_cnt <= 5'd0;
    end
    else if(!enable)
    begin
        bit_cnt <= 4'd0;
        edge_cnt <= 5'd0;
    end
    else if(enable)
    begin
        edge_cnt <= edge_cnt + 5'd1;

        if(edge_cnt == (Prescale-1))
        begin
            edge_cnt <= 5'd0;
            bit_cnt <= bit_cnt + 4'd1;
        end

        if( (PAR_EN) && (bit_cnt==4'd10) && (edge_cnt==(Prescale-6'd1)) )
        begin
            bit_cnt <= 4'd0;  edge_cnt <= 5'd0;
        end
        
        if( (!PAR_EN) && (bit_cnt==4'd9) && (edge_cnt==(Prescale-6'd1)) )
        begin
            bit_cnt <= 4'd0;  edge_cnt <= 5'd0;
        end
    end
end
endmodule
