module uart_piso( din ,clk ,reset ,load ,dout );

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

always @ (posedge clk, posedge reset ) 
	begin
 if (reset)
  temp <= 1;
 else if (load)
  temp <= din;
 else
 begin
  dout <= temp[7];
  temp <= {temp[7:0],7'b0000000};
 end
end

endmodule

 
 