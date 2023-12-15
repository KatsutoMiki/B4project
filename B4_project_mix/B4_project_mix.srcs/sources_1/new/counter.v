`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/15 16:35:59
// Design Name: 
// Module Name: counter
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


module counter(
        input pulse, input CLK, output result
    );

    wire[15:0] result;

    reg[1:0] pulseRead = 0;
    reg[15:0] pulseCount = 0;
    reg[15:0] count = 0;
    reg[15:0] countResult = 0;

    parameter endtiming = 16'd50000;

    always@(posedge CLK) begin
        pulseRead[1] <= pulseRead[0];
        pulseRead[0] <= pulse;

        if (count != endtiming) begin
            
        end
    end

endmodule
