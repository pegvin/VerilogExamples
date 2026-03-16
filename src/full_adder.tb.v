`include "full_adder.v"

module full_adder_tb;
	reg a, b, c_in;
	wire sum, carry;

	full_adder sub(a, b, c_in, sum, carry);

	initial begin
		$dumpfile("full_adder.vcd");
		$dumpvars(0, full_adder_tb);
		$monitor("T = %0t, A = %d, B = %d, C = %d, Sum: %d, Carry: %d", $time, a, b, c_in, sum, carry);
		#1 a = 0; b = 0; c_in = 0;
		#1 a = 0; b = 0; c_in = 1;
		#1 a = 0; b = 1; c_in = 0;
		#1 a = 0; b = 1; c_in = 1;
		#1 a = 1; b = 0; c_in = 0;
		#1 a = 1; b = 0; c_in = 1;
		#1 a = 1; b = 1; c_in = 0;
		#1 a = 1; b = 1; c_in = 1;
	end
endmodule

