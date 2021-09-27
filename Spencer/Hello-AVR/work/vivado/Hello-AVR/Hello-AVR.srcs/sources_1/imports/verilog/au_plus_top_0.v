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
    output reg usb_tx
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_greeter_new_tx;
  wire [8-1:0] M_greeter_tx_data;
  reg [1-1:0] M_greeter_new_rx;
  reg [8-1:0] M_greeter_rx_data;
  reg [1-1:0] M_greeter_tx_busy;
  greeter_2 greeter (
    .clk(clk),
    .rst(rst),
    .new_rx(M_greeter_new_rx),
    .rx_data(M_greeter_rx_data),
    .tx_busy(M_greeter_tx_busy),
    .new_tx(M_greeter_new_tx),
    .tx_data(M_greeter_tx_data)
  );
  wire [8-1:0] M_uart_rx_data;
  wire [1-1:0] M_uart_rx_new_data;
  reg [1-1:0] M_uart_rx_rx;
  uart_rx_3 uart_rx (
    .clk(clk),
    .rst(rst),
    .rx(M_uart_rx_rx),
    .data(M_uart_rx_data),
    .new_data(M_uart_rx_new_data)
  );
  wire [1-1:0] M_uart_tx_tx;
  wire [1-1:0] M_uart_tx_busy;
  reg [1-1:0] M_uart_tx_block;
  reg [8-1:0] M_uart_tx_data;
  reg [1-1:0] M_uart_tx_new_data;
  uart_tx_4 uart_tx (
    .clk(clk),
    .rst(rst),
    .block(M_uart_tx_block),
    .data(M_uart_tx_data),
    .new_data(M_uart_tx_new_data),
    .tx(M_uart_tx_tx),
    .busy(M_uart_tx_busy)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    usb_tx = M_uart_tx_tx;
    M_uart_rx_rx = usb_rx;
    M_uart_tx_block = 1'h0;
    M_greeter_tx_busy = M_uart_tx_busy;
    M_uart_tx_new_data = M_greeter_new_tx;
    M_uart_tx_data = M_greeter_tx_data;
    M_greeter_new_rx = M_uart_rx_new_data;
    M_greeter_rx_data = M_uart_rx_data;
  end
endmodule
