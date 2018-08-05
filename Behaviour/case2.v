module case2(a,b,c,d,s,y);

input [1:0]a;
input [1:0]b;
input [1:0]c;
input [1:0]d;
input [1:0]s;


output reg [1:0]y;

      always @(a,b,c,d,s)
       begin
		 
		 casez(s)
		 2'b0z: y =a;
		 2'b01: y =b;
		 2'b1z: y =c;
		 
	    default: y =0;
endcase 
end
endmodule

