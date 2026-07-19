module alu #(parameter WIDTH=8)(
  input [WIDTH-1:0]A,
  input [WIDTH-1:0]B,
  input [3:0]opcode,
  output reg [WIDTH-1:0]result,
  output reg ZF,
  output reg CF,
  output reg OF);
  always @(*) begin
    result=0;
    ZF=0;
    CF=0;
  	OF=0;
    case(opcode)
      4'b0000:begin
        {CF,result}=A+B;
        OF=(~(A[WIDTH-1]^B[WIDTH-1])&(A[WIDTH-1]^result[WIDTH-1]));
      end
      4'b0001:begin
        {CF,result}=A-B;
        OF=((A[WIDTH-1]^B[WIDTH-1])&(A[WIDTH-1]^result[WIDTH-1]));
      end
      4'b0010:begin
        result=A&B;
      end
      4'b0011:begin
        result=A|B;
      end
      4'b0100:begin
        result=A^B;
      end
      4'b0101:begin
        result=~A;
      end
      4'b0110:begin
        result=A<<1;
      end
      4'b0111:begin
        result=A>>1;
      end
      default:begin
        result=0;
      end
    endcase
    if (result==0) begin
      ZF=1;
  end
  end
endmodule
