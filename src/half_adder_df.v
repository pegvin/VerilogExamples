// Half Adder Using Data Flow Modeling
module half_adder_df(input a, input b, output sum, output carry);
	assign sum = a ^ b;
	assign carry = a & b;
endmodule

