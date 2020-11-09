module pwm (
	input clk,
	output reg [0 : 3] leds
);

reg [0 : 6] pwm_counter;

initial begin
	leds <= 2'b1;
	pwm_counter <= 0;
end

always @(posedge clk)
begin
	pwm_counter <= pwm_counter + 1;
	
	if (pwm_counter < 25) leds = 4'b0000;
	else
	begin
		if (pwm_counter < 50) leds = 4'b1000;
		else
		begin
			if (pwm_counter < 75) leds = 4'b1100;
			else
			begin
				if (pwm_counter < 100) leds = 4'b1110;
				else pwm_counter <= 0;
			end
		end
	end
end 

endmodule