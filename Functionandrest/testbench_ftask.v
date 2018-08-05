module testbench_ftask;

reg [7:0]data_in;
wire [11:0]BCD_out;

ftask uut(
           .data_in(data_in),
			  .BCD_out(BCD_out)
			  );

initial
	begin
 data_in=8'b11111100;
	end
endmodule
