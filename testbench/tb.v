`timescale 1ns/1ns
module tb;
  parameter WIDTH=8;
  reg [WIDTH-1:0]A;
  reg [WIDTH-1:0]B;
  reg[3:0]opcode;
  wire [WIDTH-1:0]result;
  wire ZF;
  wire CF;
  wire OF;
  alu #(WIDTH) dut (.A(A),.B(B),.opcode(opcode),.result(result),
           .ZF(ZF),.CF(CF),.OF(OF));
  initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0,tb);
    $monitor("Time =%0t A=%b B=%b opcode=%b result=%b ZF=%b CF=%b OF=%b",$time,A,B,opcode,result,ZF,CF,OF);
    //addition
    A=8'd5;
    B=8'd2;
    opcode=4'b0000;//7
    #10 A=8'd255;
    B=8'd1;
    opcode=4'b0000;//carry
    #10 A=8'd127;
    B=8'd1;
    opcode=4'b0000;//overflow
    //subtraction
    #10 A=8'd5;
    B=8'd2;
    opcode=4'b0001;//3
    #10 A=8'd2;
    B=8'd5;
    opcode=4'b0001;//negative
    #10 A=8'd128;
    B=8'd1;
    opcode=4'b0001;//overflow
    //AND
    #10 A=8'b10101010;
    B=8'b11001100;
    opcode=4'b0010;
    //OR
    #10
    opcode=4'b0011;
    //XOR
    #10
    opcode=4'b0100;
    //NOT
    #10
    opcode=4'b0101;
    //LEFTSHIFT
    #10 
    opcode=4'b0110;
    //RIGHT SHIFT
    #10
    opcode=4'b0111;
    ///zero flag
    #10 A=8'd5;
    B=8'd5;
    opcode=4'b0001;
    //DEFAULT
    #10 A=8'd10;
    B=8'd20;
    opcode=4'b1111;
    
    #10 $finish;
  end
endmodule
