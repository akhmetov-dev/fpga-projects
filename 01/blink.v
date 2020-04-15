module blink (clk, led);

input clk;
output led;

// Тактовая частота кварца - 50МГц.
// Берем 26-битный счетчик (макс. значение - 67108864)
reg [25 : 0] counter;
reg [1 : 0] led_status;

initial begin
	counter <= 26'b0;
	led_status <= 1'b0;
end

// Когда доходим до 50 000 000 - обнуляем счетчик и
// toggle вывод со светодиодом
always @ (posedge clk)
begin
	counter <= counter + 1'b1;
	if (counter == 50000000)
	begin
		led_status <= !led_status;
		counter <= 26'b0;
	end
end

assign led = led_status;

endmodule