module Register_file_8_16#(parameter address_width = 4, parameter data_width = 8)(
input wire WrEn, RdEn, CLK, RST,
input wire [data_width-1:0] WrData,
input wire [address_width-1:0] Address,

output wire [data_width-1:0] REG0, REG1, REG2, REG3,
output reg [data_width-1:0] RdData,
output reg RdData_Valid
);
reg [data_width-1:0] Reg_File [0:(address_width*address_width - 1)];
integer i;

assign REG0 = Reg_File[0];
assign REG1 = Reg_File[1];
assign REG2 = Reg_File[2];
assign REG3 = Reg_File[3];

always@(posedge CLK or negedge RST)
begin
 if (!RST)
    begin
      RdData_Valid <= 1'b0;

      Reg_File[0] <= 'd0;
      Reg_File[1] <= 'd0;
      Reg_File[2] <= 'b100000_0_1;
      Reg_File[3] <= 'b100000;
      for(i=4; i<(address_width*address_width - 1); i=i+1)
          Reg_File[i] <= 'd0;
    end 
 else
    begin
      if(RdData_Valid)
         RdData_Valid <= 1'b0;

      if(WrEn && !RdEn)
        begin
          Reg_File[Address] <= WrData;
        end

      else if(!WrEn && RdEn)
        begin
          RdData <= Reg_File[Address];
          RdData_Valid <= 1'b1;
        end
   end
end

endmodule