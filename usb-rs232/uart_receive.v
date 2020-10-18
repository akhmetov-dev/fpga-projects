module uart_receive(clk,Rx,led);
input clk;
input Rx;
output reg led = 0;
 
reg [1:0]	RxEnable = 1'b0;
reg [11:0]	count		= 1'b0;
reg [9:0]	data		= 10'b0000000000;
reg [4:0]	i			= 1'b0;
reg [7:0]	ASCII		= 8'b00110000;
 
always @ (posedge clk) 
begin
	if((Rx == 0)&&(i == 0))
	begin
		RxEnable <= 1'b1;
	end 
	if(RxEnable == 1'b1)
	begin
		count <= count + 1'b1;
		if((count == 434)&&(i == 0))
		begin
			i <= 1;
			count <= 0;
		end
		if((i > 0)&&(count == 868))
		begin
			data[i] <= Rx;
			count <= 0;
			i <= i + 1;
			if(i > 9)
			begin
				i <= 0;
				RxEnable <= 1'b0;
			end
		end
	end
	if(RxEnable == 1'b0)
	begin
		if(data[8:1] == ASCII[7:0])
		led = 1'b1;
	end
	else
		begin
		led = 1'b0;
	end
end
endmodule