module testbench_full_adder;

reg at;
reg bt;
reg dt;

wire st;
wire ct;

       full_adder uut(at,bt,dt,st,ct);
        initial
         begin 
                at=0; bt=0; dt=0;
                 #10
                at=0; bt=1; dt=0;
                 #10
                at=1; bt=0; dt=0;
                 #10
                at=1; bt=1; dt=0;
                 #10
                at=0; bt=0; dt=1;
                 #10
                at=0; bt=1; dt=1;
                 #10
                at=1; bt=0; dt=1;
                 #10
                at=1; bt=1; dt=1;

end
endmodule