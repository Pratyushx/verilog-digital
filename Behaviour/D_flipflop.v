module D_flipflop(reset,q,d,clock);

input reset;
input d;
input clock;

output reg q;

  always@(posedge clock , posedge reset)
  begin
     if(reset)
      q<=0;
     else
      q<=d;
		
  end	  

endmodule
