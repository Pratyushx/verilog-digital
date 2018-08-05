module mod10_counter(q,clock,reset);

input clock;
input reset;

output reg q;

always@(posedge clock or posedge reset)
begin

if(reset)
   begin
   q=0;
	end
	
else
 begin

if(q==4'b1001)
	q=4'b0000;

 else 
	q=q+1;
	end
	
end
endmodule
	