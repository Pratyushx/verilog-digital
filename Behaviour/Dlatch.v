module Dlatch(en,reset,d,q);

input en;
input reset;
input d;

output reg q;

      always @(en,reset,d)
       begin
		  if(reset)
		  q<=0;
		   else if(en)
		   q<=d;
			
		

end
endmodule

