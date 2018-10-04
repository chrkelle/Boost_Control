`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 09:55:52 AM
// Design Name: 
// Module Name: boost_tb
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


module main_tb();

    reg sys_clk_p, sys_clk_n, reset_in, startup_in, step_up_in;
    reg comp_edge, sat_flg, dco_p, dco_n, da_p, da_n, db_p, db_n;
    
    wire dacclk, hi_muxsel;
    wire [9:0] ctrl_2_dac;
    wire aclk_p, aclk_n, cnv_p, cnv_n, tp, tl;
    wire sw_on, FF_preset_bar, FF_clear_bar, exp_flg_bar;
    wire clk, ctrl_ready_flg;
    wire step_up;
    wire [15:0] ADC_out;
    wire ctrl_start;
    wire [31:0] i_out;
    wire signed [15:0] ADC_ref;
    wire signed [15:0] ADC_error;
    wire test;
    wire signed [31:0] ki, kp;
    wire [15:0] count;
    
    integer i = 0;
    
    boost inst0(.sys_clk_p(sys_clk_p), .sys_clk_n(sys_clk_n),
               .reset_in(reset_in), .startup_in(startup_in),
               .step_up_in(step_up_in), .comp_edge(comp_edge),
               .sat_flg(sat_flg), .dco_p(dco_p), .dco_n(dco_n),
               .da_p(da_p), .da_n(da_n), .db_p(db_p), .db_n(db_n),
               .dacclk(dacclk), .hi_muxsel(hi_muxsel), 
               .ctrl_2_dac(ctrl_2_dac), .aclk_p(aclk_p),
               .aclk_n(aclk_n), .cnv_p(cnv_p), .cnv_n(cnv_n),
               .tp(tp), .tl(tl), .sw_on(sw_on),
               .FF_preset_bar(FF_preset_bar), .FF_clear_bar(FF_clear_bar),
               .exp_flg_bar(exp_flg_bar), .clk(clk),
               .ctrl_ready_flg(ctrl_ready_flg), .step_up(step_up), .ctrl_start(ctrl_start));

    always begin
        #2.5
        sys_clk_p = sys_clk_n;
        sys_clk_n = ~sys_clk_n;
    end
    
    always begin
        #0.7
        dco_p = aclk_p;
        dco_n = aclk_n;
    end

    initial begin
        
        sys_clk_p = 0;
        sys_clk_n = 0;
        reset_in = 1;
        startup_in = 1;
        step_up_in = 0;
        comp_edge = 0;
        sat_flg = 0;
        da_p = 1;
        da_n = 0;
        db_p = 1;
        db_n = 0;
        
        for(i = 0; i < 2000; i = i + 1) begin
            @(negedge clk);
        end
        
        reset_in = 0;
        //step_up_in = 1;
        
        for(i = 0; i < 2000; i = i + 1) begin
            @(negedge clk);
        end
        
        comp_edge = 1;
        step_up_in = 1;
        
        for(i = 0; i < 50; i = i + 1) begin
            @(negedge clk);
            comp_edge = 1 & FF_clear_bar;
        end
       
        comp_edge = 0;

        for(i = 0; i < 2000; i = i + 1) begin
            @(negedge clk);
        end
        
        comp_edge = 1;
        sat_flg = 1;
    end

endmodule
