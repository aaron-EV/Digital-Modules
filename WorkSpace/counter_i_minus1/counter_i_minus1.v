/*
*	Description: Counter of M states which counts to N value.
*	Author: Aarón Escoboza Villegas
*/

module counter_i_minus1#(parameter M = 3,parameter ni = 3)
(
	input clk,
	input reset,
	input en,
	input [ni-1:0]i; 
	output reg [M-1:0] out,
	output reg done	
);


always@(posedge clk,negedge reset)
begin
	if(!reset)
		begin
			out <= 0;
			done <= 0;
		end
	else if(en)
		begin 
			
			
		end
	else 
		begin 
			out <= out; 
			done <= done; 
		end

end
endmodule