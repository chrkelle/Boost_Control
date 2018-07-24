`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2018 08:24:48 AM
// Design Name: 
// Module Name: LSFR
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


module LFSR(clk, reset, lsb);

    input  wire clk, reset;
    output wire lsb;
    
    reg [23:0] lfsr, n_lfsr;
    assign lsb = lfsr[0];
    
    always @* begin
        n_lfsr[23:1]  = lfsr[22:0];
        n_lfsr[0]     = (lfsr[16] ^ (lfsr[21] ^ (lfsr[22] ^ lfsr[23])));
    end
    
    always @(posedge clk) begin
        if(reset) begin
            lfsr  <= 24'hABCDEF;
        end
        else begin
            lfsr  <= n_lfsr;
        end
    end
    
    
endmodule
