module seven_segment_change(
input clk,
input button,

output reg led1,
output reg led2,
output reg led3,
output reg led4,
output reg led5,
output reg led6,
output reg led7,
output reg led8,

output led_control
);

reg [22 : 0] 	counter;			// Счетчик для борьбы с дребезгом контактов
reg [3 : 0] 	state;			// Проверка того, какую мы сейчас цифру уже отображаем, чтобы
										// отобразить следующую
										
reg 				button_flag;	// флаг нажатия кнопки

initial begin

	counter 		<= 23'b0;
	button_flag <= 1'b0;
	state 		<= 0;
	
	led1 <= 1'b1;					// 7-сегментник полностью выключен
	led2 <= 1'b1;
	led3 <= 1'b1;
	led4 <= 1'b1;
	led5 <= 1'b1;
	led6 <= 1'b1;
	led7 <= 1'b1;
	led8 <= 1'b1;
end
	
always @ (posedge clk)
begin
	if (button == 0)				// Борьба с дребезгом
	begin
		counter <= counter + 1'b1;
	end
	if (counter >= 5000000)		// Выставление флага нажатия кнопки
	begin
		button_flag <= 1'b1;
		state <= state + 1;		// Прибавления флага состояния (отображение следующего числа)
		counter <= 23'b0;
	end
	if (button == 1 && counter < 5000000 && counter > 0)	//Борьба с дребезгом
	begin
		counter <= 23'b0;
	end
	if (button_flag == 1'b1 && state == 1)	// Если флаг кнопки выставлен в 1 и state = 1, отображаем единицу
	begin
		led1 <= 1'b1;
		led2 <= 1'b0;
		led3 <= 1'b0;
		led4 <= 1'b1;
		led5 <= 1'b1;
		led6 <= 1'b1;
		led7 <= 1'b1;
		led8 <= 1'b1;
		button_flag <= 1'b0;						// Сбрасываем флаг нажатия
	end
	
	if (button_flag == 1'b1 && state == 2)	// Если флаг кнопки выставлен в 1
														// и state = state + 1 (48 строка), отображаем единицу
	begin
		led1 <= 1'b0;
		led2 <= 1'b0;
		led3 <= 1'b1;
		led4 <= 1'b0;
		led5 <= 1'b0;
		led6 <= 1'b1;
		led7 <= 1'b0;
		led8 <= 1'b1;
		button_flag <= 1'b0;
	end
	if (button_flag == 1'b1 && state == 3)
	begin
		led1 <= 1'b0;
		led2 <= 1'b0;
		led3 <= 1'b0;
		led4 <= 1'b0;
		led5 <= 1'b1;
		led6 <= 1'b1;
		led7 <= 1'b0;
		led8 <= 1'b1;
		button_flag <= 1'b0;
	end
	
	if (button_flag == 1'b1 && state == 4)
	begin
		led1 <= 1'b1;
		led2 <= 1'b0;
		led3 <= 1'b0;
		led4 <= 1'b1;
		led5 <= 1'b1;
		led6 <= 1'b0;
		led7 <= 1'b0;
		led8 <= 1'b1;
		button_flag <= 1'b0;
	end
	
	if (button_flag == 1'b1 && state == 5)
	begin
		led1 <= 1'b0;
		led2 <= 1'b1;
		led3 <= 1'b0;
		led4 <= 1'b0;
		led5 <= 1'b1;
		led6 <= 1'b0;
		led7 <= 1'b0;
		led8 <= 1'b1;
		button_flag <= 1'b0;
	end
	
	if (button_flag == 1'b1 && state == 6)
	begin
		led1 <= 1'b0;
		led2 <= 1'b1;
		led3 <= 1'b0;
		led4 <= 1'b0;
		led5 <= 1'b0;
		led6 <= 1'b0;
		led7 <= 1'b0;
		led8 <= 1'b1;
		button_flag <= 1'b0;
	end
	
	if (button_flag == 1'b1 && state == 7)
	begin
		led1 <= 1'b0;
		led2 <= 1'b0;
		led3 <= 1'b0;
		led4 <= 1'b1;
		led5 <= 1'b1;
		led6 <= 1'b1;
		led7 <= 1'b1;
		led8 <= 1'b1;
		button_flag <= 1'b0;
	end
	
	if (button_flag == 1'b1 && state == 8)
	begin
		led1 <= 1'b0;
		led2 <= 1'b0;
		led3 <= 1'b0;
		led4 <= 1'b0;
		led5 <= 1'b0;
		led6 <= 1'b0;
		led7 <= 1'b0;
		led8 <= 1'b1;
		button_flag <= 1'b0;
	end
	
	if (button_flag == 1'b1 && state == 9)
	begin
		led1 <= 1'b0;
		led2 <= 1'b0;
		led3 <= 1'b0;
		led4 <= 1'b0;
		led5 <= 1'b1;
		led6 <= 1'b0;
		led7 <= 1'b0;
		led8 <= 1'b1;
		button_flag <= 1'b0;
		state <= 0;										//Сброс флага в ноль (число > 9)
	end
end

endmodule