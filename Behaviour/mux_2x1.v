module mux_2x1(inp1,inp2,sel,opt);

input inp1;
input inp2;
input sel;

wire w1;
wire w2;

output opt;

and a1(w1,inp2,sel);
and a2(w2,inp1,sel);
or o1(opt,w1,w2);

endmodule


