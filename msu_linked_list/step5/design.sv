//`define LONG_PATH_NO_GAP

parameter n     = 16,
          Width = $clog2 (n),
		  Lat = 2,
          logLatPlus1 = $clog2(Lat + 1),
          logLat = $clog2(Lat);


typedef logic [Width - 1:0] Pointer;
typedef Pointer [Lat: 0] Record;


module start_req_gen
(
  input clk, rst, start_rdy, init_rdy,
  output Pointer start,
  output       start_vld
);

  logic [3:0] n_req;

  always_ff @ (posedge clk or posedge rst)
    if (rst)
      n_req <= '0;
  else if (start_rdy)
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
  output init_vld, init_rdy
);
  Pointer i;
  
  Pointer [n - 1: 0] first_elements = 
  '{
    0: 1,
    1: 2, 
    2: 6,
    3: 7,
    4: 9,
    default: 0
  };
  
  Pointer [n - 1: 0] next =
  '{
     1:  5,  5:  3,  3: 10, 10: 0,
     2:  4,  4:  0,
     6:  0,
     7: 15, 15:  8,  8:  0,
     9: 14, 14: 11, 11: 13, 13: 12, 12: 0,
    default: 0
  };
  
  assign init_ptr_next = next[init_ptr];
  assign init_vld = first_elements[i] != 0;
  assign init_rdy = ~init_vld;
  
  always_ff @ (posedge clk or posedge rst)
    if (rst) begin
      i <= '0;
      init_ptr <= first_elements['0];
    end else if (init_vld) begin
      if (init_ptr_next != 0) begin
        init_ptr <= init_ptr_next;
      end else begin
        i <= i + 1;
        init_ptr <= first_elements[i + 1];
      end
    end
endmodule


module accum(
  input clk, rst, in_we,
  input Pointer in_wa, in_wd,
  
  output logic out_we,
  output Pointer out_wa,
  output Record	out_wd
);
  Record cur;
  logic [logLatPlus1 - 1: 0] push_ptr, push_ptr_next;
  
  assign push_ptr_next = (push_ptr + 1) % (Lat + 1);
  
  filter i_filter(
    .in(cur),
    .out(out_wd)
  );
  
  always_ff @ (posedge clk or posedge rst) begin
    out_we <= '0;
    if (rst) begin
      push_ptr <= '0;
    end else begin
      if (in_we) begin
        cur[push_ptr] = in_wd;
        
        if (push_ptr == '0)
          out_wa <= in_wa;
        
        push_ptr <= (in_wd == '0) ? '0 : push_ptr_next;
        
        if (push_ptr_next == '0 || in_wd == '0)
          out_we <= 1;
      end
    end
  end
endmodule
  

module memory(
  input clk, rst, we,
  input Pointer ra, wa,

  input Record wd,
  output Record rd
);
  Record mem[n], rdarray[Lat];
  wire Record null_record;
  
  assign rd = rdarray[Lat - 1];
  
  genvar i;
  generate
    for (i = 0; i <= Lat; i = i + 1)
      assign null_record[i] = '0;
  endgenerate
  
  always_ff @ (posedge clk) begin
    rdarray[0] <= ra != 0 ? mem[ra] : null_record;
    for (int i = 1; i < Lat; i = i + 1)
      rdarray[i] <= rdarray[i - 1];
    
    if (we)
      mem[wa] <= wd;
  end
endmodule
  
  
module pr_en(
  input Record in,
  output logic  [logLatPlus1: 0] out
);
  always @ (in) begin
    out = Lat + 1;
    for (int i = Lat; i >= 0; i = i - 1)
      if (in[i] == 0)
        out = i;
  end 
endmodule


module filter(
  input Record in,
  output Record out
);
  logic [logLatPlus1: 0] code;
  
  pr_en i_pr_en(
    .in(in),
    .out(code)
  );
  genvar i;        
  generate
    for (i = 0; i <= Lat; i++)
      assign out[i] = i < code ? in[i] : 0;
  endgenerate 
endmodule


module ptr_seq_gen
(
  input clk,
  input rst,
  
  input [Width - 1: 0] init_ptr, init_ptr_next,
  input init_rdy, init_vld, start_vld,
  input Pointer start,
  output start_rdy,

  output Pointer out_ptr,
  output logic out_ptr_vld
);
  Pointer ra, wa, cur_out, cur_addr;
  Record rd, wd, data, buffer;
  logic [logLatPlus1 - 1: 0] pop_ptr, pop_ptr_next;
  logic cur_vld, data_vld, we;
  
  assign pop_ptr_next = (pop_ptr + 1) % (Lat + 1);
  
  accum i_accum(
    .rst(rst),
    .clk(clk),
    .in_we(init_vld),
    .in_wa(init_ptr),
    .in_wd(init_ptr_next),
    .out_we(we),
    .out_wa(wa),
    .out_wd(wd)
  );
  
  memory i_memory(.*);
  
  filter i_filter(
    .in(rd),
    .out(data)
  );
  
  always_comb
  begin
    `ifdef LONG_PATH_NO_GAP
    // Long path, no gap - check with Qflow
    // TODO
    
    if (out_ptr_vld)
      cur = ptr_next;
    else if (start_vld & init_rdy)
      cur = start;
    else
      cur = '0;
    
    `else
    // short path, gap - check with Qflow
    cur_addr = 0;
    if (pop_ptr == 0) begin
      if (data_vld == 1)
        buffer = data;
      cur_addr = buffer[Lat] != 0 ? buffer[Lat] : start;
    end
    
    cur_out = start_rdy ? start : buffer[pop_ptr];

    `endif
    cur_vld = (cur_out != '0);
  end

  always_ff @ (posedge clk) begin
    out_ptr <= cur_out;
    if (init_vld) begin
      out_ptr_vld 		 <= 0;
      data_vld			 <= '0;
      pop_ptr			 <= '0;
      for (int i = '0; i <= Lat; i = i + 1) 
        buffer[i] 		 <= '0;
    end else begin
      out_ptr_vld		 <= cur_vld;
      if (pop_ptr_next == 0)
        data_vld 		 <= 1;
      pop_ptr			 <= pop_ptr_next;
      ra 				 <= cur_addr;
    end
  end

  `ifdef LONG_PATH_NO_GAP
  assign start_rdy = ~cur_vld & lat_counter == 0;
  `else
  assign start_rdy = buffer[Lat] == 0 && pop_ptr_next == 0 && ~init_vld;
  `endif
  
endmodule


module req_gen(
  input        clk,
  input        rst,
  output Pointer out_ptr,
  output       out_ptr_vld
);
  
  Pointer start, init_ptr, init_ptr_next;
  wire start_vld, start_rdy, init_vld, init_rdy;

  init i_init(.*);
  start_req_gen i_start_req_gen (.*);
  ptr_seq_gen   i_ptr_seq_gen   (.*);

endmodule