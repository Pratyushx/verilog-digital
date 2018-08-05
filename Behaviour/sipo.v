module sipo(reset,q1,q2,q3,q4,d,clock);

input reset;
input d;
input clock;

wire [2:0]w;

output q1,q2,q3,q4;


D_flipflop ff1(.reset(reset),.d(d),.clock(clock),.q(q1));

D_flipflop ff2(.reset(reset),.d(q1),.clock(clock),.q(q2));

D_flipflop ff3(.reset(reset),.d(q2),.clock(clock),.q(q3));

D_flipflop ff4(.reset(reset),.d(q3),.clock(clock),.q(q4));
 
	  
endmodule
