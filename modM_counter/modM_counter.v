/*
*	Description: Register of M states. Default M = 4 bits. 
*	Author: Aarón Escoboza Villegas
*/

module modM_counter#(parameter M = 4)
(
	input clk,
	input reset,
	input en,
	output reg [M-1:0] outReg
);

always@(posedge clk,negedge reset) 
begin 
	if (!reset)
		outReg <= 0;
	else if (en)
		outReg <= outReg + 1;
	else 
		outReg <= outReg;
end
endmodule