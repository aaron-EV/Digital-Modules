// Single port RAM with asynchronous read


module singlePort_ramAR #(parameter ADDR_WIDTH = 8, parameter DATA_WIDTH = 1)
(
	input clk, 
	input we,
	input  [ADDR_WIDTH-1:0]  addr, 
	input  [DATA_WIDTH-1:0]   din, 
	output [DATA_WIDTH-1:0]  dout
);

//ram
reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0]; 
 
always @(posedge clk)
	if(we) 
		ram[addr] <= din; 

assign dout = ram[addr]; 

endmodule