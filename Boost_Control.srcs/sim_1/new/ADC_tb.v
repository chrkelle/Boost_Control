`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2018 11:00:48 AM
// Design Name: 
// Module Name: ADC_tb
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


module ADC_tb(

    );
    //system inputs
    reg sys_clk_p, sys_clk_n;
    reg start_adc, step_up, reset, dco_p, dco_n, da_p, da_n, db_p, db_n;
    //system outputs
    wire clk;
    wire aclk_p, aclk_n, cnv_p, cnv_n, tp, tl, adc_done;
    wire [15:0] ADC_out;

    //system wires
    integer i = 0;
    

    preset adc(.sys_clk_p(sys_clk_p), .sys_clk_n(sys_clk_n), .reset(reset), 
               .dco_p(dco_p), .dco_n(dco_n), .da_p(da_p), .da_n(da_n), 
               .db_p(db_p), .db_n(db_n), .start_adc(start_adc), .aclk_p(aclk_p), .aclk_n(aclk_n), 
               .cnv_p(cnv_p), .cnv_n(cnv_n), .tp(tp), .tl(tl), .ADC_out(ADC_out),
               .adc_done(adc_done), .clk(clk));
    

    always begin
        #2.5
        sys_clk_p = sys_clk_n;
        sys_clk_n = ~sys_clk_n;
    end
    
    always begin
        #1.3
        dco_p = aclk_p;
        dco_n = aclk_n;
    end
    
    initial begin
        sys_clk_p = 0;
        sys_clk_n = 1;
        dco_p = 1;
        dco_n = 0;
        da_p = 1;
        da_n = 0;
        db_p = 1;
        db_n = 0;
        start_adc = 0;
        step_up = 0;
        reset = 1;
        
         for(i = 0; i < 200; i = i + 1) begin
                       @(negedge clk);
                   end
        
        reset = 0;
        start_adc = 1;
     
        @(negedge clk);
        @(negedge clk);
        
        start_adc = 0;
        
        @(posedge dco_p);   //00
        da_p = 0;
        da_n = 1;
        db_p = 0;
        db_n = 1;
        @(negedge dco_p);   //11
        da_p = 1;
        da_n = 0;
        db_p = 1;
        db_n = 0;
        @(posedge dco_p);   //00
        da_p = 0;
        da_n = 1;
        db_p = 0;
        db_n = 1;
        @(negedge dco_p);   //00
        da_p = 0;
        da_n = 1;
        db_p = 0;
        db_n = 1;
        @(posedge dco_p);   //11
        da_p = 1;
        da_n = 0;
        db_p = 1;
        db_n = 0;
        @(negedge dco_p);   //11
        da_p = 1;
        da_n = 0;
        db_p = 1;
        db_n = 0; 
        @(posedge dco_p);   //11
        da_p = 1;
        da_n = 0;
        db_p = 1;
        db_n = 0; 
        
        @(negedge clk);
        
    end
endmodule 
