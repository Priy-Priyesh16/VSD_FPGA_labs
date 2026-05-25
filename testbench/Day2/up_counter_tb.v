`timescale 1ns/1ps

module up_counter_tb();

reg clk, rst, enable;
wire [3:0] out;

up_counter dut(clk,rst,enable,out[0],out[1],out[2],out[3]);

initial $sdf_annotate ("/home/priyeshpriyadarshi1600/vtr_flow_lab/Day_2/up_counter_post_synthesis.sdf", dut);
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
