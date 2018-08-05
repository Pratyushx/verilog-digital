module testcaserippleadder;

 reg a0,b0;
 reg a1,b1;
 reg a2,b2;
 reg a3,b3;

 reg cint;

 wire s0t;
 wire s1t;
 wire s2t;
 wire s3t;
 wire coutt;

rippleadder rl(
               .a0(a0),.b0(b0),
				   .a1(a1),.b1(b1),
				   .a2(a2),.b2(b2),
				   .a3(a3),.b3(b3),
				   .cin0(cint),.cout(coutt),
				   .s0(s0t),.s1(s1t),
				   .s2(s2t),.s3(s3t)
				  );
				  
				    initial
				     begin

                 a0=0; b0=1; a1=0; b1=1; a2=0; b2=0; a3=0; b3=0; 
                  #10
				 
				     a0=0; b0=1; a1=0; b1=1; a2=0; b2=0; a3=0; b3=1; 
                  #10
				 
				     a0=0; b0=1; a1=0; b1=1; a2=0; b2=0; a3=1; b3=0; 
                  #10
				 
				     a0=0; b0=1; a1=0; b1=1; a2=0; b2=0; a3=1; b3=1; 
                  #10
				 
				     a0=0; b0=1; a1=0; b1=1; a2=0; b2=1; a3=0; b3=0; 
                  #10
				 
				     a0=0; b0=1; a1=0; b1=1; a2=0; b2=1; a3=0; b3=1;

				 
                  end
                  endmodule