module testbench_vector_ripple_adder;

 reg [3:0]at;
 reg [3:0]bt;
 reg cint;

 wire [3:0]st;
 wire coutt;

  ripple_adder rl(
                  .a0(at),.a1(at),.a2(at),.a3(at),
                  .b0(bt),.b1(bt),.b2(bt),.b3(bt),
					   .s0(st),.s1(st),.s2(st),.s3(st),
					   .cin0(coutt),
					   .cout(cint)
					  );

 initial 
  begin
	at= 4'b0001; bt=4'b1111; cint=0;
	 #10
	at= 4'b0011; bt=4'b0111; cint=0;
	 #10
	at= 4'b0111; bt=4'b0011; cint=0;
	 #10
	at= 4'b1111; bt=4'b0001; cint=0;
				  
   end
   endmodule
					 
					 