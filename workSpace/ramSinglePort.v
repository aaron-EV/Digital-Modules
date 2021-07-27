
module ramSinglePort#
(
	parameter DATA_WIDTH = 8,
	parameter ADDR_WIDTH = 3,
	parameter DEPTH = 8 
)
(
	input clk,
	input we, 
	input [DATA_WIDTH-1:0]din, 
	input [ADDR_WIDTH-1:0]addr,
	output reg [DATA_WIDTH-1:0]dout
);

reg [DATA_WIDTH-1:0]ram[DEPTH-1:0]; 

always@(posedge clk)
begin 
	if(we)
		ram[addr] <= din; 
	dout <= ram[addr];
end
endmodule