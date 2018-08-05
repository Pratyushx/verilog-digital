module driver(clock,reset,tx_start,din,stop_error,parity_error,AN,seg_data);
							
input clock;
input reset;
input tx_start;
input [7:0]din;

wire [7:0]data_in;
wire [3:0]a;
wire [3:0]b;
wire [3:0]c;
wire [3:0]d;
wire [7:0]stop_data_out;
wire [11:0]BCD;

output stop_error;
output parity_error;
output [6:0]seg_data;
output[3:0]AN;

uart_combined uut0 (
                    .clock(clock),
                    .reset(reset),
						  .tx_start(tx_start),
						  .din(din),
						  .parity_error(parity_error),
						  .stop_error(stop_error),
						  .stop_data_out(stop_data_out)
						);

ftask uut1(
			.data_in(stop_data_out),
			.BCD(BCD)
			);

seven_seg_driver uut2(
							.clock(clock),
							.reset(reset),
							.a(BCD[11:8]),
							.b(BCD[7:4]),
							.c(BCD[3:0]),
							.d(4'b000),
							.seg_data(seg_data),
							.AN(AN)
							);
							
							




endmodule