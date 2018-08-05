module siso_count(count,inp,clock,reset);

input inp;
input clock;
input reset;

output reg count;

always@(posedge clock, negedge reset )
begin

if(!reset)
begin

count = 0;

end
else
 begin

count= count + 1;

 end
end
endmodule
	