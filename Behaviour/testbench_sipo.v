module testbench_sipo;

reg clock;
reg reset;
reg d;

wire q1,q2,q3,q4;
 
 sipo uut(.clock(clock),
          .d(d),
			 .reset(reset),
			 .q1(q1),
			 .q2(q2),
			 .q3(q3),
			 .q4(q4)
			 );
 
      initial
		begin
		
		clock = 0;
		reset = 1;
		d=0;
  #10 reset=0;
		
      end
		
		// always
		// #10 clock=~clock;
		
		initial
      forever #10 clock=~clock;
		
		initial
		 begin
		 
		   #10 d = $random;
forever  #20 d = $random;

      end
endmodule
