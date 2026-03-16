module and_gate(input a, input b, output c);
	and(c, a, b);
endmodule

module or_gate(input a, input b, output c);
	or(c, a, b);
endmodule

module not_gate(input a, output b);
	not(b, a);
endmodule

module nand_gate(input a, input b, output c);
	wire a1;
	and(a1, a, b);
	not(c, a1);
endmodule

module nor_gate(input a, input b, output c);
	wire a1;
	or(a1, a, b);
	not(c, a1);
endmodule
