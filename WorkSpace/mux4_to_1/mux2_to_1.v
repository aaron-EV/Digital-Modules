/*
*	Description: 2 to 1 multiplexer  
*	Author: Aarón Escoboza Villegas
*/

module mux2_to_1
(
	input				in0,
	input			   in1,
	input				  s,
	output		   out
);

assign out = s ? in1:in0; 

endmodule