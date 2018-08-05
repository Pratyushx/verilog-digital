
module shift_testbench();
reg [7:0]A;
reg signed [7:0]B;

wire [7:0]y;
wire [7:0]z;

assign y = A>>>2;
assign z = B<<<2;



				  initial 
				  begin
				  
				   A=8'b10000001;  B=8'b10000001; 
				  #100
				   A=8'b10110000;  B=8'b10110000; 
				  #100
				   A=8'b01110000;  B=8'b01000011; 
				  #100
               A=8'b11110000;  B=8'b10000111; 
				  
				  end
				  endmodule
				  