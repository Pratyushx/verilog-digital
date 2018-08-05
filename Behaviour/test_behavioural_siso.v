module test_behavioural_siso;

reg inp;
reg clock;
reg reset;

wire y;

siso_temp bs1(
                     .clock(clock),
							.reset(reset),
							.inp(inp),
							.y(y)
							);
							

      initial
		begin
		
		clock = 0;
		reset = 0;
	   inp=0;
  #10 reset= 1;
		
      end
		
			initial
			forever #10 clock=~clock;
		
		initial
		 begin
		 
		  #10 inp = $random;
forever #20 inp = $random;

      end
	endmodule
					
