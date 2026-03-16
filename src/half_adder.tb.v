`include "half_adder.v"

module half_adder_tb;
	reg a, b;
	wire sum, carry;

	half_adder adder(a, b, sum, carry);

	initial begin
		$dumpfile("half_adder.vcd");
		$dumpvars(0, half_adder_tb);
		$monitor("T = %0t, A = %d, B = %d, Sum = %d, Carry = %d", $time, a, b, sum, carry);

		#1 a = 0; b = 0;
		#1 a = 0; b = 1;
		#1 a = 1; b = 0;
		#1 a = 1; b = 1;
	end
endmodule

