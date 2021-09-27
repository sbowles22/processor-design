/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module greeter_2 (
    input clk,
    input rst,
    input new_rx,
    input [7:0] rx_data,
    output reg new_tx,
    output reg [7:0] tx_data,
    input tx_busy
  );
  
  
  
  localparam HELLO_TEXT = 96'h0a0d2140206f6c6c65480a0d;
  
  localparam PROMPT_TEXT = 184'h203a656d616e2072756f79206570797420657361656c50;
  
  localparam IDLE_state = 2'd0;
  localparam PROMPT_state = 2'd1;
  localparam LISTEN_state = 2'd2;
  localparam HELLO_state = 2'd3;
  
  reg [1:0] M_state_d, M_state_q = IDLE_state;
  reg [3:0] M_hello_count_d, M_hello_count_q = 1'h0;
  reg [4:0] M_prompt_count_d, M_prompt_count_q = 1'h0;
  reg [4:0] M_name_count_d, M_name_count_q = 1'h0;
  wire [8-1:0] M_ram_read_data;
  reg [5-1:0] M_ram_address;
  reg [8-1:0] M_ram_write_data;
  reg [1-1:0] M_ram_write_en;
  simple_ram_5 #(.SIZE(4'h8), .DEPTH(6'h20)) ram (
    .clk(clk),
    .address(M_ram_address),
    .write_data(M_ram_write_data),
    .write_en(M_ram_write_en),
    .read_data(M_ram_read_data)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_prompt_count_d = M_prompt_count_q;
    M_hello_count_d = M_hello_count_q;
    M_name_count_d = M_name_count_q;
    
    M_ram_address = M_name_count_q;
    M_ram_write_data = 8'bxxxxxxxx;
    M_ram_write_en = 1'h0;
    new_tx = 1'h0;
    tx_data = 8'bxxxxxxxx;
    
    case (M_state_q)
      IDLE_state: begin
        M_hello_count_d = 1'h0;
        M_prompt_count_d = 1'h0;
        M_name_count_d = 1'h0;
        if (new_rx) begin
          M_state_d = PROMPT_state;
        end
      end
      PROMPT_state: begin
        if (!tx_busy) begin
          M_prompt_count_d = M_prompt_count_q + 1'h1;
          new_tx = 1'h1;
          tx_data = PROMPT_TEXT[(M_prompt_count_q)*8+7-:8];
          if (M_prompt_count_q == 6'h16) begin
            M_state_d = LISTEN_state;
          end
        end
      end
      LISTEN_state: begin
        if (new_rx) begin
          M_ram_write_data = rx_data;
          M_ram_write_en = 1'h1;
          M_name_count_d = M_name_count_q + 1'h1;
          new_tx = rx_data != 4'ha && rx_data != 4'hd;
          tx_data = rx_data;
          if ((&M_name_count_q) || rx_data == 4'ha || rx_data == 4'hd) begin
            M_state_d = HELLO_state;
            M_name_count_d = 1'h0;
          end
        end
      end
      HELLO_state: begin
        if (!tx_busy) begin
          if (HELLO_TEXT[(M_hello_count_q)*8+7-:8] != 7'h40) begin
            M_hello_count_d = M_hello_count_q + 1'h1;
            new_tx = 1'h1;
            tx_data = HELLO_TEXT[(M_hello_count_q)*8+7-:8];
          end else begin
            M_name_count_d = M_name_count_q + 1'h1;
            if (M_ram_read_data != 4'ha && M_ram_read_data != 4'hd) begin
              new_tx = 1'h1;
            end
            tx_data = M_ram_read_data;
            if (M_ram_read_data == 4'ha || M_ram_read_data == 4'hd || (&M_name_count_q)) begin
              M_hello_count_d = M_hello_count_q + 1'h1;
            end
          end
          if (M_hello_count_q == 5'h0b) begin
            M_state_d = IDLE_state;
          end
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_hello_count_q <= M_hello_count_d;
    M_prompt_count_q <= M_prompt_count_d;
    M_name_count_q <= M_name_count_d;
    
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
endmodule
