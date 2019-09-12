module REG_BIT(
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

module REG_BYTE(
  input RST,
  input CLK,
  input [7:0] DIN,
  output [7:0] DOUT
);

REG_BIT u_REG_BIT0(.RST(RST), .CLK(CLK), .D(DIN[0]), .Q(DOUT[0]));
REG_BIT u_REG_BIT1(.RST(RST), .CLK(CLK), .D(DIN[1]), .Q(DOUT[1]));
REG_BIT u_REG_BIT2(.RST(RST), .CLK(CLK), .D(DIN[2]), .Q(DOUT[2]));
REG_BIT u_REG_BIT3(.RST(RST), .CLK(CLK), .D(DIN[3]), .Q(DOUT[3]));
REG_BIT u_REG_BIT4(.RST(RST), .CLK(CLK), .D(DIN[4]), .Q(DOUT[4]));
REG_BIT u_REG_BIT5(.RST(RST), .CLK(CLK), .D(DIN[5]), .Q(DOUT[5]));
REG_BIT u_REG_BIT6(.RST(RST), .CLK(CLK), .D(DIN[6]), .Q(DOUT[6]));
REG_BIT u_REG_BIT7(.RST(RST), .CLK(CLK), .D(DIN[7]), .Q(DOUT[7]));

endmodule
