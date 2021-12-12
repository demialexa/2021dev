module wrapper
(
		 input         CLOCK_50,
		 input         CLOCK2_50,
		 input         CLOCK3_50,
		 input         CLOCK4_50,
		 
		input         RESET_N,

		 input  [ 3:0] KEY,
		 input  [ 9:0] SW,

		 output [ 9:0] LEDR,

		 output [ 7:0] HEX0,
		 output [ 7:0] HEX1,
		 output [ 7:0] HEX2,
		 output [ 7:0] HEX3,
		 output [ 7:0] HEX4,
		 output [ 7:0] HEX5,

		 inout  [35:0] GPIO_0,
		 inout  [35:0] GPIO_1
	
);

		 wire fast_clk = CLOCK_50;
		 wire rst_n    = RESET_N;
		 
		 wire divided_clk;

		 clk_divider # (.w (24)) i_clk_divider
		 (
			  .clk         ( fast_clk    ),
			  .rst_n       ( rst_n       ),
			  .divided_clk ( divided_clk )
		 );

		 wire [3: 0] out_ptr;
		 wire out_ptr_vld;	 

		 req_gen i_req_gen (
			.clk(divided_clk),
			.rst(~rst_n),
			.out_ptr(out_ptr),
			.out_ptr_vld(out_ptr_vld)
		);
		
		SEG7_LUT	u0	(	HEX0,out_ptr, 	);

		assign HEX1 = 7'b0111111;
		assign HEX2 = 7'b0111111;
		assign HEX3 = 7'b0111111;
		assign HEX4 = 7'b0111111;
		assign HEX5 = 7'b0111111;
		assign LEDR = { divided_clk, 8'b0, out_ptr_vld};
		
	 
endmodule
