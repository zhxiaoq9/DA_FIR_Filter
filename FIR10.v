module FIR10(
input					clk,
input  signed [11:0]	filter_in,
output signed [29:0]	filter_out
);

parameter signed [16:0] coeff0 = 17'd2020;
parameter signed [16:0] coeff1 = 17'd6589;
parameter signed [16:0] coeff2 = 17'd15718;
parameter signed [16:0] coeff3 = 17'd25602;
parameter signed [16:0] coeff4 = 17'd32768;

wire signed[11:0] delay0 = filter_in;
//reg signed [11:0] delay0;
reg signed [11:0] delay1;
reg signed [11:0] delay2;
reg signed [11:0] delay3;
reg signed [11:0] delay4;
reg signed [11:0] delay5;
reg signed [11:0] delay6;
reg signed [11:0] delay7;
reg signed [11:0] delay8;
reg signed [11:0] delay9;
always @(posedge clk)
begin
	//delay0 <= filter_in;
	delay1 <= delay0;
	delay2 <= delay1;
	delay3 <= delay2;
	delay4 <= delay3;
	delay5 <= delay4;
	delay6 <= delay5;
	delay7 <= delay6;
	delay8 <= delay7;
	delay9 <= delay8;
end

//wire signed [12:0] add0 = delay0 + delay9;
//wire signed [12:0] add1 = delay1 + delay8;
//wire signed [12:0] add2 = delay2 + delay7;
//wire signed [12:0] add3 = delay3 + delay6;
//wire signed [12:0] add4 = delay4 + delay5;
reg signed [12:0] add0;
reg signed [12:0] add1;
reg signed [12:0] add2;
reg signed [12:0] add3;
reg signed [12:0] add4;
always @(posedge clk)
begin
	add0 <= delay0 + delay9;
end
always @(posedge clk)
begin
	add1 <= delay1 + delay8;
end
always @(posedge clk)
begin
	add2 <= delay2 + delay7;
end
always @(posedge clk)
begin
	add3 <= delay3 + delay6;
end
always @(posedge clk)
begin
	add4 <= delay4 + delay5;
end



//-----------------------------------begin lut table-----------------------------------//
wire [4:0] lut_addr0_0 = {add4[0],add3[0],add2[0],add1[0],add0[0]};
reg  [17:0] lut0_out0, lut0_0;
wire [4:0] lut_addr1_0 = {add4[1],add3[1],add2[1],add1[1],add0[1]};
reg  [17:0] lut1_out0, lut1_0;
wire [4:0] lut_addr2_0 = {add4[2],add3[2],add2[2],add1[2],add0[2]};
reg  [17:0] lut2_out0, lut2_0;
wire [4:0] lut_addr3_0 = {add4[3],add3[3],add2[3],add1[3],add0[3]};
reg  [17:0] lut3_out0, lut3_0;
wire [4:0] lut_addr4_0 = {add4[4],add3[4],add2[4],add1[4],add0[4]};
reg  [17:0] lut4_out0, lut4_0;
wire [4:0] lut_addr5_0 = {add4[5],add3[5],add2[5],add1[5],add0[5]};
reg  [17:0] lut5_out0, lut5_0;
wire [4:0] lut_addr6_0 = {add4[6],add3[6],add2[6],add1[6],add0[6]};
reg  [17:0] lut6_out0, lut6_0;
wire [4:0] lut_addr7_0 = {add4[7],add3[7],add2[7],add1[7],add0[7]};
reg  [17:0] lut7_out0, lut7_0;
wire [4:0] lut_addr8_0 = {add4[8],add3[8],add2[8],add1[8],add0[8]};
reg  [17:0] lut8_out0, lut8_0;
wire [4:0] lut_addr9_0 = {add4[9],add3[9],add2[9],add1[9],add0[9]};
reg  [17:0] lut9_out0, lut9_0;
wire [4:0] lut_addr10_0 = {add4[10],add3[10],add2[10],add1[10],add0[10]};
reg  [17:0] lut10_out0, lut10_0;
wire [4:0] lut_addr11_0 = {add4[11],add3[11],add2[11],add1[11],add0[11]};
reg  [17:0] lut11_out0, lut11_0;
wire [4:0] lut_addr12_0 = {add4[12],add3[12],add2[12],add1[12],add0[12]};
reg  [17:0] lut12_out0, lut12_0;
always @(lut_addr0_0)
begin
	case(lut_addr0_0)
	5'd0 : lut0_out0 = (0);
	5'd1 : lut0_out0 = (coeff0);
	5'd2 : lut0_out0 = (coeff1);
	5'd3 : lut0_out0 = (coeff0+coeff1);
	5'd4 : lut0_out0 = (coeff2);
	5'd5 : lut0_out0 = (coeff0+coeff2);
	5'd6 : lut0_out0 = (coeff1+coeff2);
	5'd7 : lut0_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut0_out0 = (coeff3);
	5'd9 : lut0_out0 = (coeff0+coeff3);
	5'd10 : lut0_out0 = (coeff1+coeff3);
	5'd11 : lut0_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut0_out0 = (coeff2+coeff3);
	5'd13 : lut0_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut0_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut0_out0 = (coeff4);
	5'd17 : lut0_out0 = (coeff0+coeff4);
	5'd18 : lut0_out0 = (coeff1+coeff4);
	5'd19 : lut0_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut0_out0 = (coeff2+coeff4);
	5'd21 : lut0_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut0_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut0_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut0_out0 = (coeff3+coeff4);
	5'd25 : lut0_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut0_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut0_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut0_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut0_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut0_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut0_out0 = 0;
	endcase
