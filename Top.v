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


module Top(Reset, Clk, out7, en_out);
    input Reset, Clk;
    wire [31:0] Instruction;
    output [6:0] out7; //seg a, b, ... g
    output [7:0] en_out;
    wire ClkOut;
    wire [15:0] PCResult;
    ClkDiv ClkDiv_1(Clk, Reset, ClkOut);
    InstructionFetchUnit InstructionFetchUnit_1(.Reset(Reset), .Clk(ClkOut), .Instruction(Instruction), .PCResult(PCResult));
    Two4DigitDisplay Display_1(Clk, Instruction[15:0], PCResult[15:0], out7, en_out);
    
endmodule
