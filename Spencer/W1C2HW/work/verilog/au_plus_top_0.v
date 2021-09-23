/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_plus_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    led = 8'h00;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    io_led[0+0+0-:1] = io_dip[0+0+0-:1];
    io_led[0+1+0-:1] = io_dip[0+1+0-:1] & io_dip[0+2+0-:1];
    io_led[0+2+0-:1] = (^io_dip[0+3+3-:4]);
    io_led[0+3+0-:1] = (&((((io_dip[8+0+0-:1] + io_dip[8+1+0-:1]) + (io_dip[8+2+0-:1] + io_dip[8+3+0-:1])) + ((io_dip[8+4+0-:1] + io_dip[8+5+0-:1]) + (io_dip[8+6+0-:1] + io_dip[8+7+0-:1]))) ^ 4'hd));
  end
endmodule
