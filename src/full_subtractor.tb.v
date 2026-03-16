`include "full_subtractor.v"

module full_subtractor_tb;
	reg a, b, b_in;
	wire dif, brw;

	full_subtractor sub(a, b, b_in, dif, brw);

	initial begin
		$dumpfile("full_subtractor.vcd");
		$dumpvars(0, full_subtractor_tb);
		$monitor("T = %0t, A = %d, B = %d, C = %d, dif: %d, brw: %d", $time, a, b, b_in, dif, brw);
		#0 a = 0; b = 0; b_in = 0;
		#1 a = 0; b = 0; b_in = 1;
		#1 a = 0; b = 1; b_in = 0;
		#1 a = 0; b = 1; b_in = 1;
		#1 a = 1; b = 0; b_in = 0;
		#1 a = 1; b = 0; b_in = 1;
		#1 a = 1; b = 1; b_in = 0;
		#1 a = 1; b = 1; b_in = 1;
	end
endmodule