end
always @(lut_addr1_0)
begin
	case(lut_addr1_0)
	5'd0 : lut1_out0 = (0);
	5'd1 : lut1_out0 = (coeff0);
	5'd2 : lut1_out0 = (coeff1);
	5'd3 : lut1_out0 = (coeff0+coeff1);
	5'd4 : lut1_out0 = (coeff2);
	5'd5 : lut1_out0 = (coeff0+coeff2);
	5'd6 : lut1_out0 = (coeff1+coeff2);
	5'd7 : lut1_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut1_out0 = (coeff3);
	5'd9 : lut1_out0 = (coeff0+coeff3);
	5'd10 : lut1_out0 = (coeff1+coeff3);
	5'd11 : lut1_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut1_out0 = (coeff2+coeff3);
	5'd13 : lut1_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut1_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut1_out0 = (coeff4);
	5'd17 : lut1_out0 = (coeff0+coeff4);
	5'd18 : lut1_out0 = (coeff1+coeff4);
	5'd19 : lut1_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut1_out0 = (coeff2+coeff4);
	5'd21 : lut1_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut1_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut1_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut1_out0 = (coeff3+coeff4);
	5'd25 : lut1_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut1_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut1_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut1_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut1_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut1_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut1_out0 = 0;
	endcase
end
always @(lut_addr2_0)
begin
	case(lut_addr2_0)
	5'd0 : lut2_out0 = (0);
	5'd1 : lut2_out0 = (coeff0);
	5'd2 : lut2_out0 = (coeff1);
	5'd3 : lut2_out0 = (coeff0+coeff1);
	5'd4 : lut2_out0 = (coeff2);
	5'd5 : lut2_out0 = (coeff0+coeff2);
	5'd6 : lut2_out0 = (coeff1+coeff2);
	5'd7 : lut2_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut2_out0 = (coeff3);
	5'd9 : lut2_out0 = (coeff0+coeff3);
	5'd10 : lut2_out0 = (coeff1+coeff3);
	5'd11 : lut2_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut2_out0 = (coeff2+coeff3);
	5'd13 : lut2_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut2_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut2_out0 = (coeff4);
	5'd17 : lut2_out0 = (coeff0+coeff4);
	5'd18 : lut2_out0 = (coeff1+coeff4);
	5'd19 : lut2_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut2_out0 = (coeff2+coeff4);
	5'd21 : lut2_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut2_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut2_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut2_out0 = (coeff3+coeff4);
	5'd25 : lut2_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut2_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut2_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut2_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut2_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut2_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut2_out0 = 0;
	endcase
