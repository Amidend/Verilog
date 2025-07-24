module jktrig(
    input clk,
    input j,
    input k,
    output q,
    output q_n

);
    assign q_n = ~q;   

    always @(posedge clk) // выполнить, когда clk переходит из 0 в 1
    begin
        q <= (j & ~q) | (~k & q) | (j & k & ~q); //неблокирующее присваивание <=
    end

endmodule