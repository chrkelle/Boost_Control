`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2018 02:55:42 PM
// Design Name: 
// Module Name: preset
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


module preset(  input  wire sys_clk_p,
                input  wire sys_clk_n,
                input  wire reset,
                input  wire dco_p,
                input  wire dco_n,
                input  wire da_p,
                input  wire da_n,
                input  wire db_p,
                input  wire db_n,
                input  wire start_adc,
                
                output wire aclk_p,
                output wire aclk_n,
                output wire cnv_p,
                output wire cnv_n,
                output wire  tp,
                output wire  tl,
                output wire [15:0] ADC_out,
                output wire  adc_done,
                output wire clk);
                
    wire clk_in, da, db, dco, aclk;
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) 
    IBUFDS_inst0 (.O(clk_in), .I(sys_clk_p), .IB(sys_clk_n));
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst1(.O(da), .I(da_p), .IB(da_n));
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst3(.O(db), .I(db_p), .IB(db_n));
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst4(.O(dco), .I(dco_p), .IB(dco_n));
    
    OBUFDS #(.IOSTANDARD("LVDS_25"))   // Low power="TRUE", Highest performance="FALSE"
    OBUFDS_inst0(.O(aclk_p), .OB(aclk_n), .I(aclk));
    clk_wiz_0 inst0(.clk_out1(clk), .clk_in1(clk_in)); 
    
    ADC_v5 adc(.clk(clk), .reset(reset), .dco(dco), .da(da),. db(db), .start(start_adc),
               .aclk(aclk), .cnv(cnv_p), .tp(tp), .tl(tl), .data(ADC_out), .adc_done(adc_done));
                
    
endmodule
