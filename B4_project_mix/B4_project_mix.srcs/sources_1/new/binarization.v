`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/05 19:04:06
// Design Name: 
// Module Name: binarization
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


module binarization(input CLK, input ref_pulse, input binarization_in, output binarization_out);
    wire ref_pulse;
    wire binarization_in;
    wire binarization_out;
    reg[19:0] counter_high = 0;
    reg[19:0] counter_low = 0;
    reg signal_out = 0;
    reg[1:0] edgestate = 0;
    reg[3:0] edgecount = 0;

    always@(posedge CLK) begin
        edgestate[0] <= ref_pulse;
        edgestate[1] <= edgestate[0];
        if (edgestate == 2'd1) begin
            if (edgecount == 2'd10) begin
                if (counter_high <= counter_low) begin
                    signal_out <= 0;
                end
                else begin
                    signal_out <= 1;
                end
                counter_high <= 0;
                counter_low <= 0;
                edgecount <= 0;
            end
            else begin
                edgecount <= edgecount + 1'b1; 
            end
        end
        else begin
            if (binarization_in == 0) begin
                counter_low <= counter_low + 1'b1;
            end
            else begin
                counter_high <= counter_high + 1'b1;
            end
        end
    end


    assign binarization_out = signal_out;

    // always@(posedge ref_pulse) begin
    //     if (counter_high < counter_low) begin
    //         signal_out <= 0;
    //     end
    //     else begin
    //         signal_out <= 1;
    //     end
    //     edgestate <= 1;
    // end

    // always@(posedge CLK) begin
    //     edgestate[0] <= binarization_in;
    //     edgestate[1] <= edgestate[0];
    //     if (edgestate == 2'd1) begin
    //         if (counter_high < counter_low) begin
    //             signal_out <= 0;
    //         end
    //         else begin
    //             signal_out <= 1;
    //         end
    //         counter_high <= 0;
    //         counter_low <= 0;
    //     end
    //     else begin
    //         if (binarization_in == 0) begin
    //             counter_low <= counter_low + 1'b1;
    //         end
    //         else begin
    //             counter_high <= counter_high + 1'b1;
    //         end
    //     end
    // end

    // always@(posedge binarization_in) begin
    //     if (regstate == 0) begin
    //         if (counter_high1 < counter_low1) begin
    //             signal_out <= 0;
    //         end
    //         else begin
    //             signal_out <= 1;
    //         end
    //     end
    //     else if (regstate == 1) begin
    //         if (counter_high2 < counter_low2) begin
    //             signal_out <= 0;
    //         end
    //         else begin
    //             signal_out <= 1;
    //         end
    //     end
    //     regstate <= ~regstate;
    // end

    // always@(negedge binarization_in) begin
    //     if (regstate == 0) begin
    //         if (counter2 < counter3) begin
    //             signal_out <= 1;
    //         end
    //         else begin
    //             signal_out <= 0;
    //         end
    //     end
    //     else if (regstate == 1) begin
    //         if (counter3 < counter1) begin
    //             signal_out <= 1;
    //         end
    //         else begin
    //             signal_out <= 0;
    //         end
    //     end
    //     else if (regstate == 2) begin
    //         if (counter1 < counter2) begin
    //             signal_out <= 1;
    //         end
    //         else begin
    //             signal_out <= 0;
    //         end
    //     end
    //     edgestate <= 0;
    // end

    // always@(binarization_in) begin
    //     if (regstate == 2) begin
    //         regstate <= 0;
    //     end
    //     else begin
    //         regstate <= regstate + 1'b1;
    //     end
    // end
    // always@(posedge mixer_out) begin
    //     if(counter_high == counter_low) begin
    //         signal_out <= ~signal_out;
    //     end
    // end

    // always@(negedge mixer_out) begin
    //     if(counter_high == counter_low) begin
    //         signal_out <= ~signal_out;
    //     end
    // end

endmodule
