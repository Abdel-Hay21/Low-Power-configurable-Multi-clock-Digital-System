module UART_RX_TOP(
input CLK, nRESET,
input wire RX_IN, PAR_EN, PAR_TYP,
input wire [5:0] Prescale,
output wire data_valid,
output wire [7:0] P_DATA,
output wire par_err, stp_err
);
wire  strt_glitch;
wire [3:0] bit_cnt;
wire [4:0] edge_cnt;
wire dat_samp_en, enable, deser_en, stp_chk_en, strt_chk_en, par_chk_en;
wire sampled_bit;

FSM_RX FSM_block(
.CLK(CLK), .nRESET(nRESET),
.RX_IN(RX_IN), .PAR_EN(PAR_EN), .par_err(par_err), .strt_glitch(strt_glitch), .stp_err(stp_err),
.bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(Prescale),
.dat_samp_en(dat_samp_en), .enable(enable), .deser_en(deser_en), .data_valid(data_valid),
.stp_chk_en(stp_chk_en), .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_en)
);

parity_Check parity_Check_block(
.PAR_TYP(PAR_TYP), .par_chk_en(par_chk_en), .sampled_bit(sampled_bit),
.P_DATA(P_DATA), .par_err(par_err), .nRESET(nRESET)
);

Stop_Check Stop_Check_block(
.stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), .stp_err(stp_err),
.nRESET(nRESET)
);

strt_Check strt_Check_block(
.strt_chk_en(strt_chk_en), .sampled_bit(sampled_bit), .strt_glitch(strt_glitch),
.nRESET(nRESET)
);

edge_bit_counter edge_bit_counter_block(
.enable(enable), .CLK(CLK), .nRESET(nRESET), .Prescale(Prescale),
.bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .PAR_EN(PAR_EN)
);

deserializer deserializer_block(
.deser_en(deser_en), .sampled_bit(sampled_bit), .bit_cnt(bit_cnt),
.Prescale(Prescale), .edge_cnt(edge_cnt), .P_DATA(P_DATA), .CLK(CLK)
);

data_sampling data_sampling_block(
.RX_IN(RX_IN), .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt),
.Prescale(Prescale), .sampled_bit(sampled_bit), .CLK(CLK)
);

endmodule