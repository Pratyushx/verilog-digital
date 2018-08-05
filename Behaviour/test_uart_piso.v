module test_uart_piso;

reg [7:0]din;
reg load;
reg clk;
reg reset;

wire dout;


uart_piso uut(
          .din(din),
			 .load(load),
			 .clk(clk),
			 .reset(reset),
			 .dout(dout)
			 );
			 
	   initial
		begin
		
		clk = 0;
		reset = 1;
		din=0;
  #10 reset=0;
		
      end
		
			initial
			forever #5 clk=~clk;
		
		initial
		 begin
		 
		 load=0;din=7'b1011000;
 #10	 load=1;
 #10	 load=1;
 #10	 load=1;
 #10	 load=0;din=7'b0000000;
 #100 $finish;
 
      end
	endmodule
