`include "line_encoder.v"

module line_encoder_tb;
	reg a, b, c, d;
	wire d0, d1;

	line_encoder_4_to_2 enc(a, b, c, d, d0, d1);

	initial begin
		$dumpfile("line_decoder.vcd");
		$dumpvars(0, line_encoder_tb);
		$monitor("T = %0t, %d %d %d %d -> %d %d", $time, a, b, c, d, d0, d1);
		#0 a = 0; b = 0; c = 0; d = 1;
		#1 a = 0; b = 0; c = 1; d = 0;
		#1 a = 0; b = 1; c = 0; d = 0;
		#1 a = 1; b = 0; c = 0; d = 0;
	end
endmodule
