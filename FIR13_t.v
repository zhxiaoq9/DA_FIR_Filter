`timescale 1ns/1ps
module FIR13_t;

reg							clk;
reg		signed		[11:0]	filter_in;
wire	signed		[29:0]	filter_out;

reg		signed	[11:0]	delay0;
reg		signed	[11:0]	delay1;
reg		signed	[11:0]	delay2;
reg		signed	[11:0]	delay3;
reg		signed	[11:0]	delay4;	
reg		signed	[11:0]	delay5;
reg		signed	[11:0]	delay6;	
reg		signed	[11:0]	delay7;
reg		signed	[11:0]	delay8;	
reg		signed	[11:0]	delay9;
reg		signed	[11:0]	delay10;
reg		signed	[11:0]	delay11;	
reg		signed	[11:0]	delay12;

parameter signed [16:0] coeff0 = 17'd259;
parameter signed [16:0] coeff1 = 17'd1548;
parameter signed [16:0] coeff2 = 17'd5206;
parameter signed [16:0] coeff3 = 17'd12097;
parameter signed [16:0] coeff4 = 17'd21272;
parameter signed [16:0] coeff5 = 17'd29454;
parameter signed [16:0] coeff6 = 17'd32768;

initial
begin
clk = 0;
filter_in = 0;
end

always #5 clk = ~clk;
always #5 filter_in = $random;


always @(posedge clk)
begin
	delay0 <= filter_in;
	delay1 <= delay0;
	delay2 <= delay1;
	delay3 <= delay2;
	delay4 <= delay3;
	delay5 <= delay4;
	delay6 <= delay5;
	delay7 <= delay6;
	delay8 <= delay7;
	delay9 <= delay8;
	delay10 <= delay9;
	delay11 <= delay10;
	delay12 <= delay11;
end
reg		signed [29:0]	pipe_out0;
reg		signed [29:0]	pipe_out1;
reg		signed [29:0]	pipe_out2;
reg		signed [29:0]	pipe_out3;
reg		signed [29:0]	pipe_out4;
reg		signed [29:0]	pipe_out5;
reg		signed [29:0]	true_out;
wire	signed [29:0]	mul0 = (delay0 + delay12) * coeff0;
wire	signed [29:0]	mul1 = (delay1 + delay11) * coeff1;
wire	signed [29:0]	mul2 = (delay2 + delay10) * coeff2;
wire	signed [29:0]	mul3 = (delay3 + delay9 ) * coeff3;
wire	signed [29:0]	mul4 = (delay4 + delay8 ) * coeff4;
wire	signed [29:0]	mul5 = (delay5 + delay7 ) * coeff5;
wire	signed [29:0]	mul6 = $signed({delay6[11], delay6}) * coeff6;
//wire	signed [29:0]	mul6 = (delay6) * coeff6;

always @(posedge clk)
begin
	pipe_out0 <= $signed(mul0) + $signed(mul1) + $signed(mul2) + $signed(mul3) + $signed(mul4) + $signed(mul5) + $signed(mul6);
	pipe_out1 <= pipe_out0;
	pipe_out2 <= pipe_out1;
	pipe_out3 <= pipe_out2;
	pipe_out4 <= pipe_out3;
	pipe_out5 <= pipe_out4;
	true_out <= pipe_out4;
	//true_out  <= pipe_out5;
end

FIR13 FIR13_t
(
.clk(clk),
.filter_in(filter_in),
.filter_out(filter_out)
);


wire flag = (true_out == filter_out) ? 1'b0 : 1'b1;

endmodule

