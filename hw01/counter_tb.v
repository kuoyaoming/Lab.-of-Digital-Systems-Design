`timescale 1ms / 1ms

module counter_tb;

reg in, rst;
wire [3:0] out;

counter UDT(
	in, rst, out
);

initial begin
	in = 0;
	rst = 1;
	#5
	rst = 0;
	repeat(30) #1 in = ~in;
	#5
	$finish;
	
end

endmodule  