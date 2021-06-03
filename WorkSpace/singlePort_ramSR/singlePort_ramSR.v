// Single port RAM with synchronous read


module singlePort_ramSR #(parameter ADDR_WIDTH = 8, parameter DATA_WIDTH = 1)
(
	input clk, 
	input we,
	input  [ADDR_WIDTH-1:0]  addr, 
	input  [DATA_WIDTH-1:0]   din, 
	output [DATA_WIDTH-1:0]  dout
);

//ram
reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0]; 
reg [ADDR_WIDTH-1:0]regAddr; 

always @(posedge clk)
begin 
	if(we) 
		ram[addr] <= din; 
	regAddr <= addr; 
end
assign dout = ram[regAddr]; 

endmodule