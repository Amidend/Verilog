module dff_sync_rst_n
(
    input clk,
    input rst_n,
    input d,
    output reg q
);
always @ (posedge clk) //always @ (posedge clk or negedge rst_n) для асинхронного
    if (!rst_n)
        q <= 0;
    else
        q <= d;
endmodule