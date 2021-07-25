
module ALU
(
	input [3:0]a,b,opcode,
	output reg [3:0] x,y
);

`define OR_RED 4'd0 
`define AND_RED 4'd1
`define XOR_RED 4'd2 
`define NOT_RED 4'd3
`define ADD 4'd4
`define MINUS 4'd5
`define MUL 4'd6 
`define SHIFT_R 4'd7
`define SHIFT_L 4'd8 
`define EQUAL 4'd9
`define GRATER 4'd10
`define SMALLER 4'd11
`define OR_OP 4'd12
`define AND_OP 4'd13
`define XOR_OP 4'd14
`define NOT_OP 4'd15 

always@(*)
	begin 
		case(opcode)
			//reduction operations
			`OR_RED:  x[0] = |a; 
			`AND_RED: x[0] = &a;
			`XOR_RED: x[0] = ^a;
			`NOT_RED: x[0] = !a;
			//arithmetic operations
			`ADD: {y[0],x} = (a + b); 
			`MINUS: x = (a - b);  	
			`MUL: {y,x} = (a * b); 
			//shift operations 
			`SHIFT_R: {y,x} = (a >> b);
			`SHIFT_L: {y,x} = (a << b); 
			//relational operations
			`EQUAL: x[0] = (a == b);
			`GRATER: x[0] = (a > b);
			`SMALLER: x[0] = (a < b);
			//logic operations
			`OR_OP: x = a | b; 
			`AND_OP: x = a & b; 
			`XOR_OP: x = a ^ b;
			`NOT_OP: x = ~a;
			
			default: $display("error"); 		
		endcase 	
	end


endmodule