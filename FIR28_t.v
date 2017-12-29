`timescale 1ns/1ps
module FIR28_t;

reg							clk;
reg		signed		[11:0]	filter_in;
wire	signed		[29:0]	filter_out;

reg signed [11:0] delay0;
reg signed [11:0] delay1;
reg signed [11:0] delay2;
reg signed [11:0] delay3;
reg signed [11:0] delay4;
reg signed [11:0] delay5;
reg signed [11:0] delay6;
reg signed [11:0] delay7;
reg signed [11:0] delay8;
reg signed [11:0] delay9;
reg signed [11:0] delay10;
reg signed [11:0] delay11;
reg signed [11:0] delay12;
reg signed [11:0] delay13;
reg signed [11:0] delay14;
reg signed [11:0] delay15;
reg signed [11:0] delay16;
reg signed [11:0] delay17;
reg signed [11:0] delay18;
reg signed [11:0] delay19;
reg signed [11:0] delay20;
reg signed [11:0] delay21;
reg signed [11:0] delay22;
reg signed [11:0] delay23;
reg signed [11:0] delay24;
reg signed [11:0] delay25;
reg signed [11:0] delay26;
reg signed [11:0] delay27;
parameter signed [16:0] coeff0 = 17'd594;
parameter signed [16:0] coeff1 = 17'd175;
parameter signed [16:0] coeff2 = -17'd2472;
parameter signed [16:0] coeff3 = -17'd4154;
parameter signed [16:0] coeff4 = -17'd1184;
parameter signed [16:0] coeff5 = 17'd2209;
parameter signed [16:0] coeff6 = -17'd122;
parameter signed [16:0] coeff7 = -17'd3176;
parameter signed [16:0] coeff8 = 17'd831;
parameter signed [16:0] coeff9 = 17'd4443;
parameter signed [16:0] coeff10 = -17'd2572;
parameter signed [16:0] coeff11 = -17'd7504;
parameter signed [16:0] coeff12 = 17'd8682;
parameter signed [16:0] coeff13 = 17'd32768;

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
	delay13 <= delay12;
	delay14 <= delay13;
	delay15 <= delay14;
	delay16 <= delay15;
	delay17 <= delay16;
	delay18 <= delay17;
	delay19 <= delay18;
	delay20 <= delay19;
	delay21 <= delay20;
	delay22 <= delay21;
	delay23 <= delay22;
	delay24 <= delay23;
	delay25 <= delay24;
	delay26 <= delay25;
	delay27 <= delay26;
end
reg		signed [29:0]	pipe_out0;
reg		signed [29:0]	pipe_out1;
reg		signed [29:0]	pipe_out2;
reg		signed [29:0]	pipe_out3;
reg		signed [29:0]	pipe_out4;
reg		signed [29:0]	pipe_out5;
reg		signed [29:0]	pipe_out6;
reg		signed [29:0]	pipe_out7;
reg		signed [29:0]	true_out;
wire	signed [29:0]	mul0 = (delay0 + delay27 ) * coeff0;
wire	signed [29:0]	mul1 = (delay1 + delay26 ) * coeff1;
wire	signed [29:0]	mul2 = (delay2 + delay25 ) * coeff2;
wire	signed [29:0]	mul3 = (delay3 + delay24 ) * coeff3;
wire	signed [29:0]	mul4 = (delay4 + delay23 ) * coeff4;
wire	signed [29:0]	mul5 = (delay5 + delay22 ) * coeff5;
wire	signed [29:0]	mul6 = (delay6 + delay21 ) * coeff6;
wire	signed [29:0]	mul7 = (delay7 + delay20 ) * coeff7;
wire	signed [29:0]	mul8 = (delay8 + delay19 ) * coeff8;
wire	signed [29:0]	mul9 = (delay9 + delay18 ) * coeff9;
wire	signed [29:0]	mul10 = (delay10 + delay17 ) * coeff10;
wire	signed [29:0]	mul11 = (delay11 + delay16 ) * coeff11;
wire	signed [29:0]	mul12 = (delay12 + delay15 ) * coeff12;
wire	signed [29:0]	mul13 = (delay13 + delay14 ) * coeff13;

always @(posedge clk)
begin
	pipe_out0 <= $signed(mul0) + $signed(mul1) + $signed(mul2) + $signed(mul3) + $signed(mul4) + 
				 $signed(mul5) + $signed(mul6)+ $signed(mul7) + $signed(mul8) + $signed(mul9) + 
				 $signed(mul10) + $signed(mul11) + $signed(mul12) + $signed(mul13);
	pipe_out1 <= pipe_out0;
	pipe_out2 <= pipe_out1;
	pipe_out3 <= pipe_out2;
	pipe_out4 <= pipe_out3;
	pipe_out5 <= pipe_out4;
	pipe_out6 <= pipe_out5;
	pipe_out7 <= pipe_out6;
	true_out  <= pipe_out6;
end

FIR28 FIR28_t
(
.clk(clk),
.filter_in(filter_in),
.filter_out(filter_out)
);


wire flag = (true_out == filter_out) ? 1'b0 : 1'b1;

endmodule

