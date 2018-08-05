
module full_adder3(A,B,S1,C1);

input A;
input B;
output S1;
output C1; 

wire w1;
wire w2;
wire w3;

half_adder HA1(A,B,w1,w2);
half_adder HA2(w1,d,S1,w3);
or o1(C1,w2,w3);

endmodule