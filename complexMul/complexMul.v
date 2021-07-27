
`define SUB 1
`define SUM 0
module complexMul#(parameter WIDTH = 8) 
(
	input  [WIDTH-1:0]aReal, 
	input  [WIDTH-1:0]aImag, 
	input  [WIDTH-1:0]bReal,
	input  [WIDTH-1:0]bImag,
	output  [WIDTH-1:0]outReal,
	output  [WIDTH-1:0]outImag
);

wire [WIDTH-1:0]tempMul0; 
wire [WIDTH-1:0]tempMul1; 
wire [WIDTH-1:0]tempMul2; 
wire [WIDTH-1:0]tempMul3; 

multi#(.WIDTH(WIDTH)) mul0
(
	.a(aReal),
	.b(bReal),
	.out(tempMul0)
);

multi#(.WIDTH(WIDTH)) mul1
(
	.a(aImag),
	.b(bImag),
	.out(tempMul1)
);

multi#(.WIDTH(WIDTH)) mul2
(
	.a(aImag),
	.b(bReal),
	.out(tempMul2)
);

multi#(.WIDTH(WIDTH)) mul3
(
	.a(aReal),
	.b(bImag),
	.out(tempMul3)
);

adderSub#(.WIDTH(WIDTH),.OP(`SUB)) adder0
(
	.a(tempMul0),
	.b(tempMul1),
	.sum(outReal)
);

adderSub#(.WIDTH(WIDTH),.OP(`SUM)) adder1
(
	.a(tempMul2),
	.b(tempMul3),
	.sum(outImag)
);

endmodule