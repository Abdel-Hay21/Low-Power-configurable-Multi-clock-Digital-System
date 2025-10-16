module DATA_SYNC#(
parameter BUS_WIDTH = 8,
parameter NUM_STAGES = 2
)(
input wire [BUS_WIDTH-1:0] unsync_bus,
input wire bus_enable, CLK, RST,
output reg [BUS_WIDTH-1:0] sync_bus,
output reg enable_pulse
);
reg [0:NUM_STAGES-1] ff;
reg Pulse_Gen;
always@(posedge CLK or negedge RST)
begin
    if(!RST)
    begin
        enable_pulse <= 1'b0;
        sync_bus <= 'd0;
        ff <= 'd0;
        Pulse_Gen <= 1'b0;
    end
    else begin
        ff[0] <= bus_enable;
        for(int i=1; i<NUM_STAGES; i++)
        begin
            ff[i] <= ff[i-1];
        end

        Pulse_Gen <= ff[NUM_STAGES-1];
        enable_pulse <= (!Pulse_Gen) & (ff[NUM_STAGES-1]);

        if((!Pulse_Gen) && (ff[NUM_STAGES-1]))
           sync_bus <= unsync_bus;
        else
           sync_bus <= sync_bus;
    end


end
endmodule