module synchronous_counter(reset,a,b,c,clock);

input reset;
input clock;

wire w1;

output a;
output b;
output c;


and a1(w1,b,a);

T_flipflop uut1(.reset(reset),
                .clock(clock),
					 .t(1),
					 .y(a)
                );
					 
T_flipflop uut2(.reset(reset),
                .clock(clock),
					 .t(a),
					 .y(b)
                );
					 				 
T_flipflop uut3(.reset(reset),
                .clock(clock),
					 .t(w1),
					 .y(c)
                );					 					 


endmodule
