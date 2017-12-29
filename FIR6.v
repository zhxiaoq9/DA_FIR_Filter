//NEW FIR6
module FIR6(
input						clk,
input	signed		[11:0]	filter_in,
output	signed		[28:0]	filter_out
);


parameter signed [16:0] coeff0 = 17'd7567;
parameter signed [16:0] coeff1 = 17'd20406;
parameter signed [16:0] coeff2 = 17'd32768;
		
//wire		signed	[11:0]	delay0 = filter_in;
reg		signed	[11:0]	delay0;
reg		signed	[11:0]	delay1;
reg		signed	[11:0]	delay2;
reg		signed	[11:0]	delay3;
reg		signed	[11:0]	delay4;	
reg		signed	[11:0]	delay5;

always @(posedge clk)
begin
	delay0 <= filter_in;
	delay1 <= delay0;
	delay2 <= delay1;
	delay3 <= delay2;
	delay4 <= delay3;
	delay5 <= delay4;
end


//wire	signed	[12:0]	add0 = delay0 + delay5;
//wire	signed	[12:0]	add1 = delay1 + delay4;
//wire	signed	[12:0]	add2 = delay2 + delay3;
reg		signed	[12:0]	add0;
reg		signed	[12:0]	add1;
reg		signed	[12:0]	add2;
always @(posedge clk)
begin
	add0 <= delay0 + delay5;
end
always @(posedge clk)
begin
	add1 <= delay1 + delay4;
end
always @(posedge clk)
begin
	add2 <= delay2 + delay3;
end
//-----------------------------------begin lut table-----------------------------------//
wire	[2:0]	lut_addr0_0  = {add2[0], add1[0], add0[0]};
wire	[2:0]	lut_addr1_0  = {add2[1], add1[1], add0[1]};
wire	[2:0]	lut_addr2_0  = {add2[2], add1[2], add0[2]};
wire	[2:0]	lut_addr3_0  = {add2[3], add1[3], add0[3]};
wire	[2:0]	lut_addr4_0  = {add2[4], add1[4], add0[4]};
wire	[2:0]	lut_addr5_0  = {add2[5], add1[5], add0[5]};
wire	[2:0]	lut_addr6_0  = {add2[6], add1[6], add0[6]};
wire	[2:0]	lut_addr7_0  = {add2[7], add1[7], add0[7]};
wire	[2:0]	lut_addr8_0  = {add2[8], add1[8], add0[8]};
wire	[2:0]	lut_addr9_0  = {add2[9], add1[9], add0[9]};
wire	[2:0]	lut_addr10_0 = {add2[10], add1[10], add0[10]};
wire	[2:0]	lut_addr11_0 = {add2[11], add1[11], add0[11]};
wire	[2:0]	lut_addr12_0 = {add2[12], add1[12], add0[12]};
reg signed  [16:0]	lut0_out, lut0_0;
reg signed	[16:0]	lut1_out, lut1_0;
reg signed	[16:0]	lut2_out, lut2_0;
reg signed	[16:0]	lut3_out, lut3_0;
reg signed	[16:0]	lut4_out, lut4_0;
reg signed	[16:0]	lut5_out, lut5_0;
reg signed	[16:0]	lut6_out, lut6_0;
reg signed	[16:0]	lut7_out, lut7_0;
reg signed	[16:0]	lut8_out, lut8_0;
reg signed	[16:0]	lut9_out, lut9_0;
reg signed	[16:0]	lut10_out, lut10_0;
reg signed	[16:0]	lut11_out, lut11_0;
reg signed	[16:0]	lut12_out, lut12_0;
always @(lut_addr0_0)
begin
	case(lut_addr0_0)
	3'd0:	lut0_out = 17'd0;
	3'd1:	lut0_out = coeff0;	
	3'd2:	lut0_out = coeff1;
	3'd3:	lut0_out = coeff1+coeff0;
	3'd4:	lut0_out = coeff2;
	3'd5:	lut0_out = coeff2+coeff0;
	3'd6:	lut0_out = coeff2+coeff1;
	3'd7:	lut0_out = coeff2+coeff1+coeff0;
	default:lut0_out = 17'd0;
	endcase
end
always @(lut_addr1_0)
begin
	case(lut_addr1_0)
	3'd0:	lut1_out = 17'd0;
	3'd1:	lut1_out = coeff0;	
	3'd2:	lut1_out = coeff1;
	3'd3:	lut1_out = coeff1+coeff0;
	3'd4:	lut1_out = coeff2;
	3'd5:	lut1_out = coeff2+coeff0;
	3'd6:	lut1_out = coeff2+coeff1;
	3'd7:	lut1_out = coeff2+coeff1+coeff0;
	default:lut1_out = 17'd0;
	endcase
