`timescale 1ns / 1ps

module TESTBENCH0;

  reg RST;
  reg CLK;

  reg [7:0]  DIN_A;
  reg [7:0]  DIN_B;
  wire [7:0] DOUT;

  localparam TIME10N = 10;

  // Clock
  always begin
    #(TIME10N/2) CLK <= ~CLK;
  end

  initial begin
    CLK = 0;
    RST = 1;
    #100
    RST = 0;

    @(posedge CLK);
    $display("DOUT: %d", DOUT);

    DIN_A = 8'd1;
    DIN_B = 8'd2;
    @(posedge CLK);
    $display("DOUT: %d", DOUT);

    DIN_A = 8'd3;
    DIN_B = 8'd4;
    @(posedge CLK);
    $display("DOUT: %d", DOUT);

    DIN_A = 8'd5;
    DIN_B = 8'd6;
    @(posedge CLK);
    $display("DOUT: %d", DOUT);

    DIN_A = 8'd7;
    DIN_B = 8'd8;
    @(posedge CLK);
    $display("DOUT: %d", DOUT);

    repeat (5) @(posedge CLK);

    $finish();
  end

  wire [7:0] DOUT_CALC;

  HOGE u_HOGE(
    .DIN_A ( DIN_A     ),
    .DIN_B ( DIN_B     ),
    .DOUT  ( DOUT_CALC )
  );

  REG_BYTE u_REG_BYTE(
    .RST  ( RST       ),
    .CLK  ( CLK       ),
    .DIN  ( DOUT_CALC ),
    .DOUT ( DOUT      )
  );

endmodule
