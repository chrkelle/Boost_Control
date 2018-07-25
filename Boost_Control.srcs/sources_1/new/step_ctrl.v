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
    reg        [15:0] count, n_count;
    reg signed [31:0] n_ki, n_kp;
    reg signed [15:0] n_ADC_ref;
    
    
    always@* begin
        n_state   = state;
        n_count   = count + 1;
        n_ki      = ki;
        n_kp      = kp;
        n_ADC_ref = ADC_ref;
    
        case(state)
            0: begin
                if(step_up)
                    n_state = 1;
            end
            1: begin //25V
                n_ki      = 10;
                n_kp      = 10;
                n_ADC_ref = 506;
                if(count >= 6000) begin
                    n_state = 2;
                    n_count = 0;
                end
            end
            2: begin //30V
                n_ki      = 20;
                n_kp      = 20;
                n_ADC_ref = 607;
                if(count >= 6000) begin
                    n_state = 3;
                    n_count = 0;
                end
            end
            3: begin //35V
                n_ki      = 318;
                n_kp      = 5250;
                n_ADC_ref = 709;
                if(count >= 6000) begin
                    n_state = 4;
                    n_count = 0;
                end
            end
            4: begin //40V
                n_ki      = 53;
                n_kp      = 2625;
                n_ADC_ref = 810;
            end
        endcase
    end
    
    always @(posedge clk) begin
        if(reset) begin
            state   <= 0;
            count   <= 0;
            ki      <= 100;
            kp      <= 0;
            ADC_ref <= 405;
        end
        else begin
            state   <= n_state;
            count   <= n_count;
            ki      <= n_ki;
            kp      <= n_kp;
            ADC_ref <= n_ADC_ref;
        end
    end
    
    
endmodule
