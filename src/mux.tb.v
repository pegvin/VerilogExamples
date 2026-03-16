`include "mux.v"

module mux_tb;
	reg i0, i1, s0;
	wire y;

	mux_2_to_1 mux(i0, i1, s0, y);

	initial begin
		$dumpfile("mux.vcd");
		$dumpvars(0, mux_tb);
		$display(" T | I0 | I1 | S0 | Y");
		$display("---|----|----|----|---");
		$monitor(" %0t |  %d |  %d |  %d | %d", $time, i0, i1, s0, y);
		#0 i0 = 0; i1 = 0; s0 = 0;
		#1 i0 = 0; i1 = 1; s0 = 0;
		#1 i0 = 1; i1 = 0; s0 = 0;
		#1 i0 = 1; i1 = 1; s0 = 0;

		#1 i0 = 0; i1 = 0; s0 = 1;
		#1 i0 = 0; i1 = 1; s0 = 1;
		#1 i0 = 1; i1 = 0; s0 = 1;
		#1 i0 = 1; i1 = 1; s0 = 1;
	end
endmodule
