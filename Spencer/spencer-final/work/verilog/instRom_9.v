/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module instRom_9 (
    input [7:0] address,
    output reg [15:0] inst
  );
  
  
  
  always @* begin
    inst = 16'h0000;
    
    case (address)
      1'h0: begin
        inst = 16'h3b0f;
      end
      1'h1: begin
        inst = 16'h3c00;
      end
      2'h2: begin
        inst = 16'h3d0f;
      end
      2'h3: begin
        inst = 16'h1000;
      end
    endcase
  end
endmodule
