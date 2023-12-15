`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/05 14:12:22
// Design Name: 
// Module Name: mixer
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


module mixer(input ref_pulse, input pdm_pulse, output mixer_out);
    
    assign mixer_out = ref_pulse ^ pdm_pulse;
    
endmodule
