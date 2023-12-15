`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 15:48:40
// Design Name: 
// Module Name: top
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


module top(
        output OEA, 
        output OEB, 
        input CLK, 
        input c1, 
        input ref_c1, 
        output binarization_out, 
        output mixer_out
    );

    wire OEA = 0;
    wire OEB = 0;
    wire c1;
    wire ref_c1;
    //wire prescaler_pulse;
    wire binarization_out;
    wire out;
    
    UART UART(
        .UARTDATA(UARTDATA),
        .CLK(CLK),
        .START(START),
        .UARTTX(UARTTX)
    );




    mixer mixer(
        .ref_pulse(ref_c1),
        .pdm_pulse(c1),
        .mixer_out(mixer_out)
    );

    dfilter dfilter(
        .indata(mixer_out),
        .CLK(CLK),
        .out(binarization_out)
    );

    // prescaler prescaler(
    //     .CLK(CLK),
    //     .prescaler_pulse(prescaler_pulse)
    // );

endmodule
