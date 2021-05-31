/*
*	Description: Register of n bits. Default n = 8 bits. 
*	Author: Aarón Escoboza Villegas
*/

module register#(parameter n = 8)
(
	input clk,
	input reset,
	input [n-1:0]inReg, 
	output reg [n-1:0] outReg
);

always@(posedge clk,negedge reset) 
begin 
	if (!reset)
		outReg <= 0;
	else 
		outReg <= inReg;
end
endmodule