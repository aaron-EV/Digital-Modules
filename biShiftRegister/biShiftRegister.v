/*
*	Description: Bidirectional  shift register.
*	Author: Aarón Escoboza Villegas
*/

module biShiftRegister #(parameter n = 8)
(
	input clk, 
	input rst,
	input din,
	input dir,	// 1-Right 0-Left
	output reg [n-1:0]out
);



always @(posedge clk,negedge rst)
begin
	if(!rst)
		out <= 0;
	else 
		begin 
			if (dir)
				out <= {din,out[7:1]};
			else 
				out <= {out[6:0],din};
		end
end
endmodule