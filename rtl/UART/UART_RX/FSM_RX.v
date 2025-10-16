module FSM_RX(
input CLK,nRESET,
input RX_IN, PAR_EN, par_err, strt_glitch, stp_err,
input [3:0] bit_cnt,
input [4:0] edge_cnt,
input [5:0] Prescale,
output reg dat_samp_en, enable, deser_en, data_valid, stp_chk_en, strt_chk_en, par_chk_en
);
reg [2:0] state;

parameter s0= 3'b000; //idle
parameter s1= 3'b001; //start
parameter s2= 3'b010; //data
parameter s3= 3'b011; //parity
parameter s4= 3'b100; //stop

always@(posedge CLK or negedge nRESET)
begin
    if(!nRESET)
    begin
        dat_samp_en<=1'b0; stp_chk_en<=1'b0; enable<=1'b0; deser_en<=1'b0; data_valid<=1'b0; strt_chk_en<=1'b0; par_chk_en<=1'b0;
        state<=s0;
    end
    else begin

        case (state)
        s0:
        begin
            dat_samp_en<=1'b0; enable<=1'b0; deser_en<=1'b0; data_valid<=data_valid; stp_chk_en<=1'b0; strt_chk_en<=1'b0; par_chk_en<=1'b0;
            if(!RX_IN)
            begin
                state<= s1;
                dat_samp_en<=1'b1; enable<=1'b1;
                data_valid<=1'b0;
            end
            else begin
                state<= s0;
            end
        end


        s1:
        begin
            data_valid<=1'b0; stp_chk_en<= 1'b0;

            if(bit_cnt==4'b0000 && edge_cnt == (Prescale/2 + 1))
            begin
                strt_chk_en<=1'b1;
            end

            if(bit_cnt==4'b0000 && edge_cnt == (Prescale-1)  && strt_glitch)
            begin
                enable<=1'b0;
                dat_samp_en<=1'b0;
                state<= s0;
            end

            if((edge_cnt == Prescale-1) && !strt_glitch)
            begin
                deser_en <= 1'b1;
                state<= s2;
            end
        end


        s2:
        begin
            strt_chk_en<=1'b0;
 
            if((edge_cnt == Prescale-1) && bit_cnt==4'd8)
            begin
                deser_en <= 1'b0;
                if(PAR_EN)
                state<= s3;
                else
                state<= s4;
            end
        end


        s3:
        begin
            if(bit_cnt==4'd9 && edge_cnt == (Prescale/2 + 1))
            begin
                par_chk_en<= 1'b1;
            end

            if(bit_cnt==4'd9 && edge_cnt == (Prescale-1)  && par_err)
            begin
                enable<= 1'b0;
                dat_samp_en<= 1'b0;
                state<= s0;
            end

            if((edge_cnt == Prescale-1) && !par_err)
            begin
                state<= s4;
            end
        end


        s4:
        begin
            par_chk_en<=1'b0;

            if(edge_cnt == (Prescale/2 + 1))
            begin
                stp_chk_en<= 1'b1;
            end

            if(edge_cnt == (Prescale-1)  && stp_err)
            begin
                data_valid<=1'b0;
                enable<= 1'b0;
                dat_samp_en<= 1'b0;
                state<= s0;
            end  

            if((edge_cnt == (Prescale/2 + 2)) && !stp_err)
            begin
                data_valid<=1'b1;
            end

            if((edge_cnt == (Prescale - 1)) && !stp_err)
            begin
                if(!RX_IN)
                begin
                   state<= s1;
                   enable<= 1'b1; dat_samp_en<= 1'b1;
                end
                else begin
                   state<= s0;
                   enable<= 1'b0; dat_samp_en<= 1'b0;
                end
            end          
        end
        endcase
    end
end
endmodule
