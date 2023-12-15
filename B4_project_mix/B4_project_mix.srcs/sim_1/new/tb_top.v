`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/05 14:46:36
// Design Name: 
// Module Name: tb_top
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


module tb_top();
    reg CLK;
    reg ref_c1;
    reg c1;
    reg fast_mode;
    // wire UARTTX;
    wire ref_c1;
    wire c1;
    // wire prescaler_pulse;

    top top(
        .OEA(OEA),
        .OEB(OEB),
        .CLK(CLK),
        .c1(c1),
        .binarization_out(bina1rization_out)
    );

    always #10 CLK <= ~CLK;
    //always #25000 ref_c1 <= ~ref_c1;
    always begin
        if (fast_mode) begin
            #24875 c1 <= ~c1;
        end
        else begin
            #24750 c1 <= ~c1;
        end
    end

    initial begin
        CLK = 0;
        //ref_c1 = 0;
        c1 = 0;
        fast_mode = 0;

        repeat(1000) @(posedge ref_c1);

        fast_mode = 1;
        
    end
endmodule
