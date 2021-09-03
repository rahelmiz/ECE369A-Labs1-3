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
  wire [31:0]Instruction;
  wire [6:0] out7;
  wire [7:0] en_out; 
  
  Top Top_1(Rst, Clk, Instruction, out7, en_out);
  
  always begin //period is 10 ns! that is why we increment every 5 ns.
    Clk <= 0;
    #5;
    Clk <= 1;
    #5;
  end
  
  initial begin
    Rst <= 1;
    //move 2 clk cycles ahead
    @(posedge Clk);
    @(posedge Clk);
    #2; // do this so RST and Clk do not change at same time. 
    Rst <= 0;
    @(posedge Clk);
    //#500;
    //#2;
    //Rst <= 1;
  end
endmodule;
