// `define LONG_PATH_NO_GAP

parameter n     = 16,
          Width = $clog2 (n);

typedef logic [Width - 1:0] Pointer;


module start_req_gen
(
  input clk, rst, start_rdy, init_vld,
  output Pointer start,
  output       start_vld
);

  logic [3:0] n_req;

  always_ff @ (posedge clk or posedge rst)
    if (rst)
      n_req <= '0;
  else if (start_rdy & ~init_vld)
      n_req <= n_req + 4'd1;

  assign start_vld = n_req != 4'd8;

  always_comb
    case (n_req)
    4'd0:    start = Pointer' (7);
    4'd1:    start = Pointer' (6);
    4'd2:    start = Pointer' (2);
    4'd3:    start = Pointer' (1);
    4'd4:    start = Pointer' (0);
    default: start = Pointer' (9);
    endcase

endmodule


module init(
  input clk, rst,
  output Pointer init_ptr, init_ptr_next,
  output init_vld
);
  logic [Width: 0] i; // 1 bit wider then Pointer to prevent overflow
  
  Pointer [n - 1: 0] next =
  '{
     1:  5,  5:  3,  3: 10, 10: 0,
     2:  4,  4:  0,
     6:  0,
     7: 15, 15:  8,  8:  0,
     9: 14, 14: 11, 11: 13, 13: 12, 12: 0,
    default: 0
  };
  
  assign init_ptr= i[Width - 1: 0];
  assign init_ptr_next = next[init_ptr];
  assign init_vld = i < n;
  
  always_ff @ (posedge clk or posedge rst)
    if (rst)
      i <= '0;
  else if (init_vld)
      i <= i + 1;
  
endmodule
    

module ptr_seq_gen
(
  input clk,
  input rst,
  
  input [Width - 1: 0] init_ptr, init_ptr_next,
  input init_vld, start_vld,
  input Pointer start,
  output start_rdy,

  output Pointer out_ptr,
  output logic out_ptr_vld
);
  
  Pointer next[n - 1: 0];
  Pointer cur;
  logic cur_vld;
  
  always_comb
  begin
    cur = '0;
    
    `ifdef LONG_PATH_NO_GAP
    // Long path, no gap - check with Qflow
    
    if (out_ptr_vld)
      cur = next [out_ptr];

    if (cur == '0 & start_vld & ~init_vld)
      cur = start;

    `else
    // short path, gap - check with Qflow
    
    if (out_ptr_vld)
      cur = next [out_ptr];
    else if (start_vld & ~init_vld)
      cur = start;

    `endif
    
    cur_vld = (cur != '0);
  end

  always_ff @ (posedge clk or posedge rst)
    if (rst | init_vld)
      out_ptr_vld <= '0;
    else
      out_ptr_vld <= cur_vld;
  
  always_ff @ (posedge clk) begin
    if (init_vld)
      next[init_ptr] <= init_ptr_next;
    out_ptr <= cur;
  end

  `ifdef LONG_PATH_NO_GAP
  assign start_rdy = cur == '0 | next[cur] == '0;
  `else
  assign start_rdy = ~cur_vld;
  `endif
  
endmodule


module req_gen(
  input        clk,
  input        rst,
  output Pointer out_ptr,
  output       out_ptr_vld
);
  
  Pointer start, init_ptr, init_ptr_next;
  wire start_vld, start_rdy, init_vld;

  init i_init(.*);
  start_req_gen i_start_req_gen (.*);
  ptr_seq_gen   i_ptr_seq_gen   (.*);

endmodule