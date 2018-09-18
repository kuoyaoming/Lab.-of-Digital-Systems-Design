module counter( in, rst, out );
	input in, rst;
	output [3:0] out;
	reg [3:0] out = 0;
	
	always @(posedge in or negedge rst )begin
		if( !rst )
			out <= 0;
		else if( out == 9 )
			out <= 0;
		else
			out <= out + 1 ;
	end
endmodule 