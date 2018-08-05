module counter(q,clock,reset);

input reset;
input clock;

output [1:0]q;

T_flipflop tf1( .y(q[0]),
                .t(1),
					 .clock(clock),
					 .reset(reset)
					 );
					 
T_flipflop tf2(.y(q[1]),
               .t(1),
					.clock(~q[0]),
					.reset(reset)
					);

endmodule
