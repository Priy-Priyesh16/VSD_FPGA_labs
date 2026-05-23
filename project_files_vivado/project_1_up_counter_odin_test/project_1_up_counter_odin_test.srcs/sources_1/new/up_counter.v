`timescale 1ns / 1ps

module up_counter(clk,rst,ena,,counter_out);
input clk,rst,ena;
output reg [3:0] counter_out;


always @(posedge clk)
begin
 if(rst)
 begin
  counter_out <= 4'd0;
 end
 else if(ena)
 begin
  counter_out <= counter_out + 1;
 end
end
endmodule