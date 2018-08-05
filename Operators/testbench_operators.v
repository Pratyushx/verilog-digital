
module testbench_operators();
reg [3:0]A;
reg [3:0]B;
wire [7:0]yt;
wire [15:0]zt;


operators o1(
              .a(A),
				  .b(B),
				  .y(yt),
				  .z(zt)
				  );
				  
				  initial 
				  begin
				  
				   A=4'b1001;  B=4'b1001; 
				  #100
				   A=4'b1011;  B=4'b1001; 
				  
				  end
				  endmodule
				  