module behavioural_siso(y,inp,clock,reset);

input inp;
input clock;
input reset;
 reg a;
 reg b;
 reg c;
 reg d;
output reg y;

always@(posedge clock, negedge reset)
begin

if(!reset)
begin
	a<=0;
	b<=0;
	c<=0;
	d<=0;
	y<=0;
	end
else
 begin
   a<=inp;
	b<=a;
	c<=b;
	d<=c;
	y<=d;
	end
	
end
endmodule
	