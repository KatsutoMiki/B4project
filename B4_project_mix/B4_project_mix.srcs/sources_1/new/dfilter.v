`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/14 11:14:04
// Design Name: 
// Module Name: dfilter
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


module dfilter(
	input indata,
	input CLK,
	output out
	);

wire indata;
wire out;	
reg [5:0] counter=6'b0;
reg [14:0] d_clk=15'd0;
reg [11:0] filter=12'b0;
reg fil= 1'b0;

always@(posedge CLK)
begin
	d_clk <= d_clk + 15'd1;
	if(d_clk == 15'd500)//100kHz
	begin
		filter <= {filter[11:0], indata};
		counter <= filter[0]+filter[1]+filter[2]+filter[3]+filter[4]+filter[5]+filter[6]+filter[7]+filter[8]+filter[9]+filter[10]+filter[11]+filter[12];
		d_clk <= 15'd0;
		if(counter > 6'd8)
		begin
			fil <= 1'b1;
		end
		if(counter < 6'd3)
		begin
			fil <= 1'b0;
		end
	end
end

assign out = fil;

endmodule