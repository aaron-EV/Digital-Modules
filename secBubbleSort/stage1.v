
module stage1#(parameter width = 8)
(
	input clk,rst,en,
	input [width-1:0]in1,in2,in3,in4, 
	output [width-1:0]out1,out2,out3,out4
);

wire [width-1:0] largest1;
wire [width-1:0] largest2;
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
	.largest(largest2)
); 

swapper #(.width(width))swapper3
(
	.en(en),
	.clk(clk),
	.rst(rst),
	.a(largest2),
	.b(in4),
	
	.smallest(out3),
	.largest(out4)
);

endmodule