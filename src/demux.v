// 1:4 Demux
// Maps 1 input line onto either of the 4 output lines
// using the select lines.
// | s1 | s0 | y0 | y1 | y2 | y3 |
// |----|----|----|----|----|----|
// | 0  | 0  | i  | 0  | 0  | 0  |
// | 0  | 1  | 0  | i  | 0  | 0  |
// | 1  | 0  | 0  | 0  | i  | 0  |
// | 1  | 1  | 0  | 0  | 0  | i  |
// Y0 = s1's0'i
// Y1 = s1's0i
// Y2 = s1s0'i
// Y3 = s1s0i
module demux_1_to_4(input s0, input s1, input i, output y0, output y1, output y2, output y3);
	wire s0_not, s1_not;
	not(s0_not, s0);
	not(s1_not, s1);

	and(y0, s1_not, s0_not, i);
	and(y1, s1_not, s0, i);
	and(y2, s1, s0_not, i);
	and(y3, s1, s0, i);
endmodule
