module mux(
input wire [1:0] mux_sel,
input wire ser_data,par_bit,
output reg TX_OUT
);
parameter start_bit= 1'b0;
parameter stop_bit= 1'b1;
parameter start_mux= 2'b00;
parameter stop_mux= 2'b01;
parameter serial_mux= 2'b10;
parameter parity_mux= 2'b11;
always@(*)
begin
    case (mux_sel)

      start_mux: TX_OUT=start_bit;

      stop_mux: TX_OUT=stop_bit;

      serial_mux: TX_OUT=ser_data;

      parity_mux: TX_OUT=par_bit;
 
    default: TX_OUT=1'b1;

    endcase
end
    
endmodule
