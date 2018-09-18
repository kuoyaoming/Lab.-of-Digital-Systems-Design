`timescale 1ms / 1ms

module key_tb;

reg CLK, RST, KEY_In;
wire KEY_Out;

debounce UDT(
	CLK, RST, KEY_In, KEY_Out
);

initial begin
	CLK = 0;
	RST = 1;
	KEY_In = 1;
	#100	
	//RST = 1;
	repeat(20) #1 KEY_In = ~KEY_In;
	KEY_In = 0;
	#100
	repeat(20) #1 KEY_In = ~KEY_In;
	KEY_In = 1;
	#100
	$finish;
	
end

always CLK = #5 ~CLK;

endmodule  