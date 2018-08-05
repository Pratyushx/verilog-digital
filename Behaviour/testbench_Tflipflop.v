module testbench_Tflipflop;

reg clock;
reg reset;
reg t;
wire y;
 
 T_flipflop uut(.clock(clock),
                .t(t),
					 .reset(reset),
					 .y(y)
					 );
 
      initial
		begin
		
		clock = 0;
		reset = 1;
		t=0;
 #10  reset=0;
		
      end
		
		// always
		// #10 clock=~clock;
		
		initial
      forever #10 clock=~clock;
		
		initial
		 begin
		 
		  #10 t = $random;
forever #20 t = $random;

      end

endmodule
