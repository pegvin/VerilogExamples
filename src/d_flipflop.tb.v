`include "d_flipflop.v"

module d_flipflop_tb;
	reg d, clk;
	wire q;

	d_flipflop dut(d, clk, q);

	always #5 clk = ~clk;

	initial begin
		$dumpfile("d_flipflop.vcd");
		$dumpvars(0, d_flipflop_tb);

		clk = 0; d = 0;

		#10 d = 0;
		#10 d = 1;
		#10 d = 0;
		#10 d = 1;
		#10 $finish;
	end
endmodule
