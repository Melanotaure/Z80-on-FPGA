`timescale 1ns / 10ps

module four_bit_full_adder_tb();

reg     [3:0]   A;
reg     [3:0]   B;
reg             Cin;
wire    [3:0]   S;
wire            Cout;

always begin
    #10
    A   = 4'd0;
    B   = 4'd0;
    Cin = 1'b0;
    #10
    Cin = 1'b1;
    #10
    A   = 4'd5;
    B   = 4'd8;
    Cin = 1'b1;
    #10
    A   = 4'd15;
    B   = 4'd15;
    Cin = 1'b0;
    #10
    A   = 4'd15;
    B   = 4'd15;
    Cin = 1'b1;        
end

four_bit_full_adder uut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

endmodule
