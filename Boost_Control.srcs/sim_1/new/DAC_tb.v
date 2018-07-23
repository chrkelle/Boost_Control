`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2018 11:18:06 AM
// Design Name: 
// Module Name: DAC_tb
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


module DAC_tb();

    //System inputs
    reg sys_clk_p, sys_clk_n;
    //DAC inputs
    reg start, reset;
    //System outputs
    wire clk_in, clk;
    //DAC outputs
    wire dacclk, dac_done;
    //Other
    integer i = 0;
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) 
    IBUFDS_inst0 (.O(clk_in), .I(sys_clk_p), .IB(sys_clk_n));
    clk_wiz_0 inst0(.clk_out1(clk), .clk_in1(clk_in));
    
    DAC dac(.clk(clk), .start(start), .reset(reset), .dacclk(dacclk), .dac_done(dac_done));
    
    always begin
        #2.5
        sys_clk_p = sys_clk_n;
        sys_clk_n = ~sys_clk_n;
    end
    
    initial begin
        sys_clk_p = 0;
        sys_clk_n = 1;
        reset = 1;
        start = 0;
        
        for(i = 0; i < 200; i = i + 1) begin
            @(negedge clk);
        end
        
        reset = 0;
        start = 1;
        
        @(negedge clk);
        @(negedge clk);
        
        start = 0;   
    end
        
endmodule
