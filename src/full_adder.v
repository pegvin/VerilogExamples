module full_adder(input a, input b, input c_in, output sum, output c_out);
	xor(sum, a, b, c_in);

	wire x1;
	xor(x1, a, b);

	wire a1;
	and(a1, c_in, x1);

	wire a2;
	and(a2, a, b);

	or(c_out, a1, a2);
endmodule

