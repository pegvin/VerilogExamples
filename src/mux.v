// 4:1 Multiplexer
// This outputs any one of i0 to i3 inputs onto y
// which is controlled by s0 & s1 select lines.
// | s0 |  y |
// |----|----|
// | 0  | i0 |
// | 1  | i1 |
module mux_2_to_1(input i0, input i1, input s0, output y);
	wire s0_not;
	not(s0_not, s0);

	wire a1, a2;
	and(a1, s0_not, i0);
	and(a2, s0, i1);

	or(y, a1, a2);
endmodule
