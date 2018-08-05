module procedural_always(a,b,c,d,s,y);

input [1:0]a;
input [1:0]b;
input [1:0]c;
input [1:0]d;
input [1:0]s;


output reg [1:0]y;

      always @(a,b,c,d,s)
       begin
		  if(s==2'b00)
		  y=a;
		   else if(s==2'b01)
		   y=b;
		    else if(s==2'b11)
		    y=c;
			
		

end
endmodule

