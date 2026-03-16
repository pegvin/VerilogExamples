module full_subtractor(input a, input b, input b_in, output dif, output brw);
	xor(dif, b_in, a, b);

	wire _xnor;
	xnor(_xnor, a, b);

	wire a1;
	and(a1, b_in, _xnor);

	wire a2;
	not(a2, a);

	wire a3;
	and(a3, a2, b);

	or(brw, a1, a3);
endmodule
