`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2021 10:45:12 AM
// Design Name: 
// Module Name: InstructionFetchUnit_tb
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


module InstructionFetchUnit_tb();
    reg Clk;
    reg Reset;
    wire[31:0] Instruction;
    
    
    InstructionFetchUnit u0(Reset, Clk, Instruction);
    
    always
    begin
        Clk <= 0;
        #10;
        Clk <= 1;
        #10;
    end
    
    initial
    begin
        Reset <= 1;
        @(posedge Clk);
        #5 Reset <= 0;
    end

endmodule