end
always @(lut_addr2_0)
begin
	case(lut_addr2_0)
	3'd0:	lut2_out = 17'd0;
	3'd1:	lut2_out = coeff0;	
	3'd2:	lut2_out = coeff1;
	3'd3:	lut2_out = coeff1+coeff0;
	3'd4:	lut2_out = coeff2;
	3'd5:	lut2_out = coeff2+coeff0;
	3'd6:	lut2_out = coeff2+coeff1;
	3'd7:	lut2_out = coeff2+coeff1+coeff0;
	default:lut2_out = 17'd0;
	endcase
end
always @(lut_addr3_0)
begin
	case(lut_addr3_0)
	3'd0:	lut3_out = 17'd0;
	3'd1:	lut3_out = coeff0;	
	3'd2:	lut3_out = coeff1;
	3'd3:	lut3_out = coeff1+coeff0;
	3'd4:	lut3_out = coeff2;
	3'd5:	lut3_out = coeff2+coeff0;
	3'd6:	lut3_out = coeff2+coeff1;
	3'd7:	lut3_out = coeff2+coeff1+coeff0;
	default:lut3_out = 17'd0;
	endcase
end
always @(lut_addr4_0)
begin
	case(lut_addr4_0)
	3'd0:	lut4_out = 17'd0;
	3'd1:	lut4_out = coeff0;	
	3'd2:	lut4_out = coeff1;
	3'd3:	lut4_out = coeff1+coeff0;
	3'd4:	lut4_out = coeff2;
	3'd5:	lut4_out = coeff2+coeff0;
	3'd6:	lut4_out = coeff2+coeff1;
	3'd7:	lut4_out = coeff2+coeff1+coeff0;
	default:lut4_out = 17'd0;
	endcase
end
always @(lut_addr5_0)
begin
	case(lut_addr5_0)
	3'd0:	lut5_out = 17'd0;
	3'd1:	lut5_out = coeff0;	
	3'd2:	lut5_out = coeff1;
	3'd3:	lut5_out = coeff1+coeff0;
	3'd4:	lut5_out = coeff2;
	3'd5:	lut5_out = coeff2+coeff0;
	3'd6:	lut5_out = coeff2+coeff1;
	3'd7:	lut5_out = coeff2+coeff1+coeff0;
	default:lut5_out = 17'd0;
	endcase
end
always @(lut_addr6_0)
begin
	case(lut_addr6_0)
	3'd0:	lut6_out = 17'd0;
	3'd1:	lut6_out = coeff0;	
	3'd2:	lut6_out = coeff1;
	3'd3:	lut6_out = coeff1+coeff0;
	3'd4:	lut6_out = coeff2;
	3'd5:	lut6_out = coeff2+coeff0;
	3'd6:	lut6_out = coeff2+coeff1;
	3'd7:	lut6_out = coeff2+coeff1+coeff0;
	default:lut6_out = 17'd0;
	endcase
end
always @(lut_addr7_0)
begin
	case(lut_addr7_0)
	3'd0:	lut7_out = 17'd0;
	3'd1:	lut7_out = coeff0;	
	3'd2:	lut7_out = coeff1;
	3'd3:	lut7_out = coeff1+coeff0;
	3'd4:	lut7_out = coeff2;
	3'd5:	lut7_out = coeff2+coeff0;
	3'd6:	lut7_out = coeff2+coeff1;
	3'd7:	lut7_out = coeff2+coeff1+coeff0;
	default:lut7_out = 17'd0;
	endcase
end
always @(lut_addr8_0)
begin
	case(lut_addr8_0)
	3'd0:	lut8_out = 17'd0;
	3'd1:	lut8_out = coeff0;	
	3'd2:	lut8_out = coeff1;
	3'd3:	lut8_out = coeff1+coeff0;
	3'd4:	lut8_out = coeff2;
	3'd5:	lut8_out = coeff2+coeff0;
	3'd6:	lut8_out = coeff2+coeff1;
	3'd7:	lut8_out = coeff2+coeff1+coeff0;
	default:lut8_out = 17'd0;
	endcase
