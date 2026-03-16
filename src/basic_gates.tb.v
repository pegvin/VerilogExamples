`include "basic_gates.v"

module basic_gates_tb;
	reg a, b;
	wire out_and, out_or, out_not, out_nand, out_nor;

	and_gate m1(a, b, out_and);
	or_gate m2(a, b, out_or);
	not_gate m3(a, out_not);
	nand_gate m4(a, b, out_nand);
	nor_gate m5(a, b, out_nor);

	initial begin
		$dumpfile("basic_gates.vcd");
		$dumpvars(0, basic_gates_tb);
		$monitor("T = %0t, A = %d, B = %d, AB = %d, A + B = %d, A' = %d, (AB)' = %d, (A + B)' = %d", $time, a, b, out_and, out_or, out_not, out_nand, out_nor);
		#0 a = 0; b = 0;
		#1 a = 0; b = 1;
		#1 a = 1; b = 0;
		#1 a = 1; b = 1;
	end
endmodule
