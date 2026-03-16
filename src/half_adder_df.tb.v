`include "half_adder_df.v"

module half_adder_df_tb;
	reg a, b;
	wire sum, carry;

	half_adder_df adder(a, b, sum, carry);

	initial begin
		$dumpfile("half_adder_df.vcd");
		$dumpvars(0, half_adder_df_tb);
		$monitor("T = %0t, A = %d, B = %d, Sum = %d, Carry = %d", $time, a, b, sum, carry);

		#0 a = 0; b = 0;
		#1 a = 0; b = 1;
		#1 a = 1; b = 0;
		#1 a = 1; b = 1;
	end
endmodule

