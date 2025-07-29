`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 02:05:20
// Design Name: 
// Module Name: logic_gates
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


module logic_gates(
    input d0,d1,sel,
    output reg y
    );
    //assign y = sel ? d1 : d0;
    always @(*)
    begin 
        case (sel)
            0: y=d0;
            1: y=d1;
        endcase 
    end 
    
endmodule
