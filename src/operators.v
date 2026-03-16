module bitwise_and(input [7:0] a, input [7:0] b, output [7:0] c);
	assign c = a & b;
endmodule

module bitwise_or(input [7:0] a, input [7:0] b, output [7:0] c);
	assign c = a | b;
endmodule

module bitwise_not(input [7:0] a, output [7:0] b);
	assign b = ~a;
endmodule


