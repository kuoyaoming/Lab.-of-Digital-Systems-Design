`timescale 1ns/1ns

module lab1_tb;
reg clk_50M;
reg reset_n;
reg key0; //low active
reg key1; //low active
wire [6:0] hex0;

/*
lab1 u1 (
    .CLOCK_50(clk_50M),
    .RST_N(reset_n),
    .KEY0(key0),
    .KEY1(key1),
    .HEX0(hex0)
    );
*/    

always
  #10 clk_50M = ~clk_50M;
  
initial
  begin
  reset_n = 0;  
  clk_50M = 0 ;
  key0 = 1;
  key1 = 1;
  
  #30 reset_n = 1;
  
  //First push key1
  $display("push key1 \n");
  #1_000_000 key1 = 0;         //bounce key1
  #2_000_000 key1 = 1;
  #3_000_000 key1 = 0;
  #1_000_000 key1 = 1;
  #1_000_000 key1 = 0;        //push key1
  #25_000_000
  
  //First release key1
  $display("release key1 \n");
  #1_000_000 key1 = 0;         //bounce key1
  #2_000_000 key1 = 1;
  #3_000_000 key1 = 0;
  #1_000_000 key1 = 1;
  #25_000_000                 //release key1
  
  //second push key1
  $display("push key1 \n");
  #1_000_000 key1 = 0;         //bounce key1
  #2_000_000 key1 = 1;
  #3_000_000 key1 = 0;
  #1_000_000 key1 = 1;
  #1_000_000 key1 = 0;        //push key1
  #25_000_000
  
  //second release key1
  $display("release key1 \n");
  #1_000_000 key1 = 0;         //bounce key1
  #2_000_000 key1 = 1;
  #3_000_000 key1 = 0;
  #1_000_000 key1 = 1;
  #25_000_000                 //release key1
  
  //First push key0
  $display("push key0 \n");
  #1_000_000 key0 = 0;         //bounce key0
  #2_000_000 key0 = 1;
  #3_000_000 key0 = 0;
  #1_000_000 key0 = 1;
  #1_000_000 key0 = 0;        //push key0
  #25_000_000
  
  //First release key0
  $display("release key0 \n");
  #1_000_000 key0 = 0;         //bounce key0
  #2_000_000 key0 = 1;
  #3_000_000 key0 = 0;
  #1_000_000 key0 = 1;
  #25_000_000                 //release key0
 
  #200000;
  $finish;
  end
  
initial
  begin
  $monitor("time=%3d reset_n=%d key0=%d key1=%d hex0=%d",$time,reset_n,key0,key1,hex0);
  end
  
endmodule