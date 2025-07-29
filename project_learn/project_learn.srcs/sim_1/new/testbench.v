`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 02:11:03
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench(    );
    reg sel, d0,d1;
    wire y;
    logic_gates uut(d0,d1,sel,y);

    initial
    begin
    sel=0; d0=0; d1=0;
    #10
    sel=0; d0=0; d1=1;
    #10
    sel=0; d0=1; d1=0;
    #10
    sel=0; d0=1; d1=1;
    #10
    sel=1; d0=0; d1=0;
    #10
    sel=1; d0=0; d1=1;
    #10
    sel=1; d0=1; d1=0;
    #10
    sel=1; d0=1; d1=1;
    #10 $finish;
    end

endmodule
