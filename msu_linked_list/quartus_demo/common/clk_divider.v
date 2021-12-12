module clk_divider
# (
    parameter w = 24
)
(
    input  clk,
    input  rst_n,
    output divided_clk
);

    reg [w - 1:0] cnt;

    always @ (posedge clk)
            cnt <= cnt + 1'b1;

    assign divided_clk = cnt [w - 1];

endmodule
 