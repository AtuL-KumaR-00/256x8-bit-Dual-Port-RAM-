`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2022 08:31:38 PM
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb;
    reg [7:0] data_a, data_b; //input data
    reg [8:0] addr_a, addr_b; //Port A and Port B address
    reg we_a, we_b; //write enable for Port A and Port B
    reg clk; //clk
    reg reset;
    wire [7:0] q_a, q_b; //output data at Port A and Port B
    
    RAM_design uut(clk,reset,we_a,we_b,addr_a,addr_b,data_a,data_b,q_a,q_b);
    
    initial
    begin
      clk=1'b1;
      forever #5 clk = ~clk;
      
    end
    
    initial begin
        reset=1;
        #10 reset=0;
        #20;
        data_a = 8'h33;
        addr_a = 6'h01;
      
        data_b = 8'h44;
        addr_b = 6'h02;
      
        we_a = 1'b1;
        we_b = 1'b1;
      
        #100;
      
        data_a = 8'h55;
        addr_a = 6'h03;
      
        addr_b = 6'h01;
      
        we_b = 1'b0;
      
        #100;          
            
        addr_a = 6'h02;
      
        addr_b = 6'h03;
        
        we_a = 1'b0;
      
        #100;
      
        addr_a = 6'h01;
      
        data_b = 8'h77;
        addr_b = 6'h02;
      
        we_b = 1'b1;
      
        #100;
    
    end

endmodule