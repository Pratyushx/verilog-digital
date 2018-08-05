module counter_1100(x,y,reset,clock);

input reset;
input clock;
input x;
output reg y;

reg [1:0] current_state;
reg [1:0] next_state;

//current_state logic

always @(posedge clock or posedge reset)
	begin
		if(!reset)
			current_state <= 2'b00;
		else
			current_state <= next_state;
	end

// next_state logic

always @(*)
	begin
		case(current_state)
			2'b00: begin
				if(x == 1)
					next_state <= 2'b01;
				else
					next_state <= 2'b00;
				end
				
			2'b01: begin
				if(x == 1)
					next_state <= 2'b10;
				else
					next_state <= 2'b00;
				end

			2'b10: begin
				if(x == 0)
					next_state <= 2'b11;
				else
					next_state <= 2'b10;
				end

			2'b11: begin
				if(x == 1)
					next_state <= 2'b01;
				else
					next_state <= 2'b00;
				end	

			endcase
			end
			
//output_logic

always @(*)
	begin
		case(current_state)
		2'b00 : begin
			y <= 0;
			end
		2'b01 : begin
			y <= 0;
			end
		2'b10 : begin
			y <= 0;
			end
		2'b11 : begin
			if(x == 1)
				y <= 1;
			else
				y <= 0;
			end		
   endcase		
	end
endmodule

