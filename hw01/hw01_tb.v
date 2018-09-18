`timescale 1ns / 1ns
module hw01_tb;

	reg clk = 0;
	reg [1:0] key = 2'b11;
	wire [6:0] HEX0;
	integer i = 0;
	
	hw01 UDT( clk, key, HEX0 );
	parameter delay=1_000_000*5;
	parameter no_de=10_000;
	initial begin
	
		key = 2'b10;
		#delay
		key = 2'b11;
		#delay
		
		for( i=0;i<11;i=i+1 )begin
			
			repeat(10) #no_de key[1] = ~key[1];//in
			key[1] = 0;
			#delay
			repeat(10) #no_de key[1] = ~key[1];//out
			key[1] = 1;
			#delay;
		end
		
		$finish;
		
	end
always clk = #20 ~clk;
endmodule  