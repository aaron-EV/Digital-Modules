
module dualPort_ramSR#(parameter DATA_WITH = 8,parameter ADDR_WIDTH = 3,parameter DEPTH = 8) 
(
	input clk,
	input we_pa, 
	input we_pb,
	input ce, 
	input [ADDR_WIDTH-1:0]addr_a, 
	input [ADDR_WIDTH-1:0]addr_b,
	input [DATA_WITH-1:0]data_a,
	input [DATA_WITH-1:0]data_b,
	output reg[DATA_WITH-1:0]q_a,
	output reg[DATA_WITH-1:0]q_b
);

// ram 
reg [DATA_WITH-1:0]ram[DEPTH-1:0]; 

integer i;
initial 
  for(i = 0; i < DEPTH; i = i+1) 
    ram[i] = 8'd0;
	 
// write operation in portA and portB
always @(posedge clk) 
	begin	
		if(we_pa && ce)
			begin 
				ram[addr_a] <= data_a;
			end
		if(we_pb && ce)
			begin 
				ram[addr_b] <= data_b;
			end
		q_a <= ram[addr_a];
		q_b <= ram[addr_b];
	end
endmodule