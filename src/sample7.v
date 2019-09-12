module ADD(
  input [7:0] A,
  input [7:0] B,
  output [7:0] Z
);
assign Z = A + B;
endmodule

module SUB(
  input [7:0] A,
  input [7:0] B,
  output [7:0] Z
);
assign Z = A - B;
endmodule

module HOGE2(
  input [7:0] DIN_A,
  input [7:0] DIN_B,
  output [7:0] DOUT
);

parameter CALC = 0;

generate
if ( CALC == 0 ) begin
  ADD u_ADD( .A(DIN_A), .B(DIN_B), .Z(DOUT));
end else begin
  SUB u_SUB( .A(DIN_A), .B(DIN_B), .Z(DOUT));
end

endgenerate
endmodule
