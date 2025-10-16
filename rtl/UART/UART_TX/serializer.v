module serializer(
    input wire CLK,nRESET,
    input wire ser_en,
    input wire [7:0] P_DATA,
    output reg ser_data,ser_done,
    output reg [7:0] P_DATA_save
);
reg [2:0] count;

always@(posedge CLK or negedge nRESET)
begin
    if(!nRESET)
    begin
       count<=3'b000;
       ser_done<=1'b0;
       ser_data<=1'b0;
       P_DATA_save<=8'd0;
    end
    else
    begin
        if(count==3'b000)
          begin
            ser_done<=0;
            P_DATA_save<=P_DATA;
          end

        if(count==3'b111)
        begin
           ser_data<=P_DATA_save[3'b111];
           ser_done<=1;
           count<=3'b000;
        end
        else if(ser_en && !ser_done)
        begin
            ser_data<=P_DATA_save[count];
            count<=count+3'b001;
        end
    end

end
endmodule
