module case3(a,b,c,d,s,y);

input [1:0]a;
input [1:0]b;
input [1:0]c;
input [1:0]d;
input [1:0]s;


output reg [1:0]y;

      always @(a,b,c,d,s)
       begin
		 
		 casex(s)
		 2'b0z: y =a;
		 2'bxx: y =b;
		 2'b1x: y =c;
		 
	    default: y =0;
endcase 
end
endmodule

