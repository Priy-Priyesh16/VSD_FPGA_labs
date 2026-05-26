module up_cntr_tb();
reg clk, reset, enable;
wire [3:0] out;

up_counter DUT(clk,reset,enable,out[0],out[1],out[2],out[3]);

initial 
begin
clk =0;
enable = 0;
reset = 1;

#20;
reset = 0;
enable = 1; 
end

always #5 clk = ~clk;

endmodule