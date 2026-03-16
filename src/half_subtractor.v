module half_subtractor(input a, input b, output dif, output brw);
	xor(dif, a, b);

	wire n1;
	not(n1, a);

	and(brw, n1, b);
endmodule
