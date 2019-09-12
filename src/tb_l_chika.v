`timescale 1ns / 1ps

module TESTBENCH;

  reg RST_N;
  reg CLK;

  wire LED;

  localparam TIME10N = 10;

  // Clock
  always begin
    #(TIME10N/2)  CLK <= ~CLK;
  end

  initial begin
    CLK = 0;
    RST_N = 0;
    #100
    RST_N = 1;

    #1000000000;
    #1000000000;
    #1000000000;
    #1000000000;
    #1000000000;
    #1000000000;
    #1000000000;
    #1000000000;
    #1000000000;
    #1000000000;

    $finish();
  end

  L_CHIKA u_L_CHIKA(
    .RST_N(RST_N),
    .CLK(CLK),
    .LED(LED)
  );

endmodule
