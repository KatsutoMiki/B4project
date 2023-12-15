`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/10 19:08:34
// Design Name: 
// Module Name: prescaler
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


module prescaler(input CLK, output prescaler_pulse);
	reg[15:0] countClk = 0;
	reg CLK_2 = 0;
    wire prescaler_pulse;

    parameter PULSETIMING = 16'd1200;

	always@(posedge CLK) begin
		if(countClk == PULSETIMING) begin
			countClk <= 0; //カウンターリセット
			CLK_2 <= ~CLK_2;
		end
        else begin
			countClk <= countClk + 1'b1;  //1bitカウント
		end
	end

    assign prescaler_pulse = CLK_2;
endmodule