end
always @(lut_addr9_0)
begin
	case(lut_addr9_0)
	3'd0:	lut9_out = 17'd0;
	3'd1:	lut9_out = coeff0;	
	3'd2:	lut9_out = coeff1;
	3'd3:	lut9_out = coeff1+coeff0;
	3'd4:	lut9_out = coeff2;
	3'd5:	lut9_out = coeff2+coeff0;
	3'd6:	lut9_out = coeff2+coeff1;
	3'd7:	lut9_out = coeff2+coeff1+coeff0;
	default:lut9_out = 17'd0;
	endcase
end
always @(lut_addr10_0)
begin
	case(lut_addr10_0)
	3'd0:	lut10_out = 17'd0;
	3'd1:	lut10_out = coeff0;	
	3'd2:	lut10_out = coeff1;
	3'd3:	lut10_out = coeff1+coeff0;
	3'd4:	lut10_out = coeff2;
	3'd5:	lut10_out = coeff2+coeff0;
	3'd6:	lut10_out = coeff2+coeff1;
	3'd7:	lut10_out = coeff2+coeff1+coeff0;
	default:lut10_out = 17'd0;
	endcase
end
always @(lut_addr11_0)
begin
	case(lut_addr11_0)
	3'd0:	lut11_out = 17'd0;
	3'd1:	lut11_out = coeff0;	
	3'd2:	lut11_out = coeff1;
	3'd3:	lut11_out = coeff1+coeff0;
	3'd4:	lut11_out = coeff2;
	3'd5:	lut11_out = coeff2+coeff0;
	3'd6:	lut11_out = coeff2+coeff1;
	3'd7:	lut11_out = coeff2+coeff1+coeff0;
	default:lut11_out = 17'd0;
	endcase
end
always @(lut_addr12_0)
begin
	case(lut_addr12_0)
	3'd0:	lut12_out = 17'd0;
	3'd1:	lut12_out = -coeff0;	
	3'd2:	lut12_out = -coeff1;
	3'd3:	lut12_out = -(coeff1+coeff0);
	3'd4:	lut12_out = -coeff2;
	3'd5:	lut12_out = -(coeff2+coeff0);
	3'd6:	lut12_out = -(coeff2+coeff1);
	3'd7:	lut12_out = -(coeff2+coeff1+coeff0);
	default:lut12_out = 17'd0;
	endcase
end

always @(posedge clk)
begin
	lut0_0 <= lut0_out;
end
always @(posedge clk)
begin
	lut1_0 <= lut1_out;
end
always @(posedge clk)
begin
	lut2_0 <= lut2_out;
end
always @(posedge clk)
begin
	lut3_0 <= lut3_out;
end
always @(posedge clk)
begin
	lut4_0 <= lut4_out;
end
always @(posedge clk)
begin
	lut5_0 <= lut5_out;
end
always @(posedge clk)
begin
	lut6_0 <= lut6_out;
end
always @(posedge clk)
begin
	lut7_0 <= lut7_out;
end
always @(posedge clk)
begin
	lut8_0 <= lut8_out;
end
always @(posedge clk)
begin
	lut9_0 <= lut9_out;
end
always @(posedge clk)
begin
	lut10_0 <= lut10_out;
end
always @(posedge clk)
begin
	lut11_0 <= lut11_out;
end
always @(posedge clk)
begin
	lut12_0 <= lut12_out;
end

