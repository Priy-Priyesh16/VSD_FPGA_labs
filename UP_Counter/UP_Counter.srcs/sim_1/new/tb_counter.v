`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2026 09:00:53 PM
// Design Name: 
// Module Name: tb_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_counter();

reg clk,rst;
wire counter_out;

counter dut(clk,rst,counter_out);

initial begin

clk = 0; 
rst = 1;

#10

rst = 0;
end

always
begin
#10 clk = ~clk;
end


endmodule
