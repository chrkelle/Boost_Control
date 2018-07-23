`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2018 10:43:51 AM
// Design Name: 
// Module Name: controller_tb
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


module controller_tb();
    
    //Controller inputs
    reg reset, step_up, ADC_done;
    reg [15:0] ADC_in;
    //Controller outputs
    wire [31:0] i;
    wire control_done;
    //System inputs
    reg sys_clk_p, sys_clk_n;
    //System outputs
     wire clk_in, clk;
     //Testbench
     integer x = 0;
    
    //Definitions
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) 
    IBUFDS_inst0 (.O(clk_in), .I(sys_clk_p), .IB(sys_clk_n));
    clk_wiz_0 inst0(.clk_out1(clk), .clk_in1(clk_in)); 
    controller ctrl(.clk(clk), .reset(reset), .step_up(step_up),
                    .ADC_done(ADC_done), .ADC_in(ADC_in),
                    .i(i), .control_done(control_done));
        
    //Start test bench
    always begin
        #2.5
        sys_clk_p = sys_clk_n;
        sys_clk_n = ~sys_clk_n;
    end
    
    initial begin
        sys_clk_p = 0;
        sys_clk_n = 1;
        reset = 1;
        step_up = 0;
        ADC_done = 0;
        ADC_in = 0;
        
        for(x = 0; x < 100; x = x + 1) begin
            @(negedge clk);
        end
        
        reset = 0;
        ADC_done = 1;
        
        @(negedge clk);
        @(negedge clk);
        
        ADC_done = 0;
        
    end
    
endmodule
