`timescale 1ps/1ps
module D_FF (q, d, reset, clk);
  output reg q;
  input d, reset, clk;

  always_ff @(posedge clk or negedge reset)
  if (!reset)
    q <= 0;
  else
    q <= d;
endmodule
