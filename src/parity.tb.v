`include "parity.v"

module parity_tb;
	reg [3:0] a;
	wire even_corrupt, odd_corrupt;

	even_parity_checker dut1(a, even_corrupt);
	odd_parity_checker dut2(a, odd_corrupt);

	initial begin
		$dumpfile("parity.vcd");
		$dumpvars(0, parity_tb);
		$monitor("A = %B, Correct Even Parity? = %B, Correct Odd Parity? = %B", a, even_corrupt, odd_corrupt);

		for (integer j = 0; j < 16; j = j + 1) begin
			a <= j;
			#1;
		end
	end
endmodule
