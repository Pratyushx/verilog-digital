 module ripplevectoradder(a,b,s,cin0,cout);

 wire [2:0]w;

 input [3:0]a;
 input [3:0]b;
 input cin0;

 output cout;
 output [3:0]s;


 full_adder fa0( 
              .a(a[0]),
				  .b(b[0]),
				  .d(cin0),
				  .c(w[0]),
				  .s(s[0])
				  );
				  
 full_adder fa1( 
              .a(a[1]),
				  .b(b[1]),
				  .d(w[0]),
				  .c(w[1]),
				  .s(s[1])
				  );
				  
 full_adder fa2( 
              .a(a[2]),
				  .b(b[2]),
				  .d(w[1]),
				  .c(w[2]),
				  .s(s[2])
				  );
				  
 full_adder fa3( 
              .a(a[3]),
				  .b(b[3]),
				  .d(w[2]),
				  .c(cout),
				  .s(s[3])
				  );				  

 endmodule
