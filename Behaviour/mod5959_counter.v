module mod5959_counter(q1,q2,q3,q4,clock,reset);

input clock;
input reset;

output reg [3:0]q1;
output reg [3:0]q2;
output reg [3:0]q3;
output reg [3:0]q4;

always@(posedge clock or posedge reset)
begin

if(reset)
   begin
   q1<=4'b0000;
	q2<=4'b0000;
	q3<=4'b0000;
	q4<=4'b0000;
	end
	
    else
    begin
	 if(q4==4'b1001)
	   begin
       q4<=4'b0000;
		  if(q3==4'b0101)
		   begin
		    q3<=4'b0000;
		     if(q2==4'b1001)
			   begin
				 q2<=4'b0000;
				  if(q1==4'b0101)
			      begin
				    q1<=4'b0000;
					 end
				   else
				  q1<=q1+1;
			      end
		       else
		      q2<=q2+1;
	         end
	       else
		   q3<=q3+1;
	      end
	    else
	   q4<=q4+1;
	   end
end
endmodule
	