// 2-Bit Comparator
// |    A    |    B    |        Equality       |
// | a1 | a0 | b1 | b0 | A < B | A = B | A > B |
// |----|----|----|----|-------|-------|-------|
// | 0  | 0  | 0  | 0  |   0   |   1   |   0   |
// | 0  | 0  | 0  | 1  |   1   |   0   |   0   |
// | 0  | 0  | 1  | 0  |   1   |   0   |   0   |
// | 0  | 0  | 1  | 1  |   1   |   0   |   0   |
// | 0  | 1  | 0  | 0  |   0   |   0   |   1   |
// | 0  | 1  | 0  | 1  |   0   |   1   |   0   |
// | 0  | 1  | 1  | 0  |   1   |   0   |   0   |
// | 0  | 1  | 1  | 1  |   1   |   0   |   0   |
// | 1  | 0  | 0  | 0  |   0   |   0   |   1   |
// | 1  | 0  | 0  | 1  |   0   |   0   |   1   |
// | 1  | 0  | 1  | 0  |   0   |   1   |   0   |
// | 1  | 0  | 1  | 1  |   1   |   0   |   0   |
// | 1  | 1  | 0  | 0  |   0   |   0   |   1   |
// | 1  | 1  | 0  | 1  |   0   |   0   |   1   |
// | 1  | 1  | 1  | 0  |   0   |   0   |   1   |
// | 1  | 1  | 1  | 1  |   0   |   1   |   0   |
// A > B: A1B1’ + A0B1’B0’ + A1A0B0’
// A = B: (A0 XNOR B0) (A1 XNOR B1)
// A < B: A1’B1 + A0’B1B0 + A1’A0’B0
module comparator_2_bit(input a0, input a1, input b0, input b1, output a_lt_b, output a_eq_b, output a_gt_b);
	wire a0_not, a1_not, b0_not, b1_not;
	not(a0_not, a0);
	not(a1_not, a1);
	not(b0_not, b0);
	not(b1_not, b1);

	wire x1, x2, x3;
	and(x1, a1, b1_not);
	and(x2, a0, b1_not, b0_not);
	and(x3, a1, a0, b0_not);
	or(a_gt_b, x1, x2, x3);

	wire y1, y2;
	xnor(y1, a0, b0);
	xnor(y2, a1, b1);
	and(a_eq_b, y1, y2);

	wire z1, z2, z3;
	and(z1, a1_not, b1);
	and(z2, a0_not, b1, b0);
	and(z3, a1_not, a0_not, b0);
	or(a_lt_b, z1, z2, z3);
endmodule
