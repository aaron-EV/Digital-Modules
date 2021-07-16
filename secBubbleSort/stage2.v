
module stage2#(parameter width = 8)
(
	input clk,rst,en,
	input [width-1:0]in1,in2,in3, 
	output [width-1:0]out1,out2,out3
);

wire [width-1:0] largest1;
swapper #(.width(width))swapper1
(
	.en(en),
	.clk(clk),
	.rst(rst),
	.a(in1),
	.b(in2),
	
	.smallest(out1),
	.largest(largest1)
); 

swapper #(.width(width))swapper2
(
	.en(en),
	.clk(clk),
	.rst(rst),
	.a(largest1),
	.b(in3),
	
	.smallest(out2),
	.largest(out3)
); 
endmodule