`include "s-r-flipflop.v"

module s_r_flipflop_tb;
	reg s, r, clk;
	wire q, qbar;

	sr_flipflop dut(s, r, clk, q, qbar);

	always #5 clk = ~clk;

	initial begin
		$dumpfile("s_r_flipflop.vcd");
		$dumpvars(0, s_r_flipflop_tb);

		clk = 0; s = 0; r = 0;

		#10 s = 0; r = 1;
		#10 s = 0; r = 0;
		#10 s = 1; r = 0;
		#10 s = 0; r = 0;
		#10 s = 1; r = 1;
		#10 $finish;
	end
endmodule
