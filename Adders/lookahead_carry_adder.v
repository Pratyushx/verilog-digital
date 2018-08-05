module lookahead_carry_adder(a,b,cin,s,cg,cp);

input [3:0]a;
input [3:0]b;
input [3:0]cin;

output s,cg,cp;

assign s = a^b^cin;
assign cg = a&b;
assign cp = a|b;

endmodule
