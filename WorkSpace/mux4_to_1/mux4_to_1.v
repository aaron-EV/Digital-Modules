/*
*	Description: 4 to 1 multiplexer using 2-to-1 multiplexers
*	Author: Aarón Escoboza Villegas
*/

module mux4_to_1
(
	input		[3:0] in,
	input		  [1:0]s,
	output		  out
);

wire tempMux0Out;
wire tempMux1Out;


mux2_to_1 mux0
(
	.in0(in[0]),
	.in1(in[1]),
	.s(s[0]),
	.out(tempMux0Out)
);
mux2_to_1 mux1
(
	.in0(in[2]),
	.in1(in[3]),
	.s(s[0]),
	.out(tempMux1Out)
);
mux2_to_1 mux2
(
	.in0(tempMux0Out),
	.in1(tempMux1Out),
	.s(s[1]),
	.out(out)
);

endmodule