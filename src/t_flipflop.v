module t_flipflop (
	input t, input clk,
	output reg q
);
	initial q = 0;

	always @(posedge clk) begin
		if (t)
			q <= ~q;
	end
endmodule
