module T_flipflop(reset,y,t,clock);

input reset;
input t;
input clock;

output reg y;

 always@(posedge clock, posedge reset)
  begin
     if(reset)
      y=0;
     else 
	 begin
	  if(t==1)
	  y=-y;
	  else if(t==0)
	  y=y;
      end
end	  

endmodule
