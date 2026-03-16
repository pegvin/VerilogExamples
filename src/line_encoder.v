// 4:2 Encoder
// This encodes a 4-bit input into a 2-bit output
// For a simple encoding like so:
// | a | b | c | d | d0 | d1 |
// |---|---|---|---|----|----|
// | 0 | 0 | 0 | 1 | 0  | 0  |
// | 0 | 0 | 1 | 0 | 0  | 1  |
// | 0 | 1 | 0 | 0 | 1  | 0  |
// | 1 | 0 | 0 | 0 | 1  | 1  |
// d0 & d1 come out to be:
// -> d0 = a'bc'd' + ab'c'd'
// -> d1 = a'b'cd' + ab'c'd'
module line_encoder_4_to_2(input a, input b, input c, input d, output d0, output d1);
	wire a_not;
	wire b_not;
	wire c_not;
	wire d_not;

	not(a_not, a);
	not(b_not, b);
	not(c_not, c);
	not(d_not, d);

	wire a1, a2;
	and(a1, a_not, b, c_not, d_not);
	and(a2, a, b_not, c_not, d_not);
	or(d0, a1, a2);

	wire b1;
	and(b1, a_not, b_not, c, d_not);
	or(d1, b1, a2);
endmodule
