module test_mod5959counter;

reg clock;
reg reset;

wire [3:0]q1;
wire [3:0]q2;
wire [3:0]q3;
wire [3:0]q4;

mod5959_counter uut1(
                     .clock(clock),
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
  #10 reset= 0;
		
      end
		
			initial
			forever #10 clock=~clock;
		
      endmodule
					
