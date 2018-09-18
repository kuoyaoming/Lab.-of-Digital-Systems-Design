module hw01( CLOCK_50, KEY, HEX0);

	input CLOCK_50;
	input [1:0] KEY;
	output [6:0] HEX0;
	
	wire rst;
	wire clk_1k;
	wire key_d;
	wire key_i;
	reg [3:0] cnt;
	
	assign rst = KEY[0];
	assign key_i = KEY[1];
	
	Freq_Divider Freq_Divider(
		.CLK(CLOCK_50),
		.RST(rst),
		.CLK_Out(clk_1k)
	);
	
	
	debounce debounce(
		.clk(clk_1k),
		.rst(rst),
		.key_i(key_i),
		.key_o(key_d)
	);
	
	always @(posedge key_d or negedge rst )begin
		if( !rst )
			cnt <= 0;
		else if( cnt == 10 )
			cnt <= 0;
		else
			cnt <= cnt + 1 ;
	end
	
	SEG_HEX SEG_HEX(
		.iDIG(cnt),
		.oHEX_D(HEX0)
	);
	
endmodule 