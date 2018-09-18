module hw04( 
				input CLOCK_50,
				input [3:0]KEY,
				input SMA_CLKIN,
				output reg LCD_ON,
				output reg LCD_RS,
				output reg LCD_RW,
				output reg LCD_EN,
				output reg [7:0] LCD_DATA
				);

reg [10:0] j;
reg [1:0] s;
reg [5:0] st;
reg [31:0] cnt;
reg [31:0] cnt1;
reg [7:0]out[9:0];
reg [3:0]n0;
reg [3:0]n1;
reg [3:0]n2;
reg [3:0]n3;
reg [3:0]n4;
reg [3:0]n5;
reg [3:0]n6;
reg [3:0]n7;

assign rst = KEY[0];

//===============================(hz counter)

always @(posedge CLOCK_50 or negedge rst) begin
	if(!rst) begin
		cnt1 <= 0;
		s <= 0;
		out[8] <= 8'h48;
		out[9] <= 8'h7A;
		n0 <= 0;
		n1 <= 0;
		n2 <= 0;
		n3 <= 0;
		n4 <= 0;
		n5 <= 0;
		n6 <= 0;
		n7 <= 0;
	end
	else begin
		cnt1 <= cnt1+1;
		if(cnt1>=50_000_000) begin
			cnt1 <= 0;
			out[0] <= 8'h30 + n7;
			out[1] <= 8'h30 + n6;
			out[2] <= 8'h30 + n5;
			out[3] <= 8'h30 + n4;
			out[4] <= 8'h30 + n3;
			out[5] <= 8'h30 + n2;
			out[6] <= 8'h30 + n1;
			out[7] <= 8'h30 + n0;
			n0 <= 0;
			n1 <= 0;
			n2 <= 0;
			n3 <= 0;
			n4 <= 0;
			n5 <= 0;
			n6 <= 0;
			n7 <= 0;
		end
		else begin
			s <= {s[0],SMA_CLKIN};
			if(s==2'b01) begin
				n0 <= n0+1;
			end
			if(n0>9) begin
				 n0 <= 0;
				n1 <= n1+1;
			end
			if(n1>9) begin
				n1 <= 0;
				n2 <= n2+1;
			end
			if(n2>9) begin
				n2 <= 0;
				n3 <= n3+1;
			end
			if(n3>9) begin
				n3 <= 0;
				n4 <= n4+1;
			end
			if(n4>9) begin
				n4 <= 0;
				n5 <= n5+1;
			end
			if(n5>9) begin
				n5 <= 0;
				n6 <= n6+1;
			end
			if(n6>9) begin
				n6 <= 0;
				n7 <= n7+1;
			end
			if(n7>9) begin
				n7 <= 0;
			end
		end
		
	end
end

//===============================(main)

always @(posedge CLOCK_50 or negedge rst)begin
	if(!rst)begin
		cnt <= 0;
		st <= 0;
		j <= 0;
		LCD_DATA <= 0;
		LCD_RS <= 0;
		LCD_RW <= 0;
		LCD_EN <= 0;
		LCD_ON <= 1;
	end
	else begin
		case(st)
			
//===============================(Initialization begin)	
			
			0:	begin
				if(cnt >= 50000000)//Delay 15ms
				begin
					cnt <= 0;
					st <= st + 1;
				end
				cnt <= cnt + 1;
			end
			
			1:	begin
				LCD_DATA <= 8'b00111000;//Function Set
				LCD_RS <= 0;
				LCD_RW <= 0;
				LCD_EN <= 1;
				st <= st + 1;
			end
			
			2:	begin
				LEDR <= 4;
				cnt <= cnt + 1;
				if(cnt >= 205000)//Delay 4.1ms
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 0;
				end
			end
			
			3:	begin
				LEDR <= 8;
				LCD_DATA <= 8'b00111000;//Function Set
				LCD_RS <= 0;
				LCD_RW <= 0;
				LCD_EN <= 1;
				st <= st + 1;
			end
			
			4:	begin
				LEDR <= 0;
				cnt <= cnt + 1;
				if(cnt >= 50000)//Delay 100us5000
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 0;
				end
			end
			
			5:	begin
				LCD_DATA <= 8'b00111000;//Function Set
				LCD_RS <= 0;
				LCD_RW <= 0;
				LCD_EN <= 1;
				st <= st + 1;
			end
			
			6:	begin
				cnt <= cnt + 1;
				if(cnt >= 50000)//Delay 39us1950
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 0;
				end
			end
			
			7:	begin
				LCD_DATA <= 8'b00001100;//Display on
				LCD_RS <= 0;
				LCD_RW <= 0;
				//LCD_EN <= 1;
				st <= st + 1;
			end
			
			8:	begin
				LCD_EN <= 1;
				cnt <= cnt + 1;
				if(cnt >= 50000)//Delay 39us1950
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 0;
				end
			end
			
			9:	begin
				LCD_DATA <= 8'b00000001;//Display clear
				LCD_RS <= 0;
				LCD_RW <= 0;
				//LCD_EN <= 1;
				st <= st + 1;
			end
			
			10: begin
				cnt <= cnt + 1;
				LCD_EN <= 1;
				if(cnt >= 76500)//Delay 1.53ms
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 0;
				end
			end
			
			11:	begin
				LCD_DATA <= 8'b00000110;//Entry mode set
				LCD_RS <= 0;
				LCD_RW <= 0;
				//LCD_EN <= 1;
				st <= st + 1;
			end
			
			12: begin
				cnt <= cnt + 1;
				LCD_EN <= 1;
				if(cnt >= 50000)//Delay 39us1950
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 0;
				end
			end
//===============================(Initialization end)			
			
			13: begin
				LCD_DATA <= 8'h80;//Set DDRAM Address
				LCD_RS <= 0;
				LCD_RW <= 0;
				//LCD_EN <= 1;
				st <= st + 1;
			end
			
			14: begin
				cnt <= cnt + 1;
				LCD_EN <= 1;
				if(cnt >= 50000)//Delay 39us1950
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 0;
				end
			end
			
			15: begin
				LCD_DATA <= out[j];//Write Data to RAM
				LCD_RS <= 1;
				LCD_RW <= 0;
				st <= st + 1;
			end
			
			16: begin
				cnt <= cnt + 1;
				LCD_EN <= 0;
				if(cnt >= 5000000)//Delay 39us1950
				begin
					cnt <= 0;
					st <= st + 1;
					LCD_EN <= 1;
				end
			end
			
			17: begin
				cnt <= cnt + 1;
				if(cnt >= 50000)//Delay 43us2150
				begin
					cnt <= 0;
					st <= st+1;
					LCD_EN <= 0;
				end
			end
			
			18: begin
				if(j<9) begin
					j <= j+1;
					st <= 15;
				end
				else begin
					j <= 0;
					st <= 13;
				end
			end
			/*
			19: begin
				cnt <= cnt + 1;
				if(cnt >= 50000000)//Delay 43us2150
				begin
					cnt <= 0;
					st <= 13;
					LCD_EN <= 0;
				end
			end
				*/
			
			
			default: begin
				st <= 0;
			end
			
		endcase
	end
end

endmodule
