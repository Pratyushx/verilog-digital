module testbench_case;

reg [1:0]a;
reg [1:0]b;
reg [1:0]c;
reg [1:0]d;
reg [1:0]s;

wire [1:0]y;
 
 case3 uut(.a(a),.b(b),.c(c),.d(d),.s(s),.y(y));
      initial
       begin
		 
		  s=2'b0x; a=2'b01; b=2'b11; c=2'b1x; d=2'b10; 
		   #10
		  
		  s=2'b01; a=2'bxz; b=2'b01; c=2'b11; d=2'bz0; 
         #10

		  s=2'b0z; a=2'b01; b=2'b1z; c=2'bxx; d=2'bzz; 
         #10

		  s=2'bx1; a=2'b11; b=2'bx0; c=2'b10; d=2'b10; 

       end
      endmodule
