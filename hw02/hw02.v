module hw02( CLOCK_50, KEY, HEX0, HEX1, HEX2, HEX3);

	input CLOCK_50;
	input [1:0] KEY;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;
	
	wire rst = 1;
	wire f_1k;
	wire f_1s;
	wire key_sd;
	wire key_md;
	wire key_s;
	wire key_m;

	reg [3:0] d1 = 0;
	reg [3:0] d2 = 0;
	reg [3:0] d3 = 0;
	reg [3:0] d4 = 0;
	reg sf =1;
	reg mf =1;
	
	assign key_s = KEY[0];
	assign key_m = KEY[1];
	
	clock_1k clock_1k(
		.CLK(CLOCK_50),
		.RST(rst),
		.CLK_Out(f_1k)
	);
	
	clock_1s clock_1s(
		.CLK(CLOCK_50),
		.RST(rst),
		.CLK_Out(f_1s)
	);
	
	debounce debounce1(
		.clk(CLOCK_50),
		.rst(rst),
		.f(f_1k),
		.key_i(key_s),
		.key_o(key_sd)
	);
	
	debounce debounce2(
		.clk(CLOCK_50),
		.rst(rst),
		.f(f_1k),
		.key_i(key_m),
		.key_o(key_md)
	);
	
	always @(posedge CLOCK_50 )begin
		if( key_sd != sf )begin
			if(key_sd==0)
				d1 <= d1 +1;
			sf <= key_sd;
		end
		else if( key_md != mf )begin
			if(key_md==0)
				d3 <= d3 +1;
			mf <= key_md;
		end
		else begin
			sf <= key_sd;
			mf <= key_md;
		end
		
		if( f_1s == 1 && key_sd!=0 && key_md!=0)
			d1 <= d1 +1;
		
		if( d1 > 9 )begin
				d1 <= 0;
				d2 <= d2 + 1;
		end
		else if( d2 > 5 )begin
			d2 <= 0;
			d3 <= d3 + 1;
		end
		else if( d3 > 9 )begin
			d3 <= 0;
			d4 <= d4 + 1;
		end
		else if( d4 > 5 )
			d4 <= 0;
	end
	
	SEG_HEX s1(
		.iDIG(d1),
		.oHEX_D(HEX0)
	);
	SEG_HEX s2(
		.iDIG(d2),
		.oHEX_D(HEX1)
	);
	SEG_HEX s3(
		.iDIG(d3),
		.oHEX_D(HEX2)
	);
	SEG_HEX s4(
		.iDIG(d4),
		.oHEX_D(HEX3)
	);
	
endmodule 