end
always @(lut_addr3_0)
begin
	case(lut_addr3_0)
	5'd0 : lut3_out0 = (0);
	5'd1 : lut3_out0 = (coeff0);
	5'd2 : lut3_out0 = (coeff1);
	5'd3 : lut3_out0 = (coeff0+coeff1);
	5'd4 : lut3_out0 = (coeff2);
	5'd5 : lut3_out0 = (coeff0+coeff2);
	5'd6 : lut3_out0 = (coeff1+coeff2);
	5'd7 : lut3_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut3_out0 = (coeff3);
	5'd9 : lut3_out0 = (coeff0+coeff3);
	5'd10 : lut3_out0 = (coeff1+coeff3);
	5'd11 : lut3_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut3_out0 = (coeff2+coeff3);
	5'd13 : lut3_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut3_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut3_out0 = (coeff4);
	5'd17 : lut3_out0 = (coeff0+coeff4);
	5'd18 : lut3_out0 = (coeff1+coeff4);
	5'd19 : lut3_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut3_out0 = (coeff2+coeff4);
	5'd21 : lut3_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut3_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut3_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut3_out0 = (coeff3+coeff4);
	5'd25 : lut3_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut3_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut3_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut3_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut3_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut3_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut3_out0 = 0;
	endcase
end
always @(lut_addr4_0)
begin
	case(lut_addr4_0)
	5'd0 : lut4_out0 = (0);
	5'd1 : lut4_out0 = (coeff0);
	5'd2 : lut4_out0 = (coeff1);
	5'd3 : lut4_out0 = (coeff0+coeff1);
	5'd4 : lut4_out0 = (coeff2);
	5'd5 : lut4_out0 = (coeff0+coeff2);
	5'd6 : lut4_out0 = (coeff1+coeff2);
	5'd7 : lut4_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut4_out0 = (coeff3);
	5'd9 : lut4_out0 = (coeff0+coeff3);
	5'd10 : lut4_out0 = (coeff1+coeff3);
	5'd11 : lut4_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut4_out0 = (coeff2+coeff3);
	5'd13 : lut4_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut4_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut4_out0 = (coeff4);
	5'd17 : lut4_out0 = (coeff0+coeff4);
	5'd18 : lut4_out0 = (coeff1+coeff4);
	5'd19 : lut4_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut4_out0 = (coeff2+coeff4);
	5'd21 : lut4_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut4_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut4_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut4_out0 = (coeff3+coeff4);
	5'd25 : lut4_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut4_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut4_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut4_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut4_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut4_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut4_out0 = 0;
	endcase
end
always @(lut_addr5_0)
begin
	case(lut_addr5_0)
	5'd0 : lut5_out0 = (0);
	5'd1 : lut5_out0 = (coeff0);
	5'd2 : lut5_out0 = (coeff1);
	5'd3 : lut5_out0 = (coeff0+coeff1);
	5'd4 : lut5_out0 = (coeff2);
	5'd5 : lut5_out0 = (coeff0+coeff2);
	5'd6 : lut5_out0 = (coeff1+coeff2);
	5'd7 : lut5_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut5_out0 = (coeff3);
	5'd9 : lut5_out0 = (coeff0+coeff3);
	5'd10 : lut5_out0 = (coeff1+coeff3);
	5'd11 : lut5_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut5_out0 = (coeff2+coeff3);
	5'd13 : lut5_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut5_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut5_out0 = (coeff4);
	5'd17 : lut5_out0 = (coeff0+coeff4);
	5'd18 : lut5_out0 = (coeff1+coeff4);
	5'd19 : lut5_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut5_out0 = (coeff2+coeff4);
	5'd21 : lut5_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut5_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut5_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut5_out0 = (coeff3+coeff4);
	5'd25 : lut5_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut5_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut5_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut5_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut5_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut5_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut5_out0 = 0;
	endcase