//-----------------------------------begin adder tree-----------------------------------//
wire [21:0]	level0_add0_X =  {{5{lut0_0[16]}}, lut0_0};
wire [21:0]	level0_add0_Y =  {{4{lut1_0[16]}}, lut1_0, {1{1'b0}}};
wire [21:0]	level0_add0_Z =  {{3{lut2_0[16]}}, lut2_0, {2{1'b0}}};
wire [21:0]	level0_add0_W =  {{2{lut3_0[16]}}, lut3_0, {3{1'b0}}};
wire [21:0]	level0_add0_S;
wire [21:0]	level0_add0_C;
Adder_N #(.in_width(22)) Adder_N_inst0(
	.clk(clk),
	.X(level0_add0_X),
	.Y(level0_add0_Y),	
	.Z(level0_add0_Z),
	.W(level0_add0_W),
	.S(level0_add0_S),
	.C(level0_add0_C),
	.COUT()
);
wire [21:0]	level0_add1_X =  {{4{lut5_0[16]}}, lut5_0, {1{1'b0}}};
wire [21:0]	level0_add1_Y =  {{5{lut4_0[16]}}, lut4_0};
wire [21:0]	level0_add1_Z =  {{3{lut6_0[16]}}, lut6_0, {2{1'b0}}};
wire [21:0]	level0_add1_W =  {{2{lut7_0[16]}}, lut7_0, {3{1'b0}}};
wire [21:0]	level0_add1_S;
wire [21:0]	level0_add1_C;
Adder_N #(.in_width(22)) Adder_N_inst1(
	.clk(clk),
	.X(level0_add1_X),
	.Y(level0_add1_Y),	
	.Z(level0_add1_Z),
	.W(level0_add1_W),
	.S(level0_add1_S),
	.C(level0_add1_C),
	.COUT()
);
wire [21:0]	level0_add2_X =  {{5{lut8_0[16]}}, lut8_0};
wire [21:0]	level0_add2_Y =  {{4{lut9_0[16]}}, lut9_0, {1{1'b0}}};
wire [21:0]	level0_add2_Z =  {{3{lut10_0[16]}}, lut10_0, {2{1'b0}}};
wire [21:0]	level0_add2_W =  {{2{lut11_0[16]}}, lut11_0, {3{1'b0}}};
wire [21:0]	level0_add2_S;
wire [21:0]	level0_add2_C;
Adder_N #(.in_width(22)) Adder_N_inst2(
	.clk(clk),
	.X(level0_add2_X),
	.Y(level0_add2_Y),	
	.Z(level0_add2_Z),
	.W(level0_add2_W),
	.S(level0_add2_S),
	.C(level0_add2_C),
	.COUT()
);

reg		[16:0]	lut12_0_tmp;
always @(posedge clk)
	lut12_0_tmp <= lut12_0;

wire [28:0]	level1_add0_X =  {{7{level0_add0_S[21]}}, level0_add0_S};
wire [28:0]	level1_add0_Y =  {{6{level0_add0_C[21]}}, level0_add0_C, {1{1'b0}}};
wire [28:0]	level1_add0_Z =  {{2{level0_add1_C[21]}}, level0_add1_C, 1'b0, {4{1'b0}}};
wire [28:0]	level1_add0_W =  {{3{level0_add1_S[21]}}, level0_add1_S, {4{1'b0}}};
wire [28:0]	level1_add0_S;
wire [28:0]	level1_add0_C;
Adder_N #(.in_width(29)) Adder_N_inst3(
	.clk(clk),
	.X(level1_add0_X),
	.Y(level1_add0_Y),	
	.Z(level1_add0_Z),
	.W(level1_add0_W),
	.S(level1_add0_S),
	.C(level1_add0_C),
	.COUT()
);
wire [20:0]	level1_add1_X =  21'd0;
wire [20:0]	level1_add1_Y =  {level0_add2_C[19:0], {1{1'b0}}};
wire [20:0]	level1_add1_Z =  {lut12_0_tmp, {4{1'b0}}};
wire [20:0]	level1_add1_W =  level0_add2_S[20:0];
wire [20:0]	level1_add1_S;
wire [20:0]	level1_add1_C;
Adder_N #(.in_width(21)) Adder_N_inst4(
	.clk(clk),
	.X(level1_add1_X),
	.Y(level1_add1_Y),	
	.Z(level1_add1_Z),
	.W(level1_add1_W),
	.S(level1_add1_S),
	.C(level1_add1_C),
	.COUT()
);
wire [28:0]	level2_add0_X =  level1_add0_S;
wire [28:0]	level2_add0_Y =  {level1_add0_C[27:0], {1{1'b0}}};
wire [28:0]	level2_add0_Z =  {level1_add1_S[20:0], {8{1'b0}}};
wire [28:0]	level2_add0_W =  {level1_add1_C[19:0], 1'b0, {8{1'b0}}};
wire [28:0]	level2_add0_S;
wire [28:0]	level2_add0_C;
Adder_N #(.in_width(29)) Adder_N_inst5(
	.clk(clk),
	.X(level2_add0_X),
	.Y(level2_add0_Y),	
	.Z(level2_add0_Z),
	.W(level2_add0_W),
	.S(level2_add0_S),
	.C(level2_add0_C),
	.COUT()
);

reg	[30:0]	out_tmp;
always @(posedge clk)
	out_tmp <= $signed(level2_add0_S) +$signed({level2_add0_C, 1'b0});


//wire	[30:0]	out_tmp = $signed(level2_add0_S) +$signed({level2_add0_C, 1'b0});
assign filter_out = out_tmp[28:0];

endmodule
