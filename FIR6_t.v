`timescale 1ns/1ps
module FIR6_t;

reg							clk;
reg		signed		[11:0]	filter_in;
wire	signed		[28:0]	filter_out;

reg		signed	[11:0]	delay0;
reg		signed	[11:0]	delay1;
reg		signed	[11:0]	delay2;
reg		signed	[11:0]	delay3;
reg		signed	[11:0]	delay4;	
reg		signed	[11:0]	delay5;

parameter signed [16:0] coeff0 = 17'd7567;
parameter signed [16:0] coeff1 = 17'd20406;
parameter signed [16:0] coeff2 = 17'd32768;

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
end	
reg		signed [28:0]	pipe_out0;
reg		signed [28:0]	pipe_out1;
reg		signed [28:0]	pipe_out2;
reg		signed [28:0]	pipe_out3;
reg		signed [28:0]	pipe_out4;
reg		signed [28:0]	true_out;
wire	signed [28:0]	mul0 = (delay0 + delay5) * coeff0;
wire	signed [28:0]	mul1 = (delay1 + delay4) * coeff1;
wire	signed [28:0]	mul2 = (delay2 + delay3) * coeff2;
always @(posedge clk)
begin
	pipe_out0 <= $signed(mul0) + $signed(mul1) + $signed(mul2);
	pipe_out1 <= pipe_out0;
	pipe_out2 <= pipe_out1;
	pipe_out3 <= pipe_out2;
	pipe_out4 <= pipe_out3;
	true_out  <= pipe_out4;
end

FIR6 FIR6_t
(
.clk(clk),
.filter_in(filter_in),
.filter_out(filter_out)
);


wire flag = (true_out == filter_out) ? 1'b0 : 1'b1;

endmodule

