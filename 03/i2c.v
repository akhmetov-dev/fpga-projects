module i2c (clk, reset, scl, sda);

input wire reset;
input wire clk;

output reg scl;
output reg sda;

// Пример передачи: адрес устройства 0x78 = 0111100
// Тестовая команда: 0xAA

localparam STATE_IDLE = 0;		// простой
localparam STATE_START = 1;	// старт передачи
localparam STATE_ADDR = 2;		// передача адреса
localparam STATE_RW = 3;		// передача бита RW
localparam STATE_WACK = 4;
localparam STATE_DATA = 5;		// передача данных
localparam STATE_STOP = 6;		// остановка передачи
localparam STATE_WACK2 = 7;

reg [7 : 0] state; // машина состояний

reg [6 : 0] addr; // адрес дисплея (0x78 = h78)

reg [7 : 0] count; // счетчик количества переданных битов в пакете

reg [7 : 0] data; // данные для передачи в ОЗУ дисплея для последующей отрисовки (hAA)

always @ (posedge clk)
begin
	if (reset == 1)
	begin
		state <= 0;
		scl <= 1;
		sda <= 1;
		addr <= 7'h78;
		count <= 8'b0;
		addr <= 8'hAA;
	end
	else
	begin
		case (state)
			STATE_IDLE : begin
				sda <= 1;
				state <= STATE_START;
			end
			
			STATE_START : begin
				sda <= 1;
				state <= STATE_ADDR;
				count <= 6;
			end
			
			STATE_ADDR : begin
				sda <= addr[count];
				if (count == 0) state <= STATE_RW;
				else count <= count - 1;
			end
			
			STATE_RW : begin
				sda <= 1;
				state <= STATE_WACK;
			end
			
			STATE_WACK : begin
				state <= STATE_DATA;
			end
			
			STATE_DATA : begin
				sda <= data[count];
				if (count == 0) state <= STATE_WACK2;
				else count <= count - 1;
			end
			
			STATE_WACK2 : begin
				state <= STATE_STOP;
			end
			
			STATE_STOP : begin
				sda <= 1;
				state <= STATE_IDLE;
			end
		endcase
	end
end

endmodule