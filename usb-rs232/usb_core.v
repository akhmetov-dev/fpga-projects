
//simplest low speed USB receive function

module usb_core(
	input wire reset,
	
	//clock should be 12Mhz
	input wire clk,

	//usb BUS signals
	input wire dp,
	input wire dm,
	input wire enable,

	output wire EOP,

	//output received bytes interface
	output reg [7:0]data,
	output reg data_ready,
	output reg [3:0]rbyte_cnt,
	output wire usb_reset
	);

//fix current USB line values
reg [1:0]dp_input;
reg [1:0]dm_input;

always @(posedge clk)
begin		
	dp_input <= { dp_input[0], dp };
	dm_input <= { dm_input[0], dm };
end

//if both lines in ZERO this is low speed EOP
//EOP reinitializes receiver
assign EOP  = !(dp_input[0] | dp_input[1] | dm_input[0] | dm_input[1]);
reg [3:0]eop_cnt;
reg  strobe;
assign usb_reset = (eop_cnt==4'hF);
always @(posedge clk)
begin
	if(~EOP)
		eop_cnt <= 4'h0;
	else
	if( !usb_reset && strobe)
		eop_cnt <= eop_cnt + 1'b1;
end

//change on DP line defines strobing
wire dp_change; assign dp_change = dp_input[0] ^ dp_input[1];

//generate clocks with this counter
reg [2:0]clk_counter;
reg _strobe;

//make strobe impulse
always @(posedge clk)
begin		
		//every edge on line resynchronizes receiver clock
		if(dp_change)
		begin
			clk_counter <= 0;
			_strobe <= (clk_counter!=3'b000);
		end
		else
			{ _strobe , clk_counter } <= clk_counter + 1'b1;
end

always @(posedge clk)
	strobe <= _strobe;
	
//next bit received is ONE if no signal change or ZERO if signal changed

reg last_fixed_dp;
reg receiver_enabled;
wire next_bit; assign next_bit = (last_fixed_dp == dp_input[1]);

//calc number of sequental ONEs in received bit stream
reg [2:0]num_ones;
always @(posedge clk)
begin
	if(strobe & receiver_enabled)
	begin
		if(next_bit)
			num_ones <= num_ones + 1'b1;
		else
			num_ones <= 0;
	end
end

//flag which mean that zero should be removed from bit stream
wire do_remove_zero; assign do_remove_zero = (num_ones==6);

reg [2:0]receiver_cnt;


//enable receiver on raising edge of DP line
always @(posedge clk or posedge EOP )
begin
	if(EOP)
		receiver_enabled <= 1'b0;
	else
	if( dp_input[0] )
		receiver_enabled <= 1'b1 & enable;
end

//receiver process
always @(posedge clk or posedge EOP )
begin
	if(EOP)
	begin
		//kind of reset
		receiver_cnt <= 0;
		rbyte_cnt <= 0;
		last_fixed_dp <= 1'b0;
		data <= 0;
		data_ready <= 1'b0;
	end
	else
	begin
		if(strobe & receiver_enabled & (!do_remove_zero))
		begin
			//decode NRZI
			//shift-in ONE  if older and new values are same
			//shift-in ZERO if older and new values are different
			//BUT (bitstuffling) do not shift-in one ZERO after 6 ONEs
			data  <= { next_bit, data[7:1] };
			receiver_cnt <= receiver_cnt + 1'b1;	
		end

		//set write-enable signal (write into receiver buffer)
		data_ready <= (receiver_cnt == 7) & (strobe & receiver_enabled & (!do_remove_zero));
		
		//remember last fixed DP,
		if(strobe & receiver_enabled)
			last_fixed_dp <= dp_input[1];

		//count nomber of received bytes
		if(data_ready)
			rbyte_cnt <= rbyte_cnt + 1'b1;
	end
end

endmodule
