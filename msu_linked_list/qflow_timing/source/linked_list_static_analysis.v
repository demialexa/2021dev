//`define LONG_PATH_NO_GAP

parameter n     = 256,
          w_ptr = $clog2 (n);
`define N 256
`define W_PTR 8

module start_req_gen
(
  input        clk,
  input        rst,

  output reg [`W_PTR - 1: 0] start,
  output       start_vld,
  input        start_rdy
);

  reg [3:0] n_req;

  always @ (posedge clk, posedge rst)
    if (rst)
      n_req <= 0;
    else if (start_rdy)
      n_req <= n_req + 4'd1;

  /*
  assign start_vld = 1'b1;
  assign start     = reg [w_ptr - 1: 0]' (9);
  */

  assign start_vld = n_req != 4'd8;

  always @ (*) 
    case (n_req)
    4'd0:    start = `W_PTR'd7;
    4'd1:    start = `W_PTR'd6;
    4'd2:    start = `W_PTR'd2;
    4'd3:    start = `W_PTR'd1;
    4'd4:    start = `W_PTR'd0;
    default: start = `W_PTR'd9;
    endcase

endmodule

module ptr_seq_gen
(
  input        clk,
  input        rst,

  input  [`W_PTR - 1: 0] start,
  input        start_vld,
  output       start_rdy,

  output reg [`W_PTR - 1: 0] out_ptr,
  output reg out_ptr_vld
);

  wire [`W_PTR - 1: 0]  next [`N - 1: 0];

  assign next[1] = `W_PTR'd 5;
  assign next[5] = `W_PTR'd 3;
  assign next[3] = `W_PTR'd 10;
  assign next[10] = `W_PTR'd 0;

  assign next[2] = `W_PTR'd 4;
  assign next[4] = `W_PTR'd 0;

  assign next[6] = `W_PTR'd 0;
  assign next[7] = `W_PTR'd 15;
  assign next[15] = `W_PTR'd 8;
  assign next[8] = `W_PTR'd 0;

  assign next[9] = `W_PTR'd 14;
  assign next[14] = `W_PTR'd 11;
  assign next[11] = `W_PTR'd 13;
  assign next[13] = `W_PTR'd 12;
  assign next[12] = `W_PTR'd 0;


  /*

  Verilog-2001 / 2005

  wire [w_ptr - 1:0] next [0:n - 1];
  
  assign next [1] = w_ptr' (5);
  assign next [5] = w_ptr' (3);

  */
  
  reg [`W_PTR - 1: 0] cur;
  reg cur_vld;

  always @ (*)
  begin
    cur = 0;
    
    `ifdef LONG_PATH_NO_GAP
    // Long path, no gap - check with Qflow
    
    if (out_ptr_vld)
      cur = next [out_ptr];

    if (cur == 0 & start_vld)
      cur = start;

    `else
    // short path, gap - check with Qflow
    
    if (out_ptr_vld)
      cur = next [out_ptr];
    else if (start_vld)
      cur = start;

    `endif
    
    cur_vld = (cur != 0);
  end

  always @ (posedge clk, posedge rst)
    if (rst)
      out_ptr_vld <= 0;
    else
      out_ptr_vld <= cur_vld;

  always @ (posedge clk)
    out_ptr <= cur;

  `ifdef LONG_PATH_NO_GAP
  assign start_rdy = cur == 0 | next [cur] == 0;
  `else
  assign start_rdy = ~ cur_vld;
  `endif
  
endmodule

module req_gen(
  input        clk,
  input        rst,
  output reg [`W_PTR - 1: 0] out_ptr,
  output       out_ptr_vld
);
  
  reg [`W_PTR - 1: 0] start;
  wire start_vld, start_rdy;

  start_req_gen i_start_req_gen (
    .clk(clk),
    .rst(rst),
    .start(start),
    .start_vld(start_vld),
    .start_rdy(start_rdy)
  );

  ptr_seq_gen   i_ptr_seq_gen   (
    .clk(clk),
    .rst(rst),
    .out_ptr(out_ptr),
    .out_ptr_vld(out_ptr_vld),
    .start(start),
    .start_vld(start_vld),
    .start_rdy(start_rdy)
  );

endmodule
