// 3:8 Line Decoder
// This decodes a 3-bit input into a 8-bit output
module line_decoder_3_to_8(input a, input b, input c, output d0, output d1, output d2, output d3, output d4, output d5, output d6, output d7);
	wire a_not;
	wire b_not;
	wire c_not;

	not(a_not, a);
	not(b_not, b);
	not(c_not, c);

	and(d0, a_not, b_not, c_not);
	and(d1, a_not, b_not, c);
	and(d2, a_not, b, c_not);
	and(d3, a_not, b, c);
	and(d4, a, b_not, c_not);
	and(d5, a, b_not, c);
	and(d6, a, b, c_not);
	and(d7, a, b, c);
endmodule
