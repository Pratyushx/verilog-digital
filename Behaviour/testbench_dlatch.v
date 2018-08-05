module testbench_dlatch;

reg en;
reg reset;
reg d;

wire q;
 
 Dlatch uut(
				.en(en),
				.d(d),
				.reset(reset),
				.q(q)
				);
				
      initial
       begin
		 
		  en=1'b0; reset=1'b0; d=1'b1;
		   #10
			 en=1'b1; reset=1'b1; d=1'b0;
			 #10
			  en=1'b0; reset=1'b1; d=1'b1;
		  
end
endmodule
