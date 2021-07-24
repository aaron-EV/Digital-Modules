
module decoder2to4
(
	input [1:0]in,
	input en,
	output [3:0]out
);

assign out = { en & in[1] & in[0],
					 en & in[1] & ~in[0],
					 en & ~in[1] & in[0],
					 en & ~in[1] & ~in[0]
				   };
endmodule