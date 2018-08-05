module test_mod10counter;

reg clock;
reg reset;

wire q;

mod10_counter uut1(
                     .clock(clock),
							.reset(reset),
							.q(q)
							);
							
      initial
		begin
		
		clock = 0;
		reset = 1;
  #10 reset= 0;
		
      end
		
			initial
			forever #10 clock=~clock;
		
      endmodule
					
