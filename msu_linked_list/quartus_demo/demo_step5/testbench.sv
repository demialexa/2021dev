include "V/design.sv";

module test();
  logic clk = '0;
  logic rst;
  Pointer out_ptr;
  wire  out_ptr_vld;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, test);

    rst = 1;
    repeat(2) @ (posedge clk);
    rst = 0;
    repeat(50) @ (posedge clk);
    $finish;
  end

  int cycle = 0;
  
  always @ (posedge clk)
  begin
    $write ("%d rst=%b", cycle, rst);
    
    if (out_ptr_vld)
      $write ("%d", out_ptr);

    $display;
    
    cycle ++;
  end

  always begin
    #5 clk = ~clk;
  end
  
  req_gen i_req_gen(.*);
endmodule
