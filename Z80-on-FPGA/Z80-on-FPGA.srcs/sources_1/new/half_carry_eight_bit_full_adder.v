module half_carry_eight_bit_full_adder(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] S,
    output half_carry,
    output Cout
);
    
four_bit_full_adder LSB(.A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(half_carry));
four_bit_full_adder MSB(.A(A[7:4]), .B(B[7:4]), .Cin(half_carry), .S(S[7:4]), .Cout(Cout));

endmodule
