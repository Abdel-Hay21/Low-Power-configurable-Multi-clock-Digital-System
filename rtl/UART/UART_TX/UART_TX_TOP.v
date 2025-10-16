module UART_TX_TOP(
input wire CLK,nRESET,
input wire [7:0] P_DATA,
input wire Data_Valid,PAR_EN,PAR_TYP,
output wire TX_OUT,busy
);

wire ser_done,ser_en;
wire [1:0] mux_sel;
wire ser_data,par_bit;
wire [7:0] P_DATA_save;


FSM_TX linkFSM(
.CLK(CLK), .nRESET(nRESET),
.Data_Valid(Data_Valid), .PAR_EN(PAR_EN),
.busy(busy),
.mux_sel(mux_sel), .ser_en(ser_en), .ser_done(ser_done)
);

mux linkmux(
.mux_sel(mux_sel),  .ser_data(ser_data),   .par_bit(par_bit),
.TX_OUT(TX_OUT)
);

parity_calc linkparity_calc(
.P_DATA_save(P_DATA_save), .PAR_TYP(PAR_TYP),
.par_bit(par_bit)
);

serializer linkserializer(
.CLK(CLK), .nRESET(nRESET),
.P_DATA(P_DATA), .ser_en(ser_en), .ser_data(ser_data), .ser_done(ser_done),
.P_DATA_save(P_DATA_save)
);


endmodule
