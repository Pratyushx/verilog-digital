module siso_temp(y,inp,load,clock,reset);

input inp;
input clock;
input reset;
input load;

reg [7:0]temp;
output reg y;

always@(posedge clock, negedge reset)
begin

if(!reset)
 begin

 temp <= 0;
 y<=0;

 end
else
 begin

 if(load==1)
	temp<= inp;
 else if(load==0)
	temp<={temp[2:0], inp};

 end
	
end
endmodule
	