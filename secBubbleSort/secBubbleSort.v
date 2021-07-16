module secBubbleSort#(parameter width = 8)
(
	input clk,rst,en,
	input [width-1:0]in1,in2,in3,in4, 
	output [width-1:0]out1,out2,out3,out4
);

wire [width-1:0]tempOut1Stage1,tempOut2Stage1,tempOut3Stage1;
wire [width-1:0]tempOut1Stage2,tempOut2Stage2;

stage1 #(.width(width))stageNum1
(
	.clk(clk),
	.rst(rst),
	.en(en),
	.in1(in1),
	.in2(in2),
	.in3(in3),
	.in4(in4),
	
	.out1(tempOut1Stage1),
	.out2(tempOut2Stage1),
	.out3(tempOut3Stage1),
	.out4(out4),
);

stage2 #(.width(width))stageNum2
(
	.clk(clk),
	.rst(rst),
	.en(en),
	.in1(tempOut1Stage1),
	.in2(tempOut2Stage1),
	.in3(tempOut3Stage1),
	
	.out1(tempOut1Stage2),
	.out2(tempOut2Stage2),
	.out3(out3)
);

stage3 #(.width(width))stageNum3
(
	.clk(clk),
	.rst(rst),
	.en(en),
	.in1(tempOut1Stage2),
	.in2(tempOut2Stage2),
	
	.out1(out1),
	.out2(out2),
);

endmodule