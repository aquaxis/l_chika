module REG_BIT2(
  input RST,
  input CLK,
  input D,
  output reg Q
);
always @(posedge CLK or posedge RST) begin
  if(RST) begin
    Q <= 1'b0;
  end else begin
    Q <= D;
  end
end
endmodule

module REG_BYTE2(
  input RST,
  input CLK,
  input [7:0] DIN,
  output [7:0] DOUT
);

generate
  genvar i;
  for (i=0; i<8; i=i+1)
  begin: DATA_LOOP
    REG_BIT2 u_REG_BIT2(.RST(RST), .CLK(CLK), .D(DIN[i]), .Q(DOUT[i]));
  end
endgenerate

endmodule
