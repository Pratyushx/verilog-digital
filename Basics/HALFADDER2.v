module half_adder(a,b,s,c,d);

input a;
input b;
output s;
output c;

xor x1(s,a,b);
and a1(c,a,b);

endmodule