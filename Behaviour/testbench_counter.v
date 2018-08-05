module testbench_counter;

reg reset;
reg clock;
reg t;
wire [1:0]q;

T_flipflop(
           .reset(reset),
			  .clock(clock),
			  .q(q)
			  );
			  
			  initial
			  begin
			  
           clock = 0;
		     reset = 1;
		     t=0;
    #10    reset=0;
		
           end
		
		initial
      forever #10 clock=~clock;
		
		initial
		 begin
		 
  #10 t = $random;
  forever #30 t = $random;

      end

endmodule
