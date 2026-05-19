`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2026 09:37:04 PM
// Design Name: Up_Counter
// Module Name: counter
// Project Name: 
// Target Devices: ARtix 7
// Tool Versions: 18.1
// Description: This is a code for up counter of counter width = 4
// 
// Dependencies: none
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter
#(
   parameter DWIDTH = 24,
   parameter COUNTER_WIDTH = 4
)
(
  input clk,
  input rst,
  output reg [COUNTER_WIDTH - 1 : 0] counter_out
);

  reg div_clk;
  reg [DWIDTH - 1 : 0]delay_count;

  always @(posedge clk)
  begin
    if(rst)
    begin
       counter_out <= {(COUNTER_WIDTH){1'b0}};
       div_clk     <= 1'b0;
       delay_count <= {(DWIDTH){1'b0}};
    end
    else
    begin
      if(delay_count == 'd200)
        begin
           div_clk = ~div_clk;
        end
      else
        begin
            delay_count <= delay_count + 1'b1;
        end
    end
  end

  always @(posedge div_clk)
  begin
    if(rst)
    begin
      counter_out <= {(COUNTER_WIDTH){1'b0}};
    end
    else
    begin
       counter_out <= counter_out + 'd1;
    end
  end
  endmodule
