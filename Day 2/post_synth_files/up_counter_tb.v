`timescale 1ns/1ps

module up_counter_tb();

reg clk, rst, enable;
wire [3:0] out;

up_counter dut(clk,rst,enable,out[0],out[1],out[2],out[3]);

initial $sdf_annotate ("<path of your sdf file here>", dut);
initial begin
clk =0;
enable =0; 
rst = 1;

#20 ;

rst = 0;
enable = 1;
end

always 
#5 clk = ~clk;
endmodule
