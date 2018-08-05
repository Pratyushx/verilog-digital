module testbench_rising_edge;

reg clock;
reg reset;
reg d_in;
wire y;
 
 rising_edge uut(.clock(clock),
					   .d_in(d_in),
						.reset(reset),
						.y(y)
						);
 
      initial
		begin
		
		clock = 0;
		reset = 1;
		d_in=0;
 #10  reset=0;
		
      end
		
		initial
      forever #10 clock=~clock;
		
		initial
		 begin
		 
		  #10 d_in = $random;
forever #20 d_in = $random;

      end
endmodule
