module ftask(data_in,BCD_out);

input [7:0]data_in;
output reg [11:0]BCD_out;

always@(data_in)
	BCD_task(data_in,BCD_out);
	
task BCD_task(   
               input [7:0]data_in,
					output[11:0]BCD
              );

integer i;

reg [19:0]temp;
	begin
		temp={ 4'b0000,4'b0000,4'b0000,data_in };
			for(i=0; i<=7; i=i+1)
				begin
					if(temp[19:16] >4)
						temp[19:16]=temp[19:16]+3;
					if(temp[15:12] >4)
						temp[15:12]=temp[15:12]+3;
					if(temp[11:8] >4)
						temp[11:8]=temp[11:8]+3;
					temp={temp[18:0],1'b0};
				end
		BCD=temp[19:8];
	end
endtask		

endmodule
