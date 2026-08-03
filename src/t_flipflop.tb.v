`include "t_flipflop.v"

module t_flipflop_tb;
	reg t, clk;
	wire q;

	t_flipflop dut(t, clk, q);

	always #5 clk = ~clk;

	initial begin
		$dumpfile("t_flipflop.vcd");
		$dumpvars(0, t_flipflop_tb);

		clk = 0; t = 0;

		#10 t = 0;
		#10 t = 1;
		#10 t = 0;
		#10 t = 0;
		#10 t = 1;
		#10 $finish;
	end
endmodule
