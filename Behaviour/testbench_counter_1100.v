module testbench_counter_1100;

reg clock;
reg reset;
reg x;
wire y;
 
 counter_1100 uut(.clock(clock),
					   .x(x),
						.reset(reset),
						.y(y)
						);
 
      initial
		begin
		
		clock = 0;
		reset = 1;
		x=0;
 #10  reset=0;
		
      end
		
		initial
      forever #10 clock=~clock;
		
		initial
		 begin
		 
		  #10 x = $random;
forever #20 x = $random;

      end
endmodule
