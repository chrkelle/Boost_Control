`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2018 04:23:40 PM
// Design Name: 
// Module Name: boost_cpu
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


module cpu_v2# (localparam adc_delay = 85,off_time = 125,sw_on_delay= 195,clear_delay = 200, preset_delay = 4)
(
input wire clk,rst,
input wire comp_edge, sat_flg,
input wire ctrl_ready_flg,
input wire startup,

output wire FF_preset_bar,
output wire FF_clear_bar,
output wire exp_flg_bar,

output reg sw_on,
output reg ctrl_start,
output wire test,
output reg cntr_load

// for test
//output wire [9:0] counter,
//output reg cntr_load,
//(* FSM_ENCODING="ONE-HOT", SAFE_IMPLEMENTATION="YES", SAFE_RECOVERY_STATE="10'b0000000000" *)reg[9:0] state
);

(* FSM_ENCODING="ONE-HOT", SAFE_IMPLEMENTATION="YES", SAFE_RECOVERY_STATE="10'b0000000000" *)reg[11:0] state;

localparam [11:0] 
s0 =12'b000000000000,
s1 =12'b000000000001,  // delay for switch on ringing
s2 =12'b000000000010,  // start controller
s3 =12'b000000000100,  // on timmer
s4 =12'b000000001000,  // switch off delay
s5 =12'b000000010000,  // FF clear
s6 =12'b000000100000,  // valley current detection
s7 =12'b000001000000, 
s8 =12'b000010000000,
s9 =12'b000100000000,
s10=12'b001000000000,
s11=12'b010000000000;

wire [9:0] counter;
reg ctrl_ready_detect;
reg [2:0]ctrl_start_reg;
//reg [7:0]FF_clear_reg;
reg FF_preset,FF_clear,exp_flg;
reg comp_edge_p,ctrl_ready_flg_p;

on_time_counter on_time_counter_inst (
  .CLK(clk),      // input wire CLK
  .SINIT(cntr_load),  // input wire SINIT : falling edge reset
  .Q(counter)          // output wire [9 : 0] Q
);

assign FF_preset_bar = ~FF_preset;
assign FF_clear_bar = ~FF_clear;
assign exp_flg_bar = ~exp_flg;
assign test = (state == s7);


   always@(posedge clk) begin
        comp_edge_p <= comp_edge;
        ctrl_ready_flg_p <= ctrl_ready_flg;
   end

   always@(posedge clk) begin
      if (rst) begin
              state             <= s0;
              sw_on             <= 1'b0; 
              FF_clear          <= 1'b1;
              FF_preset         <= 1'b0; 
              ctrl_start        <= 1'b0;  
              ctrl_start_reg    <= 3'b000;             
              ctrl_ready_detect <= 1'b0;
              exp_flg           <= 1'b0;
              cntr_load         <= 1'b1;
      end
      else  begin
 (* PARALLEL_CASE *) case (state)
     s0 : begin     //SW OFF, CLEAR DOUT                   
         if (startup==1)
             state <= s1;
         else 
             state <= s0;
         
//         if (startup==1)
//              cntr_load <= 1'b0; 
//         else 
//             cntr_load  <= 1'b1;       
         
         sw_on              <= 1'b0;
         FF_clear           <= 1'b1;
         FF_preset          <= 1'b0; 
         ctrl_start         <= 1'b0;  
         ctrl_start_reg     <= 3'b000;             
         ctrl_ready_detect  <= 1'b0;
         exp_flg            <= 1'b0;
    end
    
    s1: begin
        state <= s2;
    end
    
    s2: begin
        state <= s3;
        cntr_load <= 0;
    end
    
    s3: begin
        state <= s4;
    end
    
    s4: begin
        state <= s5;
    end
    
    s5: begin
        state <= s6;
    end
    
    s6: begin                    //adc sampling delay
        if (counter >= adc_delay)             
            state <= s7;
        else
            state <= s6;
            
        ctrl_start_reg <= 3'b110;         
     end
     
     
     s7: begin                  // SW OFF LIMITED BY CONTROL TIME, START CONTROL
        if (counter >= off_time)           
            state <= s8;
        else
          state <= s7; 
          
          //  2 clk period width pulse  
          ctrl_start <= ctrl_start_reg[2];
          ctrl_start_reg <= {ctrl_start_reg[1:0],1'b0};
          
          // exception throw
          if (ctrl_ready_flg & ~ctrl_ready_flg_p)
              ctrl_ready_detect <= 1'b1;  
          else 
              ctrl_ready_detect <= 1'b0;          
      end


      s8 : begin   // switch-on constant min, lift clear on dout
        if (counter >= sw_on_delay)
            state<=s9;            
        else          
            state<=s8;
                                
        sw_on <= 1'b1;
        if (ctrl_ready_flg & ~ctrl_ready_flg_p)
            ctrl_ready_detect <= 1'b1;  
        else 
            ctrl_ready_detect <= 1'b0;  
      end
      
      s9: begin //clear low
       if(counter >= clear_delay)
        state<=s10;
       else
        state<=s9;
        
        FF_clear <= 1'b0;
      end
      
      
      s10 : begin   // saturation detection    
            cntr_load <= 1'b1;
            if (ctrl_ready_detect == 1'b1) 
                exp_flg <= 1'b0;  
            
            if (sat_flg == 1'b0) //if SP < DACS keep switch on
                state <= s11;
            else begin
                state <= s0;     //if SP > DACS turn off switch
                cntr_load <= 1'b1;
            end
      end
      
      s11 : begin   // peak current detection
        if (comp_edge || sat_flg) begin
            state <= s0;
            cntr_load <= 1'b1; 
        end
        else
            state <= s11;  
        end   
        
 

       
             
       default: begin  // Fault Recovery
			state<=s0;             
	   end
 endcase
 end
 end
 						
endmodule
