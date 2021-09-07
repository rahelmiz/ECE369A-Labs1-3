`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2021 11:28:49 AM
// Design Name: 
// Module Name: Top_tb
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


module Top_tb( );

  reg Clk, Rst;
  wire [6:0] out7;
  wire [7:0] en_out; 
  Top Top_1(.Reset(Rst), .Clk(Clk), .out7(out7), .en_out(en_out));
  
  always begin //period is 10 ns! that is why we increment every 5 ns.
    Clk = 0;
    #10;
    Clk = 1;
    #10;
  end
  
  initial begin //use non-blocking (=) for sequential logic
   
    @(posedge Clk);
     Rst <= 1;
     #5 Rst <=1;
     
    @(posedge Clk);
    #5 Rst <= 0;
    
    @(posedge Clk);
     Rst <= 1;
     #5 Rst <=1;
     
    @(posedge Clk);
    #5 Rst <= 0;
    
    @(posedge Clk);
     Rst <= 1;
     #5 Rst <=1;
     
    @(posedge Clk);
    #5 Rst <= 0;
  end
endmodule;
