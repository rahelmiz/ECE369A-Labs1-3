`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2021 10:59:32 AM
// Design Name: 
// Module Name: Top
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


module Top(Reset, Clk, Instruction, out7, en_out);
    input Reset, Clk;
    output [31:0]Instruction;
    output [6:0] out7; //seg a, b, ... g
    output [7:0] en_out;
    wire ClkOut;
    
    ClkDiv ClkDiv_1(Clk, Reset, ClkOut);
    InstructionFetchUnit InstrucFetch_1(Reset, ClkOut, Instruction);
    Two4DigitDisplay Display_1(Clk, Instruction[15:0], Instruction[31:16], out7, en_out);
    
endmodule