end
always @(lut_addr6_0)
begin
	case(lut_addr6_0)
	5'd0 : lut6_out0 = (0);
	5'd1 : lut6_out0 = (coeff0);
	5'd2 : lut6_out0 = (coeff1);
	5'd3 : lut6_out0 = (coeff0+coeff1);
	5'd4 : lut6_out0 = (coeff2);
	5'd5 : lut6_out0 = (coeff0+coeff2);
	5'd6 : lut6_out0 = (coeff1+coeff2);
	5'd7 : lut6_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut6_out0 = (coeff3);
	5'd9 : lut6_out0 = (coeff0+coeff3);
	5'd10 : lut6_out0 = (coeff1+coeff3);
	5'd11 : lut6_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut6_out0 = (coeff2+coeff3);
	5'd13 : lut6_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut6_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut6_out0 = (coeff4);
	5'd17 : lut6_out0 = (coeff0+coeff4);
	5'd18 : lut6_out0 = (coeff1+coeff4);
	5'd19 : lut6_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut6_out0 = (coeff2+coeff4);
	5'd21 : lut6_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut6_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut6_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut6_out0 = (coeff3+coeff4);
	5'd25 : lut6_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut6_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut6_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut6_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut6_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut6_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut6_out0 = 0;
	endcase
end
always @(lut_addr7_0)
begin
	case(lut_addr7_0)
	5'd0 : lut7_out0 = (0);
	5'd1 : lut7_out0 = (coeff0);
	5'd2 : lut7_out0 = (coeff1);
	5'd3 : lut7_out0 = (coeff0+coeff1);
	5'd4 : lut7_out0 = (coeff2);
	5'd5 : lut7_out0 = (coeff0+coeff2);
	5'd6 : lut7_out0 = (coeff1+coeff2);
	5'd7 : lut7_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut7_out0 = (coeff3);
	5'd9 : lut7_out0 = (coeff0+coeff3);
	5'd10 : lut7_out0 = (coeff1+coeff3);
	5'd11 : lut7_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut7_out0 = (coeff2+coeff3);
	5'd13 : lut7_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut7_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut7_out0 = (coeff4);
	5'd17 : lut7_out0 = (coeff0+coeff4);
	5'd18 : lut7_out0 = (coeff1+coeff4);
	5'd19 : lut7_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut7_out0 = (coeff2+coeff4);
	5'd21 : lut7_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut7_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut7_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut7_out0 = (coeff3+coeff4);
	5'd25 : lut7_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut7_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut7_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut7_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut7_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut7_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut7_out0 = 0;
	endcase
end
always @(lut_addr8_0)
begin
	case(lut_addr8_0)
	5'd0 : lut8_out0 = (0);
	5'd1 : lut8_out0 = (coeff0);
	5'd2 : lut8_out0 = (coeff1);
	5'd3 : lut8_out0 = (coeff0+coeff1);
	5'd4 : lut8_out0 = (coeff2);
	5'd5 : lut8_out0 = (coeff0+coeff2);
	5'd6 : lut8_out0 = (coeff1+coeff2);
	5'd7 : lut8_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut8_out0 = (coeff3);
	5'd9 : lut8_out0 = (coeff0+coeff3);
	5'd10 : lut8_out0 = (coeff1+coeff3);
	5'd11 : lut8_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut8_out0 = (coeff2+coeff3);
	5'd13 : lut8_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut8_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut8_out0 = (coeff4);
	5'd17 : lut8_out0 = (coeff0+coeff4);
	5'd18 : lut8_out0 = (coeff1+coeff4);
	5'd19 : lut8_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut8_out0 = (coeff2+coeff4);
	5'd21 : lut8_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut8_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut8_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut8_out0 = (coeff3+coeff4);
	5'd25 : lut8_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut8_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut8_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut8_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut8_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut8_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut8_out0 = 0;
	endcase
end
always @(lut_addr9_0)
begin
	case(lut_addr9_0)
	5'd0 : lut9_out0 = (0);
	5'd1 : lut9_out0 = (coeff0);
	5'd2 : lut9_out0 = (coeff1);
	5'd3 : lut9_out0 = (coeff0+coeff1);
	5'd4 : lut9_out0 = (coeff2);
	5'd5 : lut9_out0 = (coeff0+coeff2);
	5'd6 : lut9_out0 = (coeff1+coeff2);
	5'd7 : lut9_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut9_out0 = (coeff3);
	5'd9 : lut9_out0 = (coeff0+coeff3);
	5'd10 : lut9_out0 = (coeff1+coeff3);
	5'd11 : lut9_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut9_out0 = (coeff2+coeff3);
	5'd13 : lut9_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut9_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut9_out0 = (coeff4);
	5'd17 : lut9_out0 = (coeff0+coeff4);
	5'd18 : lut9_out0 = (coeff1+coeff4);
	5'd19 : lut9_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut9_out0 = (coeff2+coeff4);
	5'd21 : lut9_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut9_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut9_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut9_out0 = (coeff3+coeff4);
	5'd25 : lut9_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut9_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut9_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut9_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut9_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut9_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut9_out0 = 0;
	endcase
