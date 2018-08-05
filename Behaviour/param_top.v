module param_top;

defparam P1.M = 15;
defparam P1.N = 16;

param_test P1();
param_test #(3,4) P2();
param_test #(.M(19),.N(20)) P3();

endmodule
