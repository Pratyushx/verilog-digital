module procedural_blocking;

reg [3:0]a;
reg [3:0]b;
reg [3:0]c;

  initial
   begin
	
	a<=#2 2;
	
	b<=#3 3;
	
	c<=#4 4;
	
	end
endmodule
