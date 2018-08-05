module uart_parity(clk,reset,din,dout,load,parity_out);

output dout ;
reg dout ;

input [7:0] din ;
wire [7:0] din ;
input clk ;
wire clk ;
input reset ;
wire reset ;
input load ;
wire load ;

reg [7:0]temp;

always@(posedge clk, posedge reset)
begin

	if (reset)
  temp <= 1;
	else if (load)
  temp <= din;
	else
  temp <= parity_out;
   parity_out xor 	

endmodule

