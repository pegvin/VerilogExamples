`include "equation.v"

module equation_tb;
	reg a, b, c;
	wire y;

	equation eqn(a, b, c, y);

	initial begin
		$dumpfile("equation.vcd");
		$dumpvars(0, equation_tb);
		$monitor("T = %0t, A = %d, B = %d, C = %d, AB + A'C = %d", $time, a, b, c, y);

		#0 a = 0; b = 0; c = 0;
		#1 a = 0; b = 0; c = 1;
		#1 a = 0; b = 1; c = 0;
		#1 a = 0; b = 1; c = 1;
		#1 a = 1; b = 0; c = 0;
		#1 a = 1; b = 0; c = 1;
		#1 a = 1; b = 1; c = 0;
		#1 a = 1; b = 1; c = 1;
	end
endmodule;
