`timescale 1ns / 1ps

module counter(clk,rst,counter_out);
input clk,rst;
output reg [3:0] counter_out;
reg div_clk;
reg [24:0] delay_count;



always @(posedge clk)
begin
if(rst)
   begin
    delay_count <= 24'd0;
    div_clk <= 1'd0;
    //counter_out <=4'd0;
   end
else
 begin
   if(delay_count == 24'd212)
   begin
    delay_count <= 24'd0;
    div_clk = ~div_clk;
   end
   else
   begin
    delay_count <= delay_count + 1;
   end
 end
end

always @(posedge div_clk)
begin
 if(rst)
 begin
  counter_out <= 4'd0;
 end
 else
 begin
  counter_out <= counter_out + 1;
 end
end
endmodule