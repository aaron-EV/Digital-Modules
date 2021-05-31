/*
*	Description: Register of M states. Default M = 8 bits. 
*	Author: Aarón Escoboza Villegas
*/

module modM_counter#(parameter n = 8)
(
	input clk,
	input reset,
	input en,
	input [n-1:0]inReg, 
	output reg [n-1:0] outReg
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