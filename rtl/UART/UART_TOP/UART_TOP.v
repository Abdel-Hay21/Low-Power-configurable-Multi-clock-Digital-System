module UART_TOP(
input wire TX_CLK, RX_CLK, RST,
input wire [5:0] Prescale,
input wire [7:0] TX_IN_P,
input wire TX_IN_V,
output wire TX_OUT_S, TX_OUT_V,
input wire RX_IN_S,
output wire [7:0] RX_OUT_P,
output wire RX_OUT_V,
output wire parity_error,
output wire framing_error,
input wire PAR_TYP, PAR_EN
);


UART_TX_TOP UART_Tx(
.CLK(TX_CLK), .nRESET(RST),
.P_DATA(TX_IN_P),
.Data_Valid(TX_IN_V), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
.TX_OUT(TX_OUT_S), .busy(TX_OUT_V)
);


UART_RX_TOP UART_Rx(
.CLK(RX_CLK), .nRESET(RST),
.RX_IN(RX_IN_S), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
.Prescale(Prescale),
.data_valid(RX_OUT_V),
.P_DATA(RX_OUT_P),
.par_err(parity_error),
.stp_err(framing_error)
);

endmodule