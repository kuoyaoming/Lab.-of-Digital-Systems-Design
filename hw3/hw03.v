module hw03( CLOCK_50, KEY, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7, RXD);

	input CLOCK_50;
	input [3:0] KEY;
	input RXD;
	
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;
	output [6:0] HEX4;
	output [6:0] HEX5;
	output [6:0] HEX6;
	output [6:0] HEX7;
	
	integer i;
	
	reg [1:0] ng; //negedge rxd
	reg [3:0] d0;
	reg [3:0] d1;
	reg [3:0] d2;
	reg [3:0] d3;
	reg [3:0] d4;
	reg [3:0] d5;
	reg [3:0] d6;
	reg [3:0] d7;
	reg [1:0] state; 
	reg [31:0] cnt;
	reg [31:0] data;
	reg cnting;
	
	assign rst = KEY[0];
	
	always @(posedge CLOCK_50 or negedge rst)begin
		if(!rst)begin
			i <= 0;
			ng <= 2'b11;
			d0 <= 0;
			d1 <= 0;
			d2 <= 0;
			d3 <= 0;
			d4 <= 0;
			d5 <= 0;
			d6 <= 0;
			d7 <= 0;
			cnt <= 0;
			state <= 0;
			data <= 0;
			cnting <= 0;
		end
		else begin
			ng = {ng[0],RXD};
			case (state)
			
				0 : begin
					if(ng == 2'b10)begin
						if(cnt >= 641250 && cnt <= 708750)begin
							state <= 1;	
						end
						cnt <= 0;
					end
					else begin
						cnt <= cnt + 1;
					end
				end
				
				1 : begin
					if(i>31) begin
						state <= 2;
						i <= 0;
					end
					if(ng == 2'b10)begin
						if(i>=0 && i<=31)begin
							if( cnt >= 53200 && cnt <= 58800 )	begin
								data[i] <= 0;
								i <= i+1;
							end
							else if( cnt >= 106875 && cnt <= 118125 ) begin
								data[i] <= 1;
								i <= i+1;
							end
							else begin
								state <= 0;
							end
							cnt <= 0;
						end
					end
					else begin
						cnt <= cnt + 1;
					end
				end
				
				2 : begin										
					d0 <= data[27:24];
					d1 <= data[31:28];
					d2 <= data[19:16];
					d3 <= data[23:20];
					d4 <= data[3:0];
					d5 <= data[7:4];
					d6 <= data[11:8];
					d7 <= data[15:12];
					state <= 0;
					data <= 0;
				end
				default : state <= 0 ;
			endcase
		end
	end
	
	SEG_HEX s0(
		.iDIG(d0),
		.oHEX_D(HEX0)
	);
	SEG_HEX s1(
		.iDIG(d1),
		.oHEX_D(HEX1)
	);
	SEG_HEX s2(
		.iDIG(d2),
		.oHEX_D(HEX2)
	);
	SEG_HEX s3(
		.iDIG(d3),
		.oHEX_D(HEX3)
	);
	SEG_HEX s4(
		.iDIG(d4),
		.oHEX_D(HEX4)
	);
	SEG_HEX s5(
		.iDIG(d5),
		.oHEX_D(HEX5)
	);
	SEG_HEX s6(
		.iDIG(d6),
		.oHEX_D(HEX6)
	);
	SEG_HEX s7(
		.iDIG(d7),
		.oHEX_D(HEX7)
	);
	
endmodule 