end
always @(lut_addr10_0)
begin
	case(lut_addr10_0)
	5'd0 : lut10_out0 = (0);
	5'd1 : lut10_out0 = (coeff0);
	5'd2 : lut10_out0 = (coeff1);
	5'd3 : lut10_out0 = (coeff0+coeff1);
	5'd4 : lut10_out0 = (coeff2);
	5'd5 : lut10_out0 = (coeff0+coeff2);
	5'd6 : lut10_out0 = (coeff1+coeff2);
	5'd7 : lut10_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut10_out0 = (coeff3);
	5'd9 : lut10_out0 = (coeff0+coeff3);
	5'd10 : lut10_out0 = (coeff1+coeff3);
	5'd11 : lut10_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut10_out0 = (coeff2+coeff3);
	5'd13 : lut10_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut10_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut10_out0 = (coeff4);
	5'd17 : lut10_out0 = (coeff0+coeff4);
	5'd18 : lut10_out0 = (coeff1+coeff4);
	5'd19 : lut10_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut10_out0 = (coeff2+coeff4);
	5'd21 : lut10_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut10_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut10_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut10_out0 = (coeff3+coeff4);
	5'd25 : lut10_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut10_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut10_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut10_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut10_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut10_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut10_out0 = 0;
	endcase
end
always @(lut_addr11_0)
begin
	case(lut_addr11_0)
	5'd0 : lut11_out0 = (0);
	5'd1 : lut11_out0 = (coeff0);
	5'd2 : lut11_out0 = (coeff1);
	5'd3 : lut11_out0 = (coeff0+coeff1);
	5'd4 : lut11_out0 = (coeff2);
	5'd5 : lut11_out0 = (coeff0+coeff2);
	5'd6 : lut11_out0 = (coeff1+coeff2);
	5'd7 : lut11_out0 = (coeff0+coeff1+coeff2);
	5'd8 : lut11_out0 = (coeff3);
	5'd9 : lut11_out0 = (coeff0+coeff3);
	5'd10 : lut11_out0 = (coeff1+coeff3);
	5'd11 : lut11_out0 = (coeff0+coeff1+coeff3);
	5'd12 : lut11_out0 = (coeff2+coeff3);
	5'd13 : lut11_out0 = (coeff0+coeff2+coeff3);
	5'd14 : lut11_out0 = (coeff1+coeff2+coeff3);
	5'd15 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut11_out0 = (coeff4);
	5'd17 : lut11_out0 = (coeff0+coeff4);
	5'd18 : lut11_out0 = (coeff1+coeff4);
	5'd19 : lut11_out0 = (coeff0+coeff1+coeff4);
	5'd20 : lut11_out0 = (coeff2+coeff4);
	5'd21 : lut11_out0 = (coeff0+coeff2+coeff4);
	5'd22 : lut11_out0 = (coeff1+coeff2+coeff4);
	5'd23 : lut11_out0 = (coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut11_out0 = (coeff3+coeff4);
	5'd25 : lut11_out0 = (coeff0+coeff3+coeff4);
	5'd26 : lut11_out0 = (coeff1+coeff3+coeff4);
	5'd27 : lut11_out0 = (coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut11_out0 = (coeff2+coeff3+coeff4);
	5'd29 : lut11_out0 = (coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut11_out0 = (coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut11_out0 = 0;
	endcase
