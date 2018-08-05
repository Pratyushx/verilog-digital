module case1(a,b,c,d,s,y);

input [1:0]a;
input [1:0]b;
input [1:0]c;
input [1:0]d;
input [1:0]s;

output reg [1:0]y;

    always @(a,b,c,d,s)
       begin
		 
		 case(s)
		 2'b00: y =a;
		 2'b01: y =b;
		 2'b10: y =c;
		 
	    default: y =d;
endcase 
end
endmodule

