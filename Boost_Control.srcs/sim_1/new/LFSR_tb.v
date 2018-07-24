`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2018 08:47:12 AM
// Design Name: 
// Module Name: LSFR_tb
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


module LFSR_tb();

    reg sys_clk_p, sys_clk_n, reset;
    wire clk, lsb;
    integer i = 0;
    
    always begin
        #2.5
        sys_clk_p = sys_clk_n;
        sys_clk_n = ~sys_clk_n;
    end
    
    preset_LFSR inst0(.sys_clk_p(sys_clk_p), .sys_clk_n(sys_clk_n), .clk(clk), 
                      .reset(reset), .lsb(lsb));
    
    initial begin
        sys_clk_p = 0;
        sys_clk_n = 1;
        reset = 1;
        
        for(i = 0; i < 200; i = i + 1)
            @(negedge clk);
            
        reset = 0;
        
        
    end
endmodule
