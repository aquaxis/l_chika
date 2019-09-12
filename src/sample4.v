module CALC(
  input [7:0] A,
  input [7:0] B,
  output [7:0] Z
);
assign Z = A + B;
endmodule

module HOGE(
  input [7:0] DIN_A,
  input [7:0] DIN_B,
  output [7:0] DOUT
);

CALC u_CALC(
  .A(DIN_A),
  .B(DIN_B),
  .Z(DOUT)
);

endmodule
