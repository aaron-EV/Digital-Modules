/*
*	Description: Shift right register.
*	Author: Aarón Escoboza Villegas
*/

module shift_R_register #(parameter n = 8)
(
	input clk, 
	input reset,
	input din,
	output reg [n-1:0]out
);



always @(posedge clk,negedge reset)
begin
	if(!reset)
		out <= 0;
	else
		out <= {din,out[7:1]};
	
end

endmodule