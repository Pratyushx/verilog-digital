
module testbench_case2;

reg [1:0]a;
reg [1:0]b;
reg [1:0]c;
reg [1:0]d;
reg [1:0]s;

wire [1:0]y;
 
 case2 uut(.a(a),.b(b),.c(c),.d(d),.s(s),.y(y));
      initial
       begin
		  s=2'b0x; a=2'b0z; b=2'b11; c=2'b01; d=2'b10; 
		   #10
		  
		  s=2'b01; a=2'b00; b=2'b01; c=2'b11; d=2'b10; 
         #10

		  s=2'b01; a=2'b0x; b=2'b1x; c=2'b00; d=2'b01; 
         #10

		  s=2'b11; a=2'b11; b=2'b01; c=2'b10; d=2'b10; 



end
endmodule
