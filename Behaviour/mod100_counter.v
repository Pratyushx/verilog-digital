module mod100_counter(q1,q2,clock,reset);

input clock;
input reset;

output reg [3:0]q1;
output reg [3:0]q2;

always@(posedge clock or posedge reset)
begin

if(reset)
   begin
   q1<=4'b0000;
	q2<=4'b0000;
	end
	
   else
    begin
	 if(q2==4'b1001)
	   begin
       q2<=4'b0000;
		  if(q1==4'b1001)
		  q1<=4'b0000;
		  else
		  q1<=q1+1;
	   end
	 else
	 q2<=q2+1;
	end
end
endmodule
	