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
localparam  DWIDTH =24;
localparam COUNTER_WIDTH = 4;

reg clk,rst;
wire [COUNTER_WIDTH - 1 :0] counter_out;



counter
#(   
.DWIDTH (DWIDTH),
.COUNTER_WIDTH (COUNTER_WIDTH)
)
dut
(.clk(clk),.rst(rst),.counter_out(counter_out));

initial clk = 0;
always #10 clk = ~clk;

initial begin

rst = 1;
#50
rst = 0;
end




endmodule
