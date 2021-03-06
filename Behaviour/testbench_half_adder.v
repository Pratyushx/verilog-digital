module testbench_half_adder;

reg at;
reg bt;
wire st;
wire ct;

   half_adder uut(at,bt,st,ct);
	
	initial		
	 $monitor("@%0t :: at=%0d, bt=%0d, st=%0d, ct=%0d ",$time ,at,bt,st,ct);
			
   initial
          begin
            at=0; bt=0;
             #10
            at=0; bt=1;
             #10
            at=1; bt=0;
             #10
            at=1; bt=1;
				
				end	
              endmodule
				  