end
always @(lut_addr12_0)
begin
	case(lut_addr12_0)
	5'd0 : lut12_out0 = (0);
	5'd1 : lut12_out0 = -(coeff0);
	5'd2 : lut12_out0 = -(coeff1);
	5'd3 : lut12_out0 = -(coeff0+coeff1);
	5'd4 : lut12_out0 = -(coeff2);
	5'd5 : lut12_out0 = -(coeff0+coeff2);
	5'd6 : lut12_out0 = -(coeff1+coeff2);
	5'd7 : lut12_out0 = -(coeff0+coeff1+coeff2);
	5'd8 : lut12_out0 = -(coeff3);
	5'd9 : lut12_out0 = -(coeff0+coeff3);
	5'd10 : lut12_out0 = -(coeff1+coeff3);
	5'd11 : lut12_out0 = -(coeff0+coeff1+coeff3);
	5'd12 : lut12_out0 = -(coeff2+coeff3);
	5'd13 : lut12_out0 = -(coeff0+coeff2+coeff3);
	5'd14 : lut12_out0 = -(coeff1+coeff2+coeff3);
	5'd15 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3);
	5'd16 : lut12_out0 = -(coeff4);
	5'd17 : lut12_out0 = -(coeff0+coeff4);
	5'd18 : lut12_out0 = -(coeff1+coeff4);
	5'd19 : lut12_out0 = -(coeff0+coeff1+coeff4);
	5'd20 : lut12_out0 = -(coeff2+coeff4);
	5'd21 : lut12_out0 = -(coeff0+coeff2+coeff4);
	5'd22 : lut12_out0 = -(coeff1+coeff2+coeff4);
	5'd23 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff4);
	5'd24 : lut12_out0 = -(coeff3+coeff4);
	5'd25 : lut12_out0 = -(coeff0+coeff3+coeff4);
	5'd26 : lut12_out0 = -(coeff1+coeff3+coeff4);
	5'd27 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff4);
	5'd28 : lut12_out0 = -(coeff2+coeff3+coeff4);
	5'd29 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff4);
	5'd30 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff4);
	5'd31 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff4);
	default :lut12_out0 = 0;
	endcase
end


always @(posedge clk)
begin
	lut0_0 <= lut0_out0;
end
always @(posedge clk)
begin
	lut1_0 <= lut1_out0;
end
always @(posedge clk)
begin
	lut2_0 <= lut2_out0;
end
always @(posedge clk)
begin
	lut3_0 <= lut3_out0;
end
always @(posedge clk)
begin
	lut4_0 <= lut4_out0;
end
always @(posedge clk)
begin
	lut5_0 <= lut5_out0;
end
always @(posedge clk)
begin
	lut6_0 <= lut6_out0;
end
always @(posedge clk)
begin
	lut7_0 <= lut7_out0;
end
always @(posedge clk)
begin
	lut8_0 <= lut8_out0;
end
always @(posedge clk)
begin
	lut9_0 <= lut9_out0;
end
always @(posedge clk)
begin
	lut10_0 <= lut10_out0;
end
always @(posedge clk)
begin
	lut11_0 <= lut11_out0;
end
always @(posedge clk)
begin
	lut12_0 <= lut12_out0;
end

