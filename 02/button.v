module button (clk, button_on, button_off,led);

input clk;
input button_on;
input button_off;

output led;

reg [18 : 0] counter1 = 19'b0;
reg [18 : 0] counter2 = 19'b0;

reg button_on_status = 1'b0;
reg button_off_status = 1'b0;

reg led_status = 1'b1;


always @ (button_on)
begin
	if (button_on == 1)
		button_on_status <= 1'b0;
	else
	begin
		button_on_status <= 1'b1;
	end
end

always @ (button_off)
begin
	if (button_off == 1)
		button_off_status <= 1'b0;
	else
	begin
		button_off_status <= 1'b1;
	end
end

always @ (posedge clk) 
begin

	if (button_on_status == 1'b1)
	begin
		counter1 <= counter1 + 1'b1;
	end
	
	if(button_on_status == 1'b0)
	begin
		counter1 <= 0;
	end
	
	if(counter1 == 500000)
	begin
		led_status <= 1'b0;
	end
	
	if (button_off_status == 1'b1)
	begin
		counter2 <= counter2 + 1'b1;
	end
	
	if(button_off_status == 1'b0)
	begin
		counter2 <= 0;
	end
	
	if(counter2 == 500000)
	begin
		led_status <= 1'b1;
	end
	
	if(button_on == 0 && button_off == 0)
	begin
		led_status <= 1'b0;
	end
end





assign led = led_status;

endmodule