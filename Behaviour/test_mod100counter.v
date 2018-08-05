module test_mod100counter;

reg clock;
reg reset;

wire [3:0]q1;
wire [3:0]q2;

mod100_counter uut1(
                     .clock(clock),
							.reset(reset),
							.q1(q1),
							.q2(q2)
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
					
