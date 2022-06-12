`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2022 08:12:33 PM
// Design Name: 
// Module Name: RAM_design
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


module RAM_design(
    input clk,
    input reset,
    input we_a,
    input we_b,
    input [8:0] address_a,
    input [8:0] address_b,
    input [7:0] data_a,
    input [7:0] data_b,
    output reg [7:0] data_out_a,
    output reg [7:0] data_out_b
    );
    reg [7:0]memory[255:0];
    integer i;
    
    always @(posedge clk) begin
        if(reset) begin
            for(i=0;i<256;i=i+1) begin
                memory[i]<=0;
            end
            data_out_a<=0;
            data_out_b<=0;
        end
        else begin
            if(we_a)
                memory[address_a]<=data_a;
            else 
                data_out_a<=memory[address_a];
                
            if(we_b)
                memory[address_b]<=data_b;
            else 
                data_out_b<=memory[address_b];
        end
    end
endmodule
