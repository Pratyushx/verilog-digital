module testbench_syn_counter();

reg clock;
reg reset;
wire a;
wire b;
wire c;
 
synchronous_counter uut(
								.clock(clock),
								.reset(reset),
								.a(a),
								.b(b),
								.c(c)
								);
 
      initial
		begin
		
		clock = 0;
		reset = 1;
 #10  reset=0;
		
      end
	
		initial
      forever #10 clock=~clock;

endmodule
