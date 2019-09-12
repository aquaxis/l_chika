module sample1(
  input [1:0] S_IN,

  input [7:0] DA_IN,
  input [7:0] DB_IN,
  input [7:0] DC_IN,
  input [7:0] DD_IN,

  output [7:0] Z
);

function [7:0] SEL(
  input [1:0] S,
  input [7:0] DA,
  input [7:0] DB,
  input [7:0] DC,
  input [7:0] DD
);
begin
  case ( S )
    2'b00: SEL = DA;
    2'b01: SEL = DB;
    2'b10: SEL = DC;
    2'b11: SEL = DD;
    default: SEL = 0;
  endcase
end
endfunction

assign Z = SEL( S_IN, DA_IN, DB_IN, DC_IN, DD_IN);
endmodule
