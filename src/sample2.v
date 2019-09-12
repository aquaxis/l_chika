module sample2(
  input [1:0] S,

  input [7:0] DA,
  input [7:0] DB,
  input [7:0] DC,
  input [7:0] DD,

  output reg [7:0] SEL
);

always @(*)
begin
  case ( S )
    2'b00: SEL <= DA;
    2'b01: SEL <= DB;
    2'b10: SEL <= DC;
    2'b11: SEL <= DD;
    default: SEL <= 0;
  endcase
end

endmodule
