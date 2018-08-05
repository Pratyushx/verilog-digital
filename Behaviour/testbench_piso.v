module testbench_piso;

reg [3:0]d;
reg sel;
reg clock;
reg reset;

wire q;

piso uut(
          .d(d),
			 .sel(sel),
			 .clock(clock),
			 .reset(reset),
			 .q(q)
			 );
			 
	   initial
		begin
		
		clock = 0;
		reset = 1;
		d=0;
  #10 reset=0;
		
      end
		
			initial
			forever #10 clock=~clock;
		
		initial
		 begin
		 
		 sel=0;d=4'b1011;
 #10	 sel=1;
 #20	 sel=1;
 #30	 sel=1;
 #50	 sel=0;d=4'b0000;

 
      end
	endmodule
