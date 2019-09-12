module sample0(
  input [7:0] A,
  input [7:0] B,

  output [7:0] Z0,
  output [7:0] Z1
);

assign Z0 = A + B;
assign Z1 = A * B;

endmodule
