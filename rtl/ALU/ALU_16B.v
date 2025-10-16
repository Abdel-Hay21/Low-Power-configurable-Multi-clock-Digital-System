module ALU#(parameter fun_bits = 4, data_width = 8)(
input wire CLK, RST, Enable,
input wire [data_width-1:0] A,B,
input wire [fun_bits-1:0] ALU_FUN,
output reg [2*data_width-1:0] ALU_OUT,
output reg  OUT_VALID
);

always@(posedge CLK)
begin
    if(!RST)
    begin
        ALU_OUT <= 'd0;
        OUT_VALID <= 1'b0;
    end
    else if(Enable) begin
        if(OUT_VALID)
           OUT_VALID <= 1'b0;
        else begin
        case (ALU_FUN)
//Arithmetic operation//
              4'b0000:  ALU_OUT<= A+B;   //Addition
              4'b0001:  ALU_OUT<= A-B;   //subtraction
              4'b0010:  ALU_OUT<= A*B;   //Multiplication
              4'b0011:  ALU_OUT<= A/B;   //division
      
//Logical operation//
              4'b0100:  ALU_OUT<= A&B;      //AND
              4'b0101:  ALU_OUT<= A|B;      //OR
              4'b0110:  ALU_OUT<= ~(A&B);   //NAND
              4'b0111:  ALU_OUT<= ~(A|B);   //NOR
              4'b1000:  ALU_OUT<= (A^B);    //XOR
              4'b1001:  ALU_OUT<= ~(A^B);   //XNOR
      
//comparison operation//
              4'b1010: begin  //check Equal
                             if(A==B)
                                 ALU_OUT <= 16'd1;
                             else 
                                 ALU_OUT <= 16'd0;  end

              4'b1011: begin  //check greather than
                             if(A>B)
                                 ALU_OUT <= 16'd2;
                             else 
                                 ALU_OUT <= 16'd0; end

              4'b1100: begin  //check less than
                             if(A<B)
                                 ALU_OUT <= 16'd3;
                             else 
                                 ALU_OUT <= 16'd0; end
      
//Shift operation//
              4'b1101:  ALU_OUT<= (A >> 1);   //Shift Right
              4'b1110:  ALU_OUT<= (A << 1);   //Shift Left


              default:  ALU_OUT<=16'd0;  //Case ALU_FUN= 1111
      endcase
      OUT_VALID<= 1'b1;
        end
    end
end

endmodule
