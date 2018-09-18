`timescale 1ms / 1ms

module SEG_HEX_tb;

	reg [3:0] iDIG;
	wire [6:0] oHEX_D;

	SEG_HEX UDT(iDIG, oHEX_D);

initial begin
	iDIG = 0;
	#10
	
	repeat(15) #5 iDIG = iDIG + 4'b0001;
	
	#100
	
	$finish;
	
end


endmodule  