//-----------------------------------begin adder tree-----------------------------------//
wire [22:0]	level0_add0_X =  {{5{lut0_0[17]}}, lut0_0};
wire [22:0]	level0_add0_Y =  {{4{lut1_0[17]}}, lut1_0, {1{1'b0}}};
wire [22:0]	level0_add0_Z =  {{3{lut2_0[17]}}, lut2_0, {2{1'b0}}};
wire [22:0]	level0_add0_W =  {{2{lut3_0[17]}}, lut3_0, {3{1'b0}}};
wire [22:0]	level0_add0_S;
wire [22:0]	level0_add0_C;
Adder_N #(.in_width(23)) Adder_N_inst0(
	.clk(clk),
	.X(level0_add0_X),
	.Y(level0_add0_Y),	
	.Z(level0_add0_Z),
	.W(level0_add0_W),
	.S(level0_add0_S),
	.C(level0_add0_C),
	.COUT()
);
wire [22:0]	level0_add1_X =  {{5{lut4_0[17]}}, lut4_0};
wire [22:0]	level0_add1_Y =  {{4{lut5_0[17]}}, lut5_0, {1{1'b0}}};
wire [22:0]	level0_add1_Z =  {{3{lut6_0[17]}}, lut6_0, {2{1'b0}}};
wire [22:0]	level0_add1_W =  {{2{lut7_0[17]}}, lut7_0, {3{1'b0}}};
wire [22:0]	level0_add1_S;
wire [22:0]	level0_add1_C;
Adder_N #(.in_width(23)) Adder_N_inst1(
	.clk(clk),
	.X(level0_add1_X),
	.Y(level0_add1_Y),	
	.Z(level0_add1_Z),
	.W(level0_add1_W),
	.S(level0_add1_S),
	.C(level0_add1_C),
	.COUT()
);
wire [22:0]	level0_add2_X =  {{5{lut8_0[17]}}, lut8_0};
wire [22:0]	level0_add2_Y =  {{4{lut9_0[17]}}, lut9_0, {1{1'b0}}};
wire [22:0]	level0_add2_Z =  {{3{lut10_0[17]}}, lut10_0, {2{1'b0}}};
wire [22:0]	level0_add2_W =  {{2{lut11_0[17]}}, lut11_0, {3{1'b0}}};
wire [22:0]	level0_add2_S;
wire [22:0]	level0_add2_C;
Adder_N #(.in_width(23)) Adder_N_inst2(
	.clk(clk),
	.X(level0_add2_X),
	.Y(level0_add2_Y),	
	.Z(level0_add2_Z),
	.W(level0_add2_W),
	.S(level0_add2_S),
	.C(level0_add2_C),
	.COUT()
);
reg		[17:0]	lut12_0_tmp;
always @(posedge clk)
	lut12_0_tmp <= lut12_0;

	
	
	
wire [29:0]	level1_add0_X =  {{6{level0_add0_S[22]}}, level0_add0_S};
wire [29:0]	level1_add0_Y =  {{5{level0_add0_C[22]}}, level0_add0_C, {1{1'b0}}};
wire [29:0]	level1_add0_Z =  {{2{level0_add1_S[22]}}, level0_add1_S, {4{1'b0}}};
wire [29:0]	level1_add0_W =  {{1{level0_add1_C[22]}}, level0_add1_C, 1'b0, {4{1'b0}}};
wire [29:0]	level1_add0_S;
wire [29:0]	level1_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst3(
	.clk(clk),
	.X(level1_add0_X),
	.Y(level1_add0_Y),	
	.Z(level1_add0_Z),
	.W(level1_add0_W),
	.S(level1_add0_S),
	.C(level1_add0_C),
	.COUT()
);
wire [21:0]	level1_add1_X =  level0_add2_S[21:0];
wire [21:0]	level1_add1_Y =  {level0_add2_C[20:0], {1{1'b0}}};
wire [21:0]	level1_add1_Z =  {lut12_0_tmp, {4{1'b0}}};
wire [21:0]	level1_add1_W =  22'd0;
wire [21:0]	level1_add1_S;
wire [21:0]	level1_add1_C;
Adder_N #(.in_width(22)) Adder_N_inst4(
	.clk(clk),
	.X(level1_add1_X),
	.Y(level1_add1_Y),	
	.Z(level1_add1_Z),
	.W(level1_add1_W),
	.S(level1_add1_S),
	.C(level1_add1_C),
	.COUT()
);
wire [29:0]	level2_add0_X =  level1_add0_S;
wire [29:0]	level2_add0_Y =  {level1_add0_C[28:0], {1{1'b0}}};
wire [29:0]	level2_add0_Z =  {level1_add1_S[21:0], {8{1'b0}}};
wire [29:0]	level2_add0_W =  {level1_add1_C[20:0], 1'b0, {8{1'b0}}};
wire [29:0]	level2_add0_S;
wire [29:0]	level2_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst5(
	.clk(clk),
	.X(level2_add0_X),
	.Y(level2_add0_Y),	
	.Z(level2_add0_Z),
	.W(level2_add0_W),
	.S(level2_add0_S),
	.C(level2_add0_C),
	.COUT()
);
/*
reg	[31:0]	out_tmp;
always @(posedge clk)
	out_tmp <= $signed(level2_add0_S) +$signed({level2_add0_C, 1'b0});
*/
wire[30:0]	out_tmp = $signed(level2_add0_S) +$signed({level2_add0_C, 1'b0});

assign filter_out = out_tmp[29:0];

endmodule
