module test_full_adder(a,b,d,s,c);

input a;
input b;
input d;
output s;
output c;

wire w1;
wire w2;
wire w3;

xor f1(w1,a,b);
xor f2(s,d,w1);
and f3(w2,d,w1);
and f4(w3,b,a);
or f5(c,w3,w2);

endmodule
