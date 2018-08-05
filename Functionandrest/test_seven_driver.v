module test_seven_driver;

reg clock;
reg reset;
reg [3:0]a;
reg [3:0]b;
reg [3:0]c;
reg [3:0]d;

wire [6:0]seg_data;

seven_seg_driver uut(
							.clock(clock),
							.reset(reset),
							.a(a),
							.b(b),
							.c(c),
							.d(d),
							.seg_data(seg_data)
							);
							
	initial
		begin
		clock=0;
		reset=0;
	#10 reset=1;
      end

	always
	#10 clock=~clock;
							
	initial
		begin
	#10 a=4'b0000;	 b=4'b0001; c=4'b0010;d=4'b0011;		
	 						
		end	
		
endmodule
