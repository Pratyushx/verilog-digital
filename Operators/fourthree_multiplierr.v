
module fourthree_multiplierr(A,B,s,c,P);

input [3:0]A;
input [2:0]B;

output [5:0]P;

wire [3:0]s;
wire [3:0]c;

and a1(P[0],A[0],B[0]);

half_adder HA1(
               .A(b[0]&a[1]),
					.B(b[1]&a[0]),
					.S1(p[1]),
					.C1(1'b0),
					.C2(c[0])
					);
					
half_adder HA2(
               .A(b[0]&a[2]),
					.B(b[1]&a[1]),
					.S1(s[0]),
					.C1(c[0]),
					.C2(c[1])
					);
					
half_adder HA3(
               .A(b[0]&a[3]),
					.B(b[1]&a[0]),
					.S1(s[1]),
					.C1(c[1]),
					.C2(c[2])
					);
					
half_adder HA4(
               .A(1'b0),
					.B(b[1]&a[3]),
					.S1(s[2]),
					.C1(c[2]),
					.C2(c[3])
					);
					
half_adder HA5(
               .A(s[0]),
					.B(b[2]&a[0]),
					.S1(p[2]),
					.C1(1'b0),
					.C2(c[4])
					);
					
half_adder HA6(
               .A(s[1]),
					.B(b[2]&a[1]),
					.S1(p[3]),
					.C1(c[4]),
					.C2(c[5])
					);
					
half_adder HA7(
               .A(s[2]),
					.B(b[2]&a[2]),
					.S1(p[4]),
					.C1(c[5]),
					.C2(c[6])
					);
					
half_adder HA8(
               .A(s[3]),
					.B(b[2]&a[3]),
					.S1(p[5]),
					.C1(c[6]),
					.C2(p[6])
					);
					

endmodule
