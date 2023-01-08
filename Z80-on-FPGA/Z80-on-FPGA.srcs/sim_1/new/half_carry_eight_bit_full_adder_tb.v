`timescale 1ns / 10ps

module half_carry_eight_bit_full_adder_tb();

reg [7:0]   A   = 8'd0;
reg [7:0]   B   = 8'd0;
reg         Cin = 1'b0;
wire        HC;
wire [7:0]  S;
wire        Cout;

always begin
    #10
    A = 8'd0;
    B = 8'd0;
    Cin = 1'b1;
    #10
    A = 8'd5;
    B = 8'd5;
    Cin = 1'b0;
    #10
    A = 8'd5;
    B = 8'd5;
    Cin = 1'b1;
    #10
    A = 8'd10;
    B = 8'd5;
    Cin = 1'b0;
    #10
    A = 8'd10;
    B = 8'd5;
    Cin = 1'b1;
    #10
    A = 8'd200;
    B = 8'd55;
    Cin = 1'b0;
    #10
    A = 8'd200;
    B = 8'd55;
    Cin = 1'b1;
    #10
    A = 8'd200;
    B = 8'd200;
    Cin = 1'b1;
    #10
    A = 8'd255;
    B = 8'd255;
    Cin = 1'b1;
    #10
    A = 8'd0;
    B = 8'd0;
    Cin = 1'b0;
end

half_carry_eight_bit_full_adder uut(.A(A), .B(B), .Cin(Cin), .half_carry(HC), .S(S), .Cout(Cout));

endmodule
