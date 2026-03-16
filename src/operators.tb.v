`include "operators.v"

module operators_tb;
	reg [7:0] a;
	reg [7:0] b;
	wire [7:0] b_and;
	wire [7:0] b_or;
	wire [7:0] b_not;
	wire a_gt_b, a_lt_b, a_eq_b, a_neq_b;
	wire a_gteq_b, a_lteq_b;

	assign b_and = a & b;
	assign b_or = a | b;
	assign b_not = ~a;

	assign a_gt_b = a > b;
	assign a_lt_b = a < b;
	assign a_eq_b = a == b;
	assign a_neq_b = a != b;
	assign a_gteq_b = a >= b;
	assign a_lteq_b = a <= b;

	initial begin
		$monitor("A = %d (%b), B = %d (%b), A & B = %b, A | B = %b, ~A = %b, A > B = %d, A < B = %d, A == B = %d, A != B = %d, A >= B = %d, A <= B = %d", a, a, b, b, b_and, b_or, b_not, a_gt_b, a_lt_b, a_eq_b, a_neq_b, a_gteq_b, a_lteq_b);

		#0 a = 2; b = 3;
		#1 a = 3; b = 2;
		#1 a = 10; b = 4;
		#1 a = 10; b = 10;
	end
endmodule
