/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     WIDTH = 2
*/
module arbiter_4 (
    input [1:0] in,
    output reg [1:0] out
  );
  
  localparam WIDTH = 2'h2;
  
  
  integer i;
  
  always @* begin
    out = 1'h0;
    for (i = 1'h0; i < 2'h2; i = i + 1) begin
      if (in[(i)*1+0-:1]) begin
        out = 1'h1 << i;
      end
    end
  end
endmodule