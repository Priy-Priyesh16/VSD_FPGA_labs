module test_rv_tb();

reg clk,rst;
wire [7:0] out;

core dut(clk,rst,out);

initial 
begin
   clk = 1'b0;
   rst = 1'b0;
   
   #20;
   rst = 1'b1;
   
   #50;
   rst = 1'b0;
   
end

always #5 clk = ~clk;
initial #200 $finish;

endmodule