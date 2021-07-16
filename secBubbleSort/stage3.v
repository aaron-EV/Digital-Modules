
module stage3#(parameter width = 8)
(
	input clk,rst,en,
	input [width-1:0]in1,in2,
	output [width-1:0]out1,out2
);

swapper #(.width(width))swapper1
(
	.en(en),
	.clk(clk),
	.rst(rst),
	.a(in1),
	.b(in2),
	
	.smallest(out1),
	.largest(out2)
); 
endmodule