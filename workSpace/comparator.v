
module comparator#(parameter width = 8)
(
	input [width-1:0]inA,
	input [width-1:0]inB,
	output equal,
	output grater,
	output smaller 
);

assign {equal,grater,smaller} = {inA == inB,inA > inB, inA < inB};

endmodule