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
    output reg [11:0] color,
    output reg h_sync,
    output reg v_sync
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [10-1:0] M_timer_x;
  wire [10-1:0] M_timer_y;
  wire [1-1:0] M_timer_h_sync;
  wire [1-1:0] M_timer_v_sync;
  wire [1-1:0] M_timer_on_screen;
  ind_sta_vga_timer_2 timer (
    .clk(clk),
    .rst(rst),
    .x(M_timer_x),
    .y(M_timer_y),
    .h_sync(M_timer_h_sync),
    .v_sync(M_timer_v_sync),
    .on_screen(M_timer_on_screen)
  );
  wire [1-1:0] M_cpu0_write;
  wire [8-1:0] M_cpu0_address;
  wire [12-1:0] M_cpu0_dout;
  wire [10-1:0] M_cpu0_xo;
  wire [10-1:0] M_cpu0_yo;
  wire [1-1:0] M_cpu0_ready;
  reg [1-1:0] M_cpu0_start;
  reg [10-1:0] M_cpu0_x;
  reg [10-1:0] M_cpu0_y;
  reg [1-1:0] M_cpu0_recieved;
  cpu_3 cpu0 (
    .clk(clk),
    .rst(rst),
    .start(M_cpu0_start),
    .x(M_cpu0_x),
    .y(M_cpu0_y),
    .recieved(M_cpu0_recieved),
    .write(M_cpu0_write),
    .address(M_cpu0_address),
    .dout(M_cpu0_dout),
    .xo(M_cpu0_xo),
    .yo(M_cpu0_yo),
    .ready(M_cpu0_ready)
  );
  wire [1-1:0] M_cpu1_write;
  wire [8-1:0] M_cpu1_address;
  wire [12-1:0] M_cpu1_dout;
  wire [10-1:0] M_cpu1_xo;
  wire [10-1:0] M_cpu1_yo;
  wire [1-1:0] M_cpu1_ready;
  reg [1-1:0] M_cpu1_start;
  reg [10-1:0] M_cpu1_x;
  reg [10-1:0] M_cpu1_y;
  reg [1-1:0] M_cpu1_recieved;
  cpu_3 cpu1 (
    .clk(clk),
    .rst(rst),
    .start(M_cpu1_start),
    .x(M_cpu1_x),
    .y(M_cpu1_y),
    .recieved(M_cpu1_recieved),
    .write(M_cpu1_write),
    .address(M_cpu1_address),
    .dout(M_cpu1_dout),
    .xo(M_cpu1_xo),
    .yo(M_cpu1_yo),
    .ready(M_cpu1_ready)
  );
  
  wire [2-1:0] M_n_out;
  reg [2-1:0] M_n_in;
  arbiter_4 n (
    .in(M_n_in),
    .out(M_n_out)
  );
  
  wire [2-1:0] M_o_out;
  reg [2-1:0] M_o_in;
  arbiter_4 o (
    .in(M_o_in),
    .out(M_o_out)
  );
  
  wire [10-1:0] M_vga_screen_counter_x;
  wire [10-1:0] M_vga_screen_counter_y;
  reg [1-1:0] M_vga_screen_counter_clk;
  vga_screen_counter_5 vga_screen_counter (
    .rst(rst),
    .clk(M_vga_screen_counter_clk),
    .x(M_vga_screen_counter_x),
    .y(M_vga_screen_counter_y)
  );
  
  wire [12-1:0] M_frame_buffer_read_data;
  reg [20-1:0] M_frame_buffer_waddr;
  reg [12-1:0] M_frame_buffer_write_data;
  reg [1-1:0] M_frame_buffer_write_en;
  reg [20-1:0] M_frame_buffer_raddr;
  simple_dual_ram_6 #(.DEPTH(21'h100000), .SIZE(4'hc)) frame_buffer (
    .rclk(clk),
    .wclk(clk),
    .waddr(M_frame_buffer_waddr),
    .write_data(M_frame_buffer_write_data),
    .write_en(M_frame_buffer_write_en),
    .raddr(M_frame_buffer_raddr),
    .read_data(M_frame_buffer_read_data)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    M_vga_screen_counter_clk = clk && (M_cpu0_ready || M_cpu1_ready);
    led = 8'h00;
    M_n_in = {M_cpu1_ready, M_cpu0_ready};
    M_cpu0_start = 1'h0;
    M_cpu1_start = 1'h0;
    M_cpu0_x = 1'h0;
    M_cpu0_y = 1'h0;
    M_cpu1_x = 1'h0;
    M_cpu1_y = 1'h0;
    if (M_n_out[0+0-:1]) begin
      M_cpu0_x = M_vga_screen_counter_x;
      M_cpu0_y = M_vga_screen_counter_y;
      M_cpu0_start = 1'h1;
    end
    if (M_n_out[1+0-:1]) begin
      M_cpu1_x = M_vga_screen_counter_x;
      M_cpu1_y = M_vga_screen_counter_y;
      M_cpu1_start = 1'h1;
    end
    M_o_in = {M_cpu1_write, M_cpu0_write};
    M_cpu0_recieved = 1'h0;
    M_cpu1_recieved = 1'h0;
    M_frame_buffer_write_en = 1'h0;
    M_frame_buffer_waddr = 20'bxxxxxxxxxxxxxxxxxxxx;
    M_frame_buffer_write_data = 1'h0;
    if (M_o_out[0+0-:1]) begin
      M_frame_buffer_write_en = 1'h1;
      M_frame_buffer_waddr = {M_cpu0_yo, M_cpu0_xo};
      M_frame_buffer_write_data = M_cpu0_dout;
      M_cpu0_recieved = 1'h1;
    end
    if (M_o_out[1+0-:1]) begin
      M_frame_buffer_write_en = 1'h1;
      M_frame_buffer_waddr = {M_cpu1_yo, M_cpu1_xo};
      M_frame_buffer_write_data = M_cpu1_dout;
      M_cpu1_recieved = 1'h1;
    end
    M_frame_buffer_raddr = {M_timer_y, M_timer_x};
    color = {M_frame_buffer_read_data[8+3-:4], M_frame_buffer_read_data[4+3-:4], M_frame_buffer_read_data[0+3-:4]};
    h_sync = M_timer_h_sync;
    v_sync = M_timer_v_sync;
    led[2+0-:1] = M_timer_h_sync;
    led[6+0-:1] = M_timer_v_sync;
    usb_tx = usb_rx;
  end
endmodule