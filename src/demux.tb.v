`include "demux.v"

module demux_tb;
	reg s0, s1, i;
	wire y0, y1, y2, y3;

	demux_1_to_4 demux(s0, s1, i, y0, y1, y2, y3);

	initial begin
		$dumpfile("demux.vcd");
		$dumpvars(0, demux_tb);
		$monitor("T = %0t, S0 = %d, S1 = %d, I = %d, Y0..Y3 = %d %d %d %d", $time, s0, s1, i, y0, y1, y2, y3);
		#0 s1 = 0; s0 = 0; i = 0;
		#1 s1 = 0; s0 = 1; i = 0;
		#1 s1 = 1; s0 = 0; i = 0;
		#1 s1 = 1; s0 = 1; i = 0;

		#1 s1 = 0; s0 = 0; i = 1;
		#1 s1 = 0; s0 = 1; i = 1;
		#1 s1 = 1; s0 = 0; i = 1;
		#1 s1 = 1; s0 = 1; i = 1;
	end
endmodule
