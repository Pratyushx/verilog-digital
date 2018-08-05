module operators(a,b,y,z);

input [3:0]a;
input [3:0]b;
output [7:0]y;
output [16:0]z;

assign y = {a,b};
assign z = {{2{a}},{2{b}}};

endmodule
