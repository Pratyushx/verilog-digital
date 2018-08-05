module piso(d,reset,q,clock,sel);

input [3:0]d;
input clock;
input sel;
input reset;

output q;
wire [6:0]w;

mux_2x1 mmt0(
              .inp1(d[0]),
				  .inp2(1*b1),
				  .sel(sel),
				  .opt(w[0])
				  );
				  
D_flipflop uut1(
                 .clock(clock),
                 .reset(reset),
                 .d(w[0]),
                 .q(w[1])
                  );
						
mux_2x1 mmt1(
              .inp1(w[1]),
				  .inp2(d[1]),
				  .sel(sel),
				  .opt(w[2])
				  );
				  
D_flipflop uut2(
                 .clock(clock),
                 .reset(reset),
                 .d(w[2]),
                 .q(w[3])
                  );
						
mux_2x1 mmt2(
              .inp1(w[3]),
				  .inp2(d[2]),
				  .sel(sel),
				  .opt(w[4])
				  );
				  
D_flipflop uut3(
                 .clock(clock),
                 .reset(reset),
                 .d(w[4]),
                 .q(w[5])
                  );

mux_2x1 mmt3(
              .inp1(w[5]),
				  .inp2(d[3]),
				  .sel(sel),
				  .opt(w[6])
				  );
				  
D_flipflop uut4(
                 .clock(clock),
                 .reset(reset),
                 .d(w[6]),
                 .q(q)
                  );						

endmodule
