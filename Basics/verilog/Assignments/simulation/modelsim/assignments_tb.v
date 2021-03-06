`timescale 1ns / 1ps

module assignments_tb();

    reg clk;
    reg rst;
    wire[7:0] data_nba;
    wire[7:0] data_ba;

assignments uut(.clk(clk), .rst(rst), .data_nba(data_nba), .data_ba(data_ba));

initial
begin
    rst = 1;
    clk = 0;
    #200
    rst = 0;
    #200
    rst = 1;
end

always
begin
    #50 clk <= ~clk;
end

endmodule
