
module dualPortRam#(parameter WIDTH = 8,parameter ADDR_WIDTH = 3, parameter DEPTH = 8)
(
	input [WIDTH-1:0]din,
	input we,
	input clk,
	input [ADDR_WIDTH-1:0]w_addr,
	input [ADDR_WIDTH-1:0]r_addr,
	output reg [WIDTH-1:0] dout
);

reg [WIDTH-1:0] ram [DEPTH-1:0];

always@(posedge clk)
	begin: write_process	
		if(we)
			ram[w_addr] <= din;
	end

always@(posedge clk)
	begin: read_process 
		dout <= ram[r_addr]; 
	end

endmodule