`include "line_decoder.v"

module line_decoder_tb;
	reg a, b, c;
	wire d0, d1, d2, d3, d4, d5, d6, d7;

	line_decoder_3_to_8 dec(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);

	initial begin
		$dumpfile("line_decoder.vcd");
		$dumpvars(0, line_decoder_tb);
		$monitor("T = %0t, %d %d %d -> %d %d %d %d %d %d %d %d", $time, a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);
		#0 a = 0; b = 0; c = 0;
		#1 a = 0; b = 0; c = 1;
		#1 a = 0; b = 1; c = 0;
		#1 a = 0; b = 1; c = 1;
		#1 a = 1; b = 0; c = 0;
		#1 a = 1; b = 0; c = 1;
		#1 a = 1; b = 1; c = 0;
		#1 a = 1; b = 1; c = 1;
	end
endmodule
