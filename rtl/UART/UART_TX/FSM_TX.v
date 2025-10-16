module FSM_TX(
input wire CLK,nRESET,
input wire Data_Valid,PAR_EN,ser_done,
output reg [1:0] mux_sel,
output reg busy,ser_en
);
parameter s0= 3'b000; //idle state
parameter s1= 3'b001; //start state
parameter s2= 3'b010; //data state
parameter s3= 3'b011; //parity state
parameter s4= 3'b100; //stop state
reg [2:0] state;

always@(posedge CLK or negedge nRESET)
begin
    if(!nRESET)
    begin
        state<=s0;
        busy<=1'b0;
        mux_sel<=2'b01;
        ser_en<=1'b0;
    end
    else
    begin
       case (state)
        s0:
        begin
            ser_en<=1'b0;
            busy<=1'b0;
            mux_sel<=2'b01;
            if(Data_Valid)
            begin
               state<=s1;
               busy<=1'b1;
               mux_sel<=2'b00;
               ser_en<=1'b1;
            end
        end

        s1:
        begin
            state<=s2;
            ser_en<=1'b1; 
            busy<=1'b1;
            mux_sel<=2'b10;
        end

        s2:
        begin
            if(ser_done && PAR_EN)
            begin
               state<=s3;
               busy<=1'b1;  
               mux_sel<=2'b11;
               ser_en<=1'b0;
            end

            if(ser_done && !(PAR_EN))
            begin
               state<=s4;
               busy<=1'b1;  
               mux_sel<=2'b01;
               ser_en<=1'b0;
            end
        end

        s3:
        begin
               state<=s4;
               busy<=1'b1;
               mux_sel<=2'b01;
               ser_en<=1'b0;    
        end

        s4:
        begin
            if(Data_Valid)
            begin
               state<=s1;
               ser_en<=1'b1; 
               busy<=1'b1;
               mux_sel<=2'b00;
            end
            else
            begin
               state<=s0;
               ser_en<=1'b0;
               busy<=1'b0;
               mux_sel<=2'b01;
            end
        end

        default:
        begin
            state<=s0;
        end
       endcase
    end
end
endmodule
