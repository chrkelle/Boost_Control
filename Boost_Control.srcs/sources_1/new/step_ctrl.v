`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2018 08:21:27 AM
// Design Name: 
// Module Name: step_up
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


module step_ctrl(clk, reset, step_up, ki, kp, ADC_ref);

    input  wire clk, reset, step_up;
    output reg signed [31:0] ki, kp;
    output reg signed [15:0] ADC_ref;
    
    reg        [2:0] state, n_state;
    wire       [15:0] count;
    reg               SINIT, n_SINIT;
    reg signed [31:0] n_ki, n_kp;
    reg signed [15:0] n_ADC_ref;
    
    step_counter your_instance_name (
      .CLK(clk),      // input wire CLK
      .SINIT(SINIT),  // input wire SINIT
      .Q(count)       // output wire [15 : 0] Q
    );
    
    always@* begin
        n_state   = state;
        n_SINIT   = SINIT;
        n_ki      = ki;
        n_kp      = kp;
        n_ADC_ref = ADC_ref;
    
        case(state)
            0: begin
                if(step_up)
                    n_state = 1;
                    n_SINIT = 1;
            end
            1: begin
                n_state = 2;
                n_SINIT = 0;
            end
            
            2: begin
                n_state = 3;
            end
            
            3: begin //20 - 25V
                n_ki      = 50;
                n_kp      = 2800;
                n_ADC_ref = 506;
                if(count >= 16000) begin
                    n_state = 4;
                end
            end
            4: begin //25 - 30V
                n_ki      = 120;
                n_kp      = 3300;
                n_ADC_ref = 607;
                if(count >= 32000) begin
                    n_state = 5;
                end
            end
            5: begin //30 - 35V
                n_ki      = 230;
                n_kp      = 4800;
                n_ADC_ref = 708;
                if(count >= 48000) begin
                    n_state = 6;
                end
            end
            6: begin //35 - 40V
                n_ki      = 115;
                n_kp      = 3300;
                n_ADC_ref = 820;
            end
        endcase
    end
    
    always @(posedge clk) begin
        if(reset) begin
            state   <= 0;
            SINIT   <= 0;
            ki      <= 10;
            kp      <= 0;
            ADC_ref <= 405;
        end
        else begin
            state   <= n_state;
            SINIT   <= n_SINIT;
            ki      <= n_ki;
            kp      <= n_kp;
            ADC_ref <= n_ADC_ref;
        end
    end
    
    
endmodule
