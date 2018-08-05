
 module testbench_lookahead_carry_adder;

  reg [3:0]A;
  reg [3:0]B;
  reg [3:0]C;

 lookahead_carry_adder tb(
             .a(A),
				 .b(B),
				 .cin(C),
				 .s(st),
				 .cg(cgt),
				 .cp(cpt)
				 );

           initial
            begin
				
				   A=4'b0001; B=4'b0011; C=0; 
				  #100
				   A=4'b0111; B=4'b0111; C=0; 
				  #100
				   A=4'b011x; B=4'b0111; C=0; 
				  #100
               A=4'b01xx; B=4'b01zz; C=0; 
				  
              end
            endmodule
