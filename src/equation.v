// Implements F = AB + A'C using gate-level modeling
module equation(input a, input b, input c, output d);
	wire w1;
	and(w1, a, b); // AB

	wire w2;
	not(w2, a); // A'

	wire w3;
	and(w3, w2, c); // A'C

	or(d, w1, w3); // AB + A'C
endmodule;
