

module parity#(parameter width = 8)
(
	input [width-1:0]in, 
	output parityOut //1-odd 0-even 
);

assign parityOut = ^in;  

endmodule