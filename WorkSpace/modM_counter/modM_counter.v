/*
*	Description: Counter of M states. Default M = 4 bits. 
*	Author: Aarón Escoboza Villegas
*/

module modM_counter#(parameter M = 4)
(
	input clk,
	input reset,
	input en,
	output reg [M-1:0] out
);

always@(posedge clk,negedge reset) 
begin 
	if (!reset)
		out <= 0;
	else if (en)
		out <= out + 1;
	else 
		out <= out;
end
endmodule