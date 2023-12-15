`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/05 14:10:23
// Design Name: 
// Module Name: PDM
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


module PDM(input a,inout b,output c);
    wire a,b,c;

    assign b = ~a;
    assign c = ~b;
    
endmodule
