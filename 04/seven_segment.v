module seven_segment
(
input clk,
input button,

output led1,
output led2,
output led3,
output led4,
output led5,
output led6,
output led7,
output led8,

output led_control
);

reg [7 : 0] led_status;

initial begin
	led_status <= 8'b0;
end

always @ (posedge clk)
begin

	if (button == 0)
	begin
		led_status <= 8'b10010000;
	end
	
	else
	begin
		led_status <= 8'b11111111;
	end
	
end

assign led1 = led_status[0];
assign led2 = led_status[1];
assign led3 = led_status[2];
assign led4 = led_status[3];
assign led5 = led_status[4];
assign led6 = led_status[5];
assign led7 = led_status[6];
assign led8 = led_status[7];

endmodule