`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2018 08:45:20 AM
// Design Name: 
// Module Name: ADC
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
//200MHz , 5ns
`define tcvnh 12 //was 6
`define tconv 23 //was 23
`define tfclk 26 //was 25
`define acq   15

module ADC_v4 (input  wire clk,
            input  wire reset,
            input  wire dco,
            input  wire da,
            input  wire db,
            input  wire start,
            
            output reg  aclk,
            output reg  cnv,
            output reg  tp,
            output reg  tl,
            output reg [15:0] data,
            output reg  adc_done);
            
    reg n_tp, n_aclk, n_cnv, n_adc_done;
    reg [5:0]  count;
    reg [1:0]  adc_count;
    reg [5:0]  n_count;	
    reg [2:0]  n_state;
    reg [15:0] n_data;
    reg [2:0]  state;
    reg n_tl;
    wire x, y, dap2, dbp2, dcop2, dcop3, dcop4;
                     
    sync_reg sync( .clk(clk),
                   .sync_in_da(da),
                   .sync_in_db(db),
                   .sync_in_dco(dco),
                   .sync_out_dap2(dap2),
                   .sync_out_dbp2(dbp2),
                   .sync_out_dcop2(dcop2),
                   .sync_out_dcop3(dcop3),
                   .sync_out_dcop4(dcop4));
                   
    assign x = dcop4 & ~dcop3;
    assign y = ~dcop4 & dcop3;
                 
    always@* begin
                     
        n_tp         = tp;
        n_tl         = tl;
        n_state      = state;
        n_aclk       = aclk;
        n_cnv        = cnv;
        n_count      = count + 1;
        n_data       = data;
        n_adc_done   = adc_done;
 
         case(state)
             0:
                 begin
                    if(start) begin
                         n_state     = 1;
                         n_count     = 0;
                         n_cnv       = 1;
                     end
                     if(adc_done & count[1]) begin
                        n_adc_done = 0;
                     end
                 end
             1:
                 begin
                     if(count >= `tcvnh) begin
                         n_state    = 2;
                         n_cnv      = 0;
                         n_adc_done = 0;
                     end                
                 end        
             2:
                 begin
                     if(count >= `tconv) begin
                         n_state = 3;
                     end
                 end
             3:
                 begin
                     if(count >= `tfclk) begin
                         n_state = 4;
                         n_count = 0;

                     end
                 end
             4:
                 begin
                     if(count >= `acq) begin
                        n_state = 5;
                        n_count = 0;
                     end
                     else if(count[1] & ~count[0]) begin
                         n_aclk = ~aclk;
                     end
                 end              
             5:
                begin
                    if(count >=8) begin
                        n_state    = 0;
                        n_state    = 0;
                        n_count    = 0;
                        n_adc_done = 1;
                    end
                end
         endcase
     end
     
     always @(posedge clk) begin  
         if(reset) begin
             state     <= 0;
             cnv       <= 1'b0;
             tp        <= 1'b0;
             tl        <= 1'b1;
             count     <= 4'b0;
             aclk      <= 0;
             adc_done  <= 1'b0;
         end
         else begin
             state     <= n_state;
             cnv       <= n_cnv;
             tp        <= n_tp;
             tl        <= n_tl;
             count     <= n_count;
             aclk      <= n_aclk;
             adc_done  <= n_adc_done;
         end
     end
     
     always @(posedge clk) begin  
         if(x||y) begin
         data [15:8] <= n_data[13:6];
         data [7]    <= dap2;
         data [6]    <= dbp2;
         end
         else if(state == 3) begin
            data [7] <= da;
            data [6] <= db;
         end
     end
     
 endmodule                
     