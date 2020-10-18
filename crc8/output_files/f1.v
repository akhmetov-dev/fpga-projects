module f1(
	input					 clk,
	output reg [7 : 0] output_reg
);

reg [7 : 0] data 		= 8'b01001000;			//код символа "W"
reg [7 : 0] polynom  = 8'b10001011;		//1*x^7 + 0*x^6 + 0*x^5 + 0*x^4 + 1*x^3 + 0*x^2 + 1*x^1 + 1*x^0;
reg flag					= 0;
reg [3 : 0] counter 	= 4'b0000;

initial begin
	output_reg <= 8'b11111111;
end

always @(posedge clk)
begin
	if (flag == 0)
	begin
		if (counter <= 8)
		begin
			if (data <= 127)
			begin
				data = data << 1;
				counter = counter + 1;
				//flag <= 1;
			end
			else
			begin
				data = data ^ polynom;
				data = data << 1;
				counter = counter + 1;
				//flag <= 1;
			end
		end
		else
		begin
			flag = 1;
			counter = 0;
		end
	end
	else
	begin
		output_reg = ~data;
	end
end
 
endmodule