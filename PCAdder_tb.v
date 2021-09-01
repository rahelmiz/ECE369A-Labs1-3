`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1 
// Module - PCAdder_tb.v
// Description - Test the 'PCAdder.v' module.
////////////////////////////////////////////////////////////////////////////////

module PCAdder_tb();

    reg [31:0] PCResult;

    wire [31:0] PCAddResult;

    PCAdder u0(
        .PCResult(PCResult), 
        .PCAddResult(PCAddResult)
    );

	initial begin
	
    /* Please fill in the implementation here... */
		PCResult <= 0;
		
		#10;
		$display ("PCResult = %d, PCAddResult = %d", PCResult, PCAddResult);
		
		#10
		PCResult <= 4;
		
		#10
		PCResult <= 12;
		
		#10
		PCResult <= 0;
	
	end

endmodule
