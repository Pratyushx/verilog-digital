module rippleadder(a0,b0,a1,b1,a2,b2,a3,b3,cin0,cout,s0,s1,s2,s3);

wire w1;
wire w2;
wire w3;
wire w4;

input a0,b0;
input a1,b1;
input a2,b2;
input a3,b3;
input cin0;

output cout;
output s0;
output s1;
output s2;
output s3;

full_adder fa0( 
              .a(a0),
				  .b(b0),
				  .d(cin0),
				  .c(w1),
				  .s(s0)
				  );
				  
full_adder fa1( 
              .a(a1),
				  .b(b1),
				  .d(w1),
				  .c(w2),
				  .s(s1)
				  );
				  
full_adder fa2( 
              .a(a2),
				  .b(b2),
				  .d(w2),
				  .c(w3),
				  .s(s2)
				  );
				  
full_adder fa3( 
              .a(a3),
				  .b(b3),
				  .d(w3),
				  .c(cout),
				  .s(s3)
				  );				  

endmodule
