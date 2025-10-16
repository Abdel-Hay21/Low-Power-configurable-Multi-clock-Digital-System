module SYS_CTRL#(parameter out_width = 16, parameter address_width = 4, parameter fun_width = 4, parameter data_width = 8)(

input wire CLK, RST,

output reg WrEn, RdEn,
output reg [address_width-1:0] Address,
output reg [data_width-1:0] WrData,
input wire [data_width-1:0] RdData,
input wire RdData_Valid,

output reg CLK_EN,

output reg [fun_width-1:0] ALU_FUN,
output reg EN,
input wire [out_width-1:0] ALU_OUT,
input wire OUT_Valid,

output reg TX_D_VLD,
output reg [7:0] TX_P_DATA,
input wire FIFO_FULL,


input wire [7:0] RX_P_DATA,
input wire RX_D_VLD
);

reg ALU_Part1_Done;
reg [2:0] state;

parameter Wait_Opcode = 3'd0;
parameter Wr_Addr = 3'd1; parameter Wr_Data = 3'd2;
parameter RD_Addr = 3'd3;
parameter Operand_A = 3'd4; parameter Operand_B = 3'd5; parameter FUN = 3'd6;

always@(posedge CLK or negedge RST)
begin
    if(!RST)
    begin
        WrEn <= 1'b0; RdEn <= 1'b0; Address <= 'd0; WrData <= 'd0;
        CLK_EN <= 1'b0;
        ALU_FUN <= 'd0; EN <= 1'b0;
        TX_D_VLD <= 1'b0; TX_P_DATA <= 8'd0;
        state <= Wait_Opcode;
        ALU_Part1_Done <= 1'b0;
    end
    else begin
        case(state)

        Wait_Opcode: begin

            WrEn <= 1'b0; RdEn <= 1'b0;
            CLK_EN <= 1'b0; EN <= 1'b0; TX_D_VLD <= 1'b0;

            if(RX_D_VLD)
            begin
                case(RX_P_DATA)
                8'hAA: state <= Wr_Addr;
                8'hBB: state <= RD_Addr;
                8'hCC: state <= Operand_A;
                8'hDD: state <= FUN;
                default: state <= Wait_Opcode;
                endcase
            end
        end

        Wr_Addr: begin
            if(RX_D_VLD)
            begin
               Address <= RX_P_DATA[address_width-1:0];
               state <= Wr_Data;
            end
        end

        Wr_Data: begin
            if(RX_D_VLD)
            begin
                WrData <= RX_P_DATA;
                WrEn <= 1'b1;  RdEn <= 1'b0;
                state <= Wait_Opcode;
            end
        end

        RD_Addr: begin
            if(RX_D_VLD)
            begin
                Address <= RX_P_DATA[address_width-1:0];
                WrEn <= 1'b0;  RdEn <= 1'b1;
            end

            if(RdData_Valid && !FIFO_FULL)
            begin
                TX_P_DATA <= RdData;
                TX_D_VLD <= 1'b1;
                state <= Wait_Opcode;
            end
        end

        Operand_A: begin
            if(RX_D_VLD)
            begin
                WrEn <= 1'b1;  RdEn <= 1'b0;
                Address <= 'd0;
                WrData <= RX_P_DATA;
                state <= Operand_B;
            end
        end

        Operand_B: begin
            if(RX_D_VLD)
            begin
                WrEn <= 1'b1;  RdEn <= 1'b0;
                Address <= 'd1;
                WrData <= RX_P_DATA;
                state <= FUN;
            end
        end

        FUN: begin
            if(RX_D_VLD)
            begin
                WrEn <= 1'b0;  RdEn <= 1'b0;
                ALU_FUN <= RX_P_DATA[fun_width-1:0];
                CLK_EN <= 1'b1; EN <= 1'b1;
            end

            if(OUT_Valid && !FIFO_FULL && !ALU_Part1_Done)
            begin
                CLK_EN <= 1'b0; EN <= 1'b0;
                TX_P_DATA <= ALU_OUT[7:0];
                TX_D_VLD <= 1'b1;
                ALU_Part1_Done <= 1'b1;
            end

            else if(ALU_Part1_Done)
            begin
                ALU_Part1_Done <= 1'b0;
                TX_P_DATA <= ALU_OUT[15:8];
                TX_D_VLD <= 1'b1;
                state <= Wait_Opcode;
            end
        end

        default: state <= Wait_Opcode;
        endcase
    end
end

endmodule
