`timescale 1ns / 1ps

module TESTBENCH1;

  reg RST;
  reg CLK;

  reg [7:0] DIN_A;
  reg [7:0] DIN_B;
  wire [7:0] DOUT;

  localparam TIME10N = 10;

  // Clock
  always begin
    #(TIME10N/2)  CLK <= ~CLK;
  end

  task TASK_CALC(
    input [7:0] din_a,
    input [7:0] din_b
  );
  begin
    DIN_A = din_a;
    DIN_B = din_b;
    @(posedge CLK);
    $display("DOUT: %d", DOUT);
  end
  endtask

  initial begin
    CLK = 0;
    RST = 1;
    #100
    RST = 0;

    TASK_CALC(1, 2);
    TASK_CALC(3, 4);
    TASK_CALC(5, 6);
    TASK_CALC(7, 8);

    repeat (5) @(posedge CLK);

    $finish();
  end

  wire [7:0] DOUT_CALC;

  HOGE u_HOGE(
    .DIN_A(DIN_A),
    .DIN_B(DIN_B),
    .DOUT(DOUT_CALC)
  );

  REG_BYTE u_REG_BYTE(
    .RST(RST),
    .CLK(CLK),
    .DIN(DOUT_CALC),
    .DOUT(DOUT)
  );

endmodule
