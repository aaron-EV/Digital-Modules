/*
*	Description: Counter of M states which counts to N value.
*	Author: Aarón Escoboza Villegas
*/

module modN_counter#(parameter M = 6, parameter N = 47)
(
	input clk,
	input reset,
	input en,
	output reg [M-1:0] out,
	output reg done
);

always@(posedge clk,negedge reset) 
begin 
	if (!reset)
		begin 
			out <= 0;
			done <= 0; 
		end
	else if (en && (out == 47))
		begin 
			out <= 0; 
			done <= 1;
		end
	else if (en)
		begin 
			out <= out + 1;
			done <= 0;
		end
	else 
		begin
			out <= out;
			done <= done;
		end
end

endmodule