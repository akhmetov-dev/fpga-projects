module i2c_master (clk, led, scl, sda, button);

input clk;
input button;

output reg led;

output reg scl;
output reg sda;

reg [7 : 0] counter_100_khz;
reg [22 : 0] counter_debounce;
reg [7 : 0] addr;
reg [3 : 0] counter_packet;

reg button_flag;
reg state;

initial begin
	counter_100_khz <= 8'b0;
	counter_debounce <= 23'b0;
	counter_packet <= 0;
	
	
	addr <= 8'b01111000;				// Адрес дисплея ssd1306
	
	button_flag <= 0;
	led <= 0;
	scl <= 0;
	sda <= 1;
	state <= 0;
end

always @ (posedge clk)
begin
	counter_100_khz <= counter_100_khz + 1;
	if (counter_100_khz == 250)
	begin
		scl <= !scl;
		counter_100_khz <= 8'b0;
	end
end

always @ (posedge clk)
begin
	if (button == 0)
	begin
		counter_debounce <= counter_debounce + 1;
	end
	
	if (counter_debounce >= 5000000)
	begin
		button_flag <= 1;
		counter_debounce <= 23'b0;
	end
	
	if (button == 1 && counter_debounce > 0 && counter_debounce < 5000000)
	begin
		counter_debounce <= counter_debounce - 1;
	end

	if (button == 1 && counter_debounce == 0)
	begin
		button_flag <= 0;
	end
end

always @ (negedge scl)
begin
	if (button_flag == 1)
	begin
		case (state)
			0 :
			begin
				state <= 1;
				sda <= 0;
			end
			1 :
			begin
				if (counter_packet < 8)
				begin
					sda <= addr[counter_packet];
					counter_packet <= counter_packet + 1;
				end
				else
				begin
					counter_packet <= 0;
				end
			end
		endcase
	end
end

endmodule