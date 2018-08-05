module half_adder(a,b,s,c);

input a;
input b;
output s;
output c;

xor f1(s,b,a);

and f2(c,b,a);

endmodule

