module seven_segment_change(
input clk,
input button,

output led_1,
output led_2
);

reg [25 : 0] counter_sec;			// задержка для отпускания кнопки
reg led_flag;

initial begin
	counter_sec <= 26'b0;
	led_flag <= 0;
end
	
always @ (posedge clk)
begin
	counter_sec <= counter_sec + 1;
	
	if (counter_sec == 50000000)
	begin
		led_flag <= !led_flag;
		counter_sec <= 26'b0;
	end
end

assign led_1 =  led_flag;
assign led_2 =  !led_flag;
endmodule