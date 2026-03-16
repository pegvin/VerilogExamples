`include "half_subtractor.v"

module half_subtractor_tb;
	reg a, b;
	wire dif, brw;

	half_subtractor sub(a, b, dif, brw);

	initial begin
		$dumpfile("half_subtractor.vcd");
		$dumpvars(0, half_subtractor_tb);
		$monitor("T = %0t, A = %d, B = %d, Dif: %d, Brw: %d", $time, a, b, dif, brw);
		#0 a = 0; b = 0;
		#1 a = 0; b = 1;
		#1 a = 1; b = 0;
		#1 a = 1; b = 1;
	end
endmodule

