module debounce( clk, rst, key_i, key_o );

	input   clk, rst;
	input   key_i;
	output  key_o;
 
	reg     key_o = 1;
	reg     [3:0] Bounce = 4'b1111;
	
   always @( posedge clk, negedge rst ) begin  //1kHz 1ms
       if( !rst )
           Bounce <= 0;
       else begin
            
           Bounce[0] <= key_i;
			  Bounce[1] <= Bounce[1];
			  Bounce[2] <= Bounce[2];
			  Bounce[3] <= Bounce[3];
			  
       end
       case( Bounce )
           4'b0000:    key_o <= 0;
           default:    key_o <= 1;
       endcase
   end

endmodule 