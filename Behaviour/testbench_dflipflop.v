module testbench_dflipflop;

reg clock;
reg reset;
reg d;
wire q;
 
 D_flipflop uut(
					 .clock(clock),
					 .d(d),
					 .reset(reset),
					 .q(q)
					 );
 
      initial
		begin
		
		clock = 0;
		reset = 1;
		d=0;
 #10  reset=0;
		
      end
		
		// always
		// #10 clock=~clock;
		
		initial
      forever #10 clock=~clock;
		
		initial
		 begin
		 
		  #10 d = $random;
forever #20 d = $random;

      end

endmodule
