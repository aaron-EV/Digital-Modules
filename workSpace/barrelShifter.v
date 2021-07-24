
module barrelShifter#(parameter width = 8,parameter nWidth = 3)
(
	input [width-1:0]in,
	input	[nWidth-1:0]n,
	input lr, // 1 rigth, 0 left 
	output reg [width-1:0]out
);

always@(*) 
	begin 
		if(lr)
			out = in >> n; 
		else 
			out = in << n;
	end

endmodule