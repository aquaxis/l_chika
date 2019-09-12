module L_CHIKA(
  input RST_N,
  input CLK,

  output reg LED
);

  reg [31:0] count;
  always @(posedge CLK or negedge RST_N) begin
    if(!RST_N) begin
      count <= 0;
    end else begin
      if(count >= ((100000000/2) - 1)) begin
        count <= 0;
      end else begin
        count <= count + 1;
      end
    end
  end

  wire led_toggle;
  assign led_toggle = (count == 0)?1'b1:1'b0;

  always @(posedge CLK or negedge RST_N) begin
    if(!RST_N) begin
      LED <= 0;
    end else begin
      if(led_toggle) begin
        LED <= ~LED;
      end
    end
  end

endmodule