`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2018 08:50:47 AM
// Design Name: 
// Module Name: preset_LFSR
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


module preset_LFSR(input  wire sys_clk_p,
                input  wire sys_clk_n,
                input  wire reset,
                output wire clk,
                output wire lsb);
    
    wire clk_in;
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) 
    IBUFDS_inst0 (.O(clk_in), .I(sys_clk_p), .IB(sys_clk_n));
    clk_wiz_0 inst0(.clk_out1(clk), .clk_in1(clk_in));
    
    LFSR inst1(.clk(clk), .reset(reset), .lsb(lsb)); 
    
    
endmodule
