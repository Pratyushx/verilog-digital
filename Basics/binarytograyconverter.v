module btgc(a,b,c,d,g1,g2,g3,g4);

input a;
input b;
input c;
input d;

output g1;
output g2;
output g3;
output g4;

xor x0(g4,a);
xor x1(g1,a,b);
xor x2(g2,b,c);
xor x3(g3,c,d);

endmodule