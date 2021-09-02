
module Top_tb( );

  reg Clk, Rst;
  wire [31:0]Instruction;
  wire [6:0] out7;
  wire reg[7:0] en_out; 
  
  Top Top_1(Rst, Clk, Instruction, out7, en_out);
  
  always @ begin //period is 20 ns! that is why we increment every 10 ns.
    Clk <= 0;
    #10;
    Clk <= 1;
    #10;
  end
  
  initial begin
    Rst <= 1;
    //move 2 clk cycles ahead
    @(Posedge Clk);
    @(Posedge Clk);
    #5; // do this so RST and Clk do not change at same time. 
    Rst <= 0;
    @(Posedge Clk);
    #500;
    #5;
    Rst <= 1;
  end
endmodule;
