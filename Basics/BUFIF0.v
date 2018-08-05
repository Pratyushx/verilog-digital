module bufif0_gate(a,b,y);

input a;
input b;
output y;

bufif0 f8(y,a,b);

endmodule