module siso(reset,q,d,clock);

input reset;
input d;
input clock;

wire w1;
wire w2;
wire w3;

output q;

D_flipflop ff1(.reset(reset),.d(d),.clock(clock),.q(w1));

D_flipflop ff2(.reset(reset),.d(w1),.clock(clock),.q(w2));

D_flipflop ff3(.reset(reset),.d(w2),.clock(clock),.q(w3));

D_flipflop ff4(.reset(reset),.d(w3),.clock(clock),.q(q));
 
	  
endmodule
