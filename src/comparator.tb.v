`include "comparator.v"

module comparator_tb;
	reg a0, a1, b0, b1;
	wire a_lt_b, a_eq_b, a_gt_b;

	comparator_2_bit comp(a0, a1, b0, b1, a_lt_b, a_eq_b, a_gt_b);

	initial begin
		$dumpfile("comparator.vcd");
		$dumpvars(0, comparator_tb);
		$display("  T |  A  |  B  | A < B | A = B | A > B |");
		$monitor(" %02t | %d %d | %d %d |   %d   |   %d   |   %d   |", $time, a1, a0, b1, b0, a_lt_b, a_eq_b, a_gt_b);

		#0 a1 = 0; a0 = 0; b1 = 0; b0 = 0;
		#1 a1 = 0; a0 = 0; b1 = 0; b0 = 1;
		#1 a1 = 0; a0 = 0; b1 = 1; b0 = 0;
		#1 a1 = 0; a0 = 0; b1 = 1; b0 = 1;
		#1 a1 = 0; a0 = 1; b1 = 0; b0 = 0;
		#1 a1 = 0; a0 = 1; b1 = 0; b0 = 1;
		#1 a1 = 0; a0 = 1; b1 = 1; b0 = 0;
		#1 a1 = 0; a0 = 1; b1 = 1; b0 = 1;
		#1 a1 = 1; a0 = 0; b1 = 0; b0 = 0;
		#1 a1 = 1; a0 = 0; b1 = 0; b0 = 1;
		#1 a1 = 1; a0 = 0; b1 = 1; b0 = 0;
		#1 a1 = 1; a0 = 0; b1 = 1; b0 = 1;
		#1 a1 = 1; a0 = 1; b1 = 0; b0 = 0;
		#1 a1 = 1; a0 = 1; b1 = 0; b0 = 1;
		#1 a1 = 1; a0 = 1; b1 = 1; b0 = 0;
		#1 a1 = 1; a0 = 1; b1 = 1; b0 = 1;
	end
endmodule
