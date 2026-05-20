`timescale 1ns / 1ps

module counter_tb();

reg clk,rst;
wire [3:0] count_out;

counter dut(clk,rst,count_out);

initial begin
clk = 0;
rst = 1;

#20;

rst = 0;

end

always #5 clk = ~clk;

endmodule