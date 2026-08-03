module even_parity_checker(
	input [3:0] a,
	output corrupt
);
	assign corrupt = ~(^a);
endmodule

module odd_parity_checker(
	input [3:0] a,
	output corrupt
);
	assign corrupt = ^a;
endmodule
