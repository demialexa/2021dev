`define LONG_PATH_NO_GAP

parameter n     = 16,
          Width = $clog2 (n),
		  Lat = 3,
          logLatPlus1 = $clog2(Lat + 1),
          logLat = $clog2(Lat);

typedef logic [Width - 1:0] Pointer;


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
  else if (start_rdy & init_rdy)
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
  
module memory(
  input we, clk, rst,
  input Pointer ra, wa, wd,
  output Pointer rd[Lat - 1: 0]
);
  Pointer mem[n - 1: 0][Lat - 1: 0];
  Pointer rdarray[Lat - 1: 0][Lat - 1: 0];
  logic [logLat - 1: 0] push_ptr;
  Pointer base;
  
  assign rd = rdarray[Lat - 1];
  
  always_ff @ (posedge clk) begin
    rdarray[0] <= mem[ra];
    for (int i = 1; i < Lat; i = i + 1)
      rdarray[i] <= rdarray[i - 1];
  end
    
  always_ff @ (posedge clk or posedge rst) begin
    if (rst) begin
      push_ptr <= '0;
    end else begin
      if (we)
        if (push_ptr == 0) begin
          base <= wa;
          mem[wa][push_ptr] <= wd;
        end else begin
          mem[base][push_ptr] <= wd;
        end
        push_ptr <= wd == 0 ? 0 : (push_ptr + 1) % Lat;
    end
  end
endmodule

module pr_en(
  input Pointer in[Lat - 1: 0],
  output logic  [logLat: 0] out
);
  always @ (in) begin
    out = Lat;
    for (int i = Lat - 1; i >= 0; i = i - 1)
      if (in[i] == 0)
        out = i;
  end 
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
  
  Pointer cur;
  wire Pointer ptr_next;
  logic cur_vld;
  
  Pointer ra, rd[Lat - 1: 0], buffer[Lat - 1: 0];
  logic [logLat - 1: 0] pop_ptr, code;
  
  
  memory i_memory(
    .rst(rst),
    .clk(clk),
    .we(init_vld),
    .wa(init_ptr),
    .wd(init_ptr_next),
    .ra(ra),
    .rd(rd) // ptr_next
  );
  
  pr_en i_pr_en(
    .in(buffer),
    .out(code)
  );
  
  assign ptr_next = buffer[pop_ptr];
  
  always_comb
  begin
    `ifdef LONG_PATH_NO_GAP
    // Long path, no gap - check with Qflow
    `else
    // short path, gap - check with Qflow

    if (out_ptr_vld)
      cur = ptr_next;
    else if (start_vld & init_rdy)
      cur = start;
    else
      cur = '0;

    `endif
    cur_vld = (buffer[pop_ptr] != '0);
  end

  always_ff @ (posedge clk or posedge rst)
    if (rst | init_vld) begin
      out_ptr_vld <= '0;
      pop_ptr <= 0;
      for (int i = '0; i < Lat; i = i + 1) 
        buffer[i] <= '0;
    end else begin
      if (pop_ptr == Lat - 1)
        buffer <= rd;
      out_ptr_vld <= cur_vld;
      pop_ptr <= (pop_ptr + 1) % Lat;
    end

  assign start_cond = start_vld && init_rdy && cur_vld;
  
  always_ff @ (posedge clk) begin
    ra <= code != Lat ? start : buffer[Lat - 1];
    out_ptr <= pop_ptr == Lat - 1 ? rd['0] : buffer[pop_ptr];
  end

  `ifdef LONG_PATH_NO_GAP
  assign start_rdy = code != Lat && pop_ptr == 0;
  `else
  assign start_rdy = ~cur_vld & lat_counter == 0;
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