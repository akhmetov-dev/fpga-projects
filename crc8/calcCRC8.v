module calcCRC8(
	input					 clk,
	output reg [7 : 0] out
);

reg [7 : 0] polynom  = 8'b10001011;		//1*x^7 + 0*x^6 + 0*x^5 + 0*x^4 + 1*x^3 + 0*x^2 + 1*x^1 + 1*x^0;
reg [3 : 0] counter 	= 0;
reg [1 : 0] flag		= 0;
reg [7 : 0] data 		= 8'b01010111;		// код символа "W"

initial begin
	out		= 8'b11111111;
end

always @(posedge clk)
begin
	if (flag == 0)
		begin
		if (data > 127)
		begin
			data <= data << 1;
			counter <= counter + 1;
		end
		if (data[0] == 1)
		begin
			data[0] <= data[0] ^ polynom[0];
			data[1] <= data[1] ^ polynom[1];
			data[2] <= data[2] ^ polynom[2];
			data[3] <= data[3] ^ polynom[3];
			data[4] <= data[4] ^ polynom[4];
			data[5] <= data[5] ^ polynom[5];
			data[6] <= data[6] ^ polynom[6];
			data[7] <= data[7] ^ polynom[7];
			data <= data << 1;
			counter <= counter + 1;
		end
		if (counter == 8) flag <= 1;
	end
	if (flag == 1)
	begin
		out <= data;
	end
end
 
endmodule