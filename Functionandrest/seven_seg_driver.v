module seven_seg_driver(a,b,c,d,seg_data,clock,reset);

reg [3:0]AN;
input clock;
input reset;
input [3:0]a;
input [3:0]b;
input [3:0]c;
input [3:0]d;

output reg [6:0]seg_data;

reg [19:0]count;

always@(posedge clock,negedge reset)
begin
	if(!reset)
		begin
		count<=0;
		AN<=4'b0000;
		seg_data<=seg_convert(4'b0000);
		end
	else
		begin
		count<=count+1;
		
		case(count[19:18])
		2'b00:begin
				AN<=4'b1110;
				seg_data<=seg_convert(d);
				end
				
		2'b01:begin
				AN<=4'b1101;
				seg_data<=seg_convert(c);
				end
					
		2'b10:begin
				AN<=4'b1110;
				seg_data<=seg_convert(b);
				end

		2'b11:begin
				AN<=4'b1100;
				seg_data<=seg_convert(a);
				end			
		
		endcase
	   end
end
		
function [6:0]seg_convert(input[3:0]d_in);
			begin
			case(d_in)
			4'b0000: seg_convert=7'b0000001;
			4'b0001: seg_convert=7'b1001111;
			4'b0010: seg_convert=7'b0010010;
			4'b0011: seg_convert=7'b0000110;
			4'b0100: seg_convert=7'b1001100;
			4'b0101: seg_convert=7'b0100100;
			4'b0110: seg_convert=7'b0100000;
			4'b0111: seg_convert=7'b0001111;
			4'b1000: seg_convert=7'b0000000;
			4'b1001: seg_convert=7'b0100100;
			
			default: seg_convert=7'b0110000;
			
			endcase
			end
endfunction
			endmodule
