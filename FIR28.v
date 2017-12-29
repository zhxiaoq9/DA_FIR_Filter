
//New NEW FIR28
module FIR28(
input					clk,
input  signed [11:0]	filter_in,
output signed [29:0]	filter_out
);

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

wire signed [11:0] delay0 = filter_in;
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

//wire signed [12:0] add0 = delay0 + delay27;
//wire signed [12:0] add1 = delay1 + delay26;
//wire signed [12:0] add2 = delay2 + delay25;
//wire signed [12:0] add3 = delay3 + delay24;
//wire signed [12:0] add4 = delay4 + delay23;
//wire signed [12:0] add5 = delay5 + delay22;
//wire signed [12:0] add6 = delay6 + delay21;
//wire signed [12:0] add7 = delay7 + delay20;
//wire signed [12:0] add8 = delay8 + delay19;
//wire signed [12:0] add9 = delay9 + delay18;
//wire signed [12:0] add10 = delay10 + delay17;
//wire signed [12:0] add11 = delay11 + delay16;
//wire signed [12:0] add12 = delay12 + delay15;
//wire signed [12:0] add13 = delay13 + delay14;
reg signed [12:0] add0;
reg signed [12:0] add1;
reg signed [12:0] add2;
reg signed [12:0] add3;
reg signed [12:0] add4;
reg signed [12:0] add5;
reg signed [12:0] add6;
reg signed [12:0] add7;
reg signed [12:0] add8;
reg signed [12:0] add9;
reg signed [12:0] add10;
reg signed [12:0] add11;
reg signed [12:0] add12;
reg signed [12:0] add13;
always @(posedge clk)
begin
	add0 <= delay0 + delay27;
end
always @(posedge clk)
begin
	add1 <= delay1 + delay26;
end
always @(posedge clk)
begin
	add2 <= delay2 + delay25;
end
always @(posedge clk)
begin
	add3 <= delay3 + delay24;
end
always @(posedge clk)
begin
	add4 <= delay4 + delay23;
end
always @(posedge clk)
begin
	add5 <= delay5 + delay22;
end
always @(posedge clk)
begin
	add6 <= delay6 + delay21;
end
always @(posedge clk)
begin
	add7 <= delay7 + delay20;
end
always @(posedge clk)
begin
	add8 <= delay8 + delay19;
end
always @(posedge clk)
begin
	add9 <= delay9 + delay18;
end
always @(posedge clk)
begin
	add10 <= delay10 + delay17;
end
always @(posedge clk)
begin
	add11 <= delay11 + delay16;
end
always @(posedge clk)
begin
	add12 <= delay12 + delay15;
end
always @(posedge clk)
begin
	add13 <= delay13 + delay14;
end



//-----------------------------------begin lut table-----------------------------------//
wire [4:0] lut_addr0_0 = {add4[0],add3[0],add2[0],add1[0],add0[0]};
reg  [13:0] lut0_out0, lut0_0;
wire [4:0] lut_addr0_1 = {add9[0],add8[0],add7[0],add6[0],add5[0]};
reg  [13:0] lut0_out1, lut0_1;
wire [3:0] lut_addr0_2 = {add13[0],add12[0],add11[0],add10[0]};
reg  [16:0] lut0_out2, lut0_2;
wire [4:0] lut_addr1_0 = {add4[1],add3[1],add2[1],add1[1],add0[1]};
reg  [13:0] lut1_out0, lut1_0;
wire [4:0] lut_addr1_1 = {add9[1],add8[1],add7[1],add6[1],add5[1]};
reg  [13:0] lut1_out1, lut1_1;
wire [3:0] lut_addr1_2 = {add13[1],add12[1],add11[1],add10[1]};
reg  [16:0] lut1_out2, lut1_2;
wire [4:0] lut_addr2_0 = {add4[2],add3[2],add2[2],add1[2],add0[2]};
reg  [13:0] lut2_out0, lut2_0;
wire [4:0] lut_addr2_1 = {add9[2],add8[2],add7[2],add6[2],add5[2]};
reg  [13:0] lut2_out1, lut2_1;
wire [3:0] lut_addr2_2 = {add13[2],add12[2],add11[2],add10[2]};
reg  [16:0] lut2_out2, lut2_2;
wire [4:0] lut_addr3_0 = {add4[3],add3[3],add2[3],add1[3],add0[3]};
reg  [13:0] lut3_out0, lut3_0;
wire [4:0] lut_addr3_1 = {add9[3],add8[3],add7[3],add6[3],add5[3]};
reg  [13:0] lut3_out1, lut3_1;
wire [3:0] lut_addr3_2 = {add13[3],add12[3],add11[3],add10[3]};
reg  [16:0] lut3_out2, lut3_2;
wire [4:0] lut_addr4_0 = {add4[4],add3[4],add2[4],add1[4],add0[4]};
reg  [13:0] lut4_out0, lut4_0;
wire [4:0] lut_addr4_1 = {add9[4],add8[4],add7[4],add6[4],add5[4]};
reg  [13:0] lut4_out1, lut4_1;
wire [3:0] lut_addr4_2 = {add13[4],add12[4],add11[4],add10[4]};
reg  [16:0] lut4_out2, lut4_2;
wire [4:0] lut_addr5_0 = {add4[5],add3[5],add2[5],add1[5],add0[5]};
reg  [13:0] lut5_out0, lut5_0;
wire [4:0] lut_addr5_1 = {add9[5],add8[5],add7[5],add6[5],add5[5]};
reg  [13:0] lut5_out1, lut5_1;
wire [3:0] lut_addr5_2 = {add13[5],add12[5],add11[5],add10[5]};
reg  [16:0] lut5_out2, lut5_2;
wire [4:0] lut_addr6_0 = {add4[6],add3[6],add2[6],add1[6],add0[6]};
reg  [13:0] lut6_out0, lut6_0;
wire [4:0] lut_addr6_1 = {add9[6],add8[6],add7[6],add6[6],add5[6]};
reg  [13:0] lut6_out1, lut6_1;
wire [3:0] lut_addr6_2 = {add13[6],add12[6],add11[6],add10[6]};
reg  [16:0] lut6_out2, lut6_2;
wire [4:0] lut_addr7_0 = {add4[7],add3[7],add2[7],add1[7],add0[7]};
reg  [13:0] lut7_out0, lut7_0;
wire [4:0] lut_addr7_1 = {add9[7],add8[7],add7[7],add6[7],add5[7]};
reg  [13:0] lut7_out1, lut7_1;
wire [3:0] lut_addr7_2 = {add13[7],add12[7],add11[7],add10[7]};
reg  [16:0] lut7_out2, lut7_2;
wire [4:0] lut_addr8_0 = {add4[8],add3[8],add2[8],add1[8],add0[8]};
reg  [13:0] lut8_out0, lut8_0;
wire [4:0] lut_addr8_1 = {add9[8],add8[8],add7[8],add6[8],add5[8]};
reg  [13:0] lut8_out1, lut8_1;
wire [3:0] lut_addr8_2 = {add13[8],add12[8],add11[8],add10[8]};
reg  [16:0] lut8_out2, lut8_2;
wire [4:0] lut_addr9_0 = {add4[9],add3[9],add2[9],add1[9],add0[9]};
reg  [13:0] lut9_out0, lut9_0;
wire [4:0] lut_addr9_1 = {add9[9],add8[9],add7[9],add6[9],add5[9]};
reg  [13:0] lut9_out1, lut9_1;
wire [3:0] lut_addr9_2 = {add13[9],add12[9],add11[9],add10[9]};
reg  [16:0] lut9_out2, lut9_2;
wire [4:0] lut_addr10_0 = {add4[10],add3[10],add2[10],add1[10],add0[10]};
reg  [13:0] lut10_out0, lut10_0;
wire [4:0] lut_addr10_1 = {add9[10],add8[10],add7[10],add6[10],add5[10]};
reg  [13:0] lut10_out1, lut10_1;
wire [3:0] lut_addr10_2 = {add13[10],add12[10],add11[10],add10[10]};
reg  [16:0] lut10_out2, lut10_2;
wire [4:0] lut_addr11_0 = {add4[11],add3[11],add2[11],add1[11],add0[11]};
reg  [13:0] lut11_out0, lut11_0;
wire [4:0] lut_addr11_1 = {add9[11],add8[11],add7[11],add6[11],add5[11]};
reg  [13:0] lut11_out1, lut11_1;
wire [3:0] lut_addr11_2 = {add13[11],add12[11],add11[11],add10[11]};
reg  [16:0] lut11_out2, lut11_2;
wire [4:0] lut_addr12_0 = {add4[12],add3[12],add2[12],add1[12],add0[12]};
reg  [13:0] lut12_out0, lut12_0;
wire [4:0] lut_addr12_1 = {add9[12],add8[12],add7[12],add6[12],add5[12]};
reg  [13:0] lut12_out1, lut12_1;
wire [3:0] lut_addr12_2 = {add13[12],add12[12],add11[12],add10[12]};
reg  [16:0] lut12_out2, lut12_2;
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
always @(lut_addr0_1)
begin
	case(lut_addr0_1)
	5'd0 : lut0_out1 = (0);
	5'd1 : lut0_out1 = (coeff5);
	5'd2 : lut0_out1 = (coeff6);
	5'd3 : lut0_out1 = (coeff5+coeff6);
	5'd4 : lut0_out1 = (coeff7);
	5'd5 : lut0_out1 = (coeff5+coeff7);
	5'd6 : lut0_out1 = (coeff6+coeff7);
	5'd7 : lut0_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut0_out1 = (coeff8);
	5'd9 : lut0_out1 = (coeff5+coeff8);
	5'd10 : lut0_out1 = (coeff6+coeff8);
	5'd11 : lut0_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut0_out1 = (coeff7+coeff8);
	5'd13 : lut0_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut0_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut0_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut0_out1 = (coeff9);
	5'd17 : lut0_out1 = (coeff5+coeff9);
	5'd18 : lut0_out1 = (coeff6+coeff9);
	5'd19 : lut0_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut0_out1 = (coeff7+coeff9);
	5'd21 : lut0_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut0_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut0_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut0_out1 = (coeff8+coeff9);
	5'd25 : lut0_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut0_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut0_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut0_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut0_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut0_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut0_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut0_out1 = 0;
	endcase
end
always @(lut_addr0_2)
begin
	case(lut_addr0_2)
	4'd0 : lut0_out2 = (0);
	4'd1 : lut0_out2 = (coeff10);
	4'd2 : lut0_out2 = (coeff11);
	4'd3 : lut0_out2 = (coeff10+coeff11);
	4'd4 : lut0_out2 = (coeff12);
	4'd5 : lut0_out2 = (coeff10+coeff12);
	4'd6 : lut0_out2 = (coeff11+coeff12);
	4'd7 : lut0_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut0_out2 = (coeff13);
	4'd9 : lut0_out2 = (coeff10+coeff13);
	4'd10 : lut0_out2 = (coeff11+coeff13);
	4'd11 : lut0_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut0_out2 = (coeff12+coeff13);
	4'd13 : lut0_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut0_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut0_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut0_out2 = 0;
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
always @(lut_addr1_1)
begin
	case(lut_addr1_1)
	5'd0 : lut1_out1 = (0);
	5'd1 : lut1_out1 = (coeff5);
	5'd2 : lut1_out1 = (coeff6);
	5'd3 : lut1_out1 = (coeff5+coeff6);
	5'd4 : lut1_out1 = (coeff7);
	5'd5 : lut1_out1 = (coeff5+coeff7);
	5'd6 : lut1_out1 = (coeff6+coeff7);
	5'd7 : lut1_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut1_out1 = (coeff8);
	5'd9 : lut1_out1 = (coeff5+coeff8);
	5'd10 : lut1_out1 = (coeff6+coeff8);
	5'd11 : lut1_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut1_out1 = (coeff7+coeff8);
	5'd13 : lut1_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut1_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut1_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut1_out1 = (coeff9);
	5'd17 : lut1_out1 = (coeff5+coeff9);
	5'd18 : lut1_out1 = (coeff6+coeff9);
	5'd19 : lut1_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut1_out1 = (coeff7+coeff9);
	5'd21 : lut1_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut1_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut1_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut1_out1 = (coeff8+coeff9);
	5'd25 : lut1_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut1_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut1_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut1_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut1_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut1_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut1_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut1_out1 = 0;
	endcase
end
always @(lut_addr1_2)
begin
	case(lut_addr1_2)
	4'd0 : lut1_out2 = (0);
	4'd1 : lut1_out2 = (coeff10);
	4'd2 : lut1_out2 = (coeff11);
	4'd3 : lut1_out2 = (coeff10+coeff11);
	4'd4 : lut1_out2 = (coeff12);
	4'd5 : lut1_out2 = (coeff10+coeff12);
	4'd6 : lut1_out2 = (coeff11+coeff12);
	4'd7 : lut1_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut1_out2 = (coeff13);
	4'd9 : lut1_out2 = (coeff10+coeff13);
	4'd10 : lut1_out2 = (coeff11+coeff13);
	4'd11 : lut1_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut1_out2 = (coeff12+coeff13);
	4'd13 : lut1_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut1_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut1_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut1_out2 = 0;
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
always @(lut_addr2_1)
begin
	case(lut_addr2_1)
	5'd0 : lut2_out1 = (0);
	5'd1 : lut2_out1 = (coeff5);
	5'd2 : lut2_out1 = (coeff6);
	5'd3 : lut2_out1 = (coeff5+coeff6);
	5'd4 : lut2_out1 = (coeff7);
	5'd5 : lut2_out1 = (coeff5+coeff7);
	5'd6 : lut2_out1 = (coeff6+coeff7);
	5'd7 : lut2_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut2_out1 = (coeff8);
	5'd9 : lut2_out1 = (coeff5+coeff8);
	5'd10 : lut2_out1 = (coeff6+coeff8);
	5'd11 : lut2_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut2_out1 = (coeff7+coeff8);
	5'd13 : lut2_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut2_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut2_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut2_out1 = (coeff9);
	5'd17 : lut2_out1 = (coeff5+coeff9);
	5'd18 : lut2_out1 = (coeff6+coeff9);
	5'd19 : lut2_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut2_out1 = (coeff7+coeff9);
	5'd21 : lut2_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut2_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut2_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut2_out1 = (coeff8+coeff9);
	5'd25 : lut2_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut2_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut2_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut2_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut2_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut2_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut2_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut2_out1 = 0;
	endcase
end
always @(lut_addr2_2)
begin
	case(lut_addr2_2)
	4'd0 : lut2_out2 = (0);
	4'd1 : lut2_out2 = (coeff10);
	4'd2 : lut2_out2 = (coeff11);
	4'd3 : lut2_out2 = (coeff10+coeff11);
	4'd4 : lut2_out2 = (coeff12);
	4'd5 : lut2_out2 = (coeff10+coeff12);
	4'd6 : lut2_out2 = (coeff11+coeff12);
	4'd7 : lut2_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut2_out2 = (coeff13);
	4'd9 : lut2_out2 = (coeff10+coeff13);
	4'd10 : lut2_out2 = (coeff11+coeff13);
	4'd11 : lut2_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut2_out2 = (coeff12+coeff13);
	4'd13 : lut2_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut2_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut2_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut2_out2 = 0;
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
always @(lut_addr3_1)
begin
	case(lut_addr3_1)
	5'd0 : lut3_out1 = (0);
	5'd1 : lut3_out1 = (coeff5);
	5'd2 : lut3_out1 = (coeff6);
	5'd3 : lut3_out1 = (coeff5+coeff6);
	5'd4 : lut3_out1 = (coeff7);
	5'd5 : lut3_out1 = (coeff5+coeff7);
	5'd6 : lut3_out1 = (coeff6+coeff7);
	5'd7 : lut3_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut3_out1 = (coeff8);
	5'd9 : lut3_out1 = (coeff5+coeff8);
	5'd10 : lut3_out1 = (coeff6+coeff8);
	5'd11 : lut3_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut3_out1 = (coeff7+coeff8);
	5'd13 : lut3_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut3_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut3_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut3_out1 = (coeff9);
	5'd17 : lut3_out1 = (coeff5+coeff9);
	5'd18 : lut3_out1 = (coeff6+coeff9);
	5'd19 : lut3_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut3_out1 = (coeff7+coeff9);
	5'd21 : lut3_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut3_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut3_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut3_out1 = (coeff8+coeff9);
	5'd25 : lut3_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut3_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut3_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut3_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut3_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut3_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut3_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut3_out1 = 0;
	endcase
end
always @(lut_addr3_2)
begin
	case(lut_addr3_2)
	4'd0 : lut3_out2 = (0);
	4'd1 : lut3_out2 = (coeff10);
	4'd2 : lut3_out2 = (coeff11);
	4'd3 : lut3_out2 = (coeff10+coeff11);
	4'd4 : lut3_out2 = (coeff12);
	4'd5 : lut3_out2 = (coeff10+coeff12);
	4'd6 : lut3_out2 = (coeff11+coeff12);
	4'd7 : lut3_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut3_out2 = (coeff13);
	4'd9 : lut3_out2 = (coeff10+coeff13);
	4'd10 : lut3_out2 = (coeff11+coeff13);
	4'd11 : lut3_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut3_out2 = (coeff12+coeff13);
	4'd13 : lut3_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut3_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut3_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut3_out2 = 0;
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
always @(lut_addr4_1)
begin
	case(lut_addr4_1)
	5'd0 : lut4_out1 = (0);
	5'd1 : lut4_out1 = (coeff5);
	5'd2 : lut4_out1 = (coeff6);
	5'd3 : lut4_out1 = (coeff5+coeff6);
	5'd4 : lut4_out1 = (coeff7);
	5'd5 : lut4_out1 = (coeff5+coeff7);
	5'd6 : lut4_out1 = (coeff6+coeff7);
	5'd7 : lut4_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut4_out1 = (coeff8);
	5'd9 : lut4_out1 = (coeff5+coeff8);
	5'd10 : lut4_out1 = (coeff6+coeff8);
	5'd11 : lut4_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut4_out1 = (coeff7+coeff8);
	5'd13 : lut4_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut4_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut4_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut4_out1 = (coeff9);
	5'd17 : lut4_out1 = (coeff5+coeff9);
	5'd18 : lut4_out1 = (coeff6+coeff9);
	5'd19 : lut4_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut4_out1 = (coeff7+coeff9);
	5'd21 : lut4_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut4_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut4_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut4_out1 = (coeff8+coeff9);
	5'd25 : lut4_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut4_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut4_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut4_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut4_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut4_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut4_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut4_out1 = 0;
	endcase
end
always @(lut_addr4_2)
begin
	case(lut_addr4_2)
	4'd0 : lut4_out2 = (0);
	4'd1 : lut4_out2 = (coeff10);
	4'd2 : lut4_out2 = (coeff11);
	4'd3 : lut4_out2 = (coeff10+coeff11);
	4'd4 : lut4_out2 = (coeff12);
	4'd5 : lut4_out2 = (coeff10+coeff12);
	4'd6 : lut4_out2 = (coeff11+coeff12);
	4'd7 : lut4_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut4_out2 = (coeff13);
	4'd9 : lut4_out2 = (coeff10+coeff13);
	4'd10 : lut4_out2 = (coeff11+coeff13);
	4'd11 : lut4_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut4_out2 = (coeff12+coeff13);
	4'd13 : lut4_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut4_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut4_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut4_out2 = 0;
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
always @(lut_addr5_1)
begin
	case(lut_addr5_1)
	5'd0 : lut5_out1 = (0);
	5'd1 : lut5_out1 = (coeff5);
	5'd2 : lut5_out1 = (coeff6);
	5'd3 : lut5_out1 = (coeff5+coeff6);
	5'd4 : lut5_out1 = (coeff7);
	5'd5 : lut5_out1 = (coeff5+coeff7);
	5'd6 : lut5_out1 = (coeff6+coeff7);
	5'd7 : lut5_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut5_out1 = (coeff8);
	5'd9 : lut5_out1 = (coeff5+coeff8);
	5'd10 : lut5_out1 = (coeff6+coeff8);
	5'd11 : lut5_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut5_out1 = (coeff7+coeff8);
	5'd13 : lut5_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut5_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut5_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut5_out1 = (coeff9);
	5'd17 : lut5_out1 = (coeff5+coeff9);
	5'd18 : lut5_out1 = (coeff6+coeff9);
	5'd19 : lut5_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut5_out1 = (coeff7+coeff9);
	5'd21 : lut5_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut5_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut5_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut5_out1 = (coeff8+coeff9);
	5'd25 : lut5_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut5_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut5_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut5_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut5_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut5_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut5_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut5_out1 = 0;
	endcase
end
always @(lut_addr5_2)
begin
	case(lut_addr5_2)
	4'd0 : lut5_out2 = (0);
	4'd1 : lut5_out2 = (coeff10);
	4'd2 : lut5_out2 = (coeff11);
	4'd3 : lut5_out2 = (coeff10+coeff11);
	4'd4 : lut5_out2 = (coeff12);
	4'd5 : lut5_out2 = (coeff10+coeff12);
	4'd6 : lut5_out2 = (coeff11+coeff12);
	4'd7 : lut5_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut5_out2 = (coeff13);
	4'd9 : lut5_out2 = (coeff10+coeff13);
	4'd10 : lut5_out2 = (coeff11+coeff13);
	4'd11 : lut5_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut5_out2 = (coeff12+coeff13);
	4'd13 : lut5_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut5_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut5_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut5_out2 = 0;
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
always @(lut_addr6_1)
begin
	case(lut_addr6_1)
	5'd0 : lut6_out1 = (0);
	5'd1 : lut6_out1 = (coeff5);
	5'd2 : lut6_out1 = (coeff6);
	5'd3 : lut6_out1 = (coeff5+coeff6);
	5'd4 : lut6_out1 = (coeff7);
	5'd5 : lut6_out1 = (coeff5+coeff7);
	5'd6 : lut6_out1 = (coeff6+coeff7);
	5'd7 : lut6_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut6_out1 = (coeff8);
	5'd9 : lut6_out1 = (coeff5+coeff8);
	5'd10 : lut6_out1 = (coeff6+coeff8);
	5'd11 : lut6_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut6_out1 = (coeff7+coeff8);
	5'd13 : lut6_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut6_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut6_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut6_out1 = (coeff9);
	5'd17 : lut6_out1 = (coeff5+coeff9);
	5'd18 : lut6_out1 = (coeff6+coeff9);
	5'd19 : lut6_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut6_out1 = (coeff7+coeff9);
	5'd21 : lut6_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut6_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut6_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut6_out1 = (coeff8+coeff9);
	5'd25 : lut6_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut6_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut6_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut6_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut6_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut6_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut6_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut6_out1 = 0;
	endcase
end
always @(lut_addr6_2)
begin
	case(lut_addr6_2)
	4'd0 : lut6_out2 = (0);
	4'd1 : lut6_out2 = (coeff10);
	4'd2 : lut6_out2 = (coeff11);
	4'd3 : lut6_out2 = (coeff10+coeff11);
	4'd4 : lut6_out2 = (coeff12);
	4'd5 : lut6_out2 = (coeff10+coeff12);
	4'd6 : lut6_out2 = (coeff11+coeff12);
	4'd7 : lut6_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut6_out2 = (coeff13);
	4'd9 : lut6_out2 = (coeff10+coeff13);
	4'd10 : lut6_out2 = (coeff11+coeff13);
	4'd11 : lut6_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut6_out2 = (coeff12+coeff13);
	4'd13 : lut6_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut6_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut6_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut6_out2 = 0;
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
always @(lut_addr7_1)
begin
	case(lut_addr7_1)
	5'd0 : lut7_out1 = (0);
	5'd1 : lut7_out1 = (coeff5);
	5'd2 : lut7_out1 = (coeff6);
	5'd3 : lut7_out1 = (coeff5+coeff6);
	5'd4 : lut7_out1 = (coeff7);
	5'd5 : lut7_out1 = (coeff5+coeff7);
	5'd6 : lut7_out1 = (coeff6+coeff7);
	5'd7 : lut7_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut7_out1 = (coeff8);
	5'd9 : lut7_out1 = (coeff5+coeff8);
	5'd10 : lut7_out1 = (coeff6+coeff8);
	5'd11 : lut7_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut7_out1 = (coeff7+coeff8);
	5'd13 : lut7_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut7_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut7_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut7_out1 = (coeff9);
	5'd17 : lut7_out1 = (coeff5+coeff9);
	5'd18 : lut7_out1 = (coeff6+coeff9);
	5'd19 : lut7_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut7_out1 = (coeff7+coeff9);
	5'd21 : lut7_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut7_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut7_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut7_out1 = (coeff8+coeff9);
	5'd25 : lut7_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut7_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut7_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut7_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut7_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut7_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut7_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut7_out1 = 0;
	endcase
end
always @(lut_addr7_2)
begin
	case(lut_addr7_2)
	4'd0 : lut7_out2 = (0);
	4'd1 : lut7_out2 = (coeff10);
	4'd2 : lut7_out2 = (coeff11);
	4'd3 : lut7_out2 = (coeff10+coeff11);
	4'd4 : lut7_out2 = (coeff12);
	4'd5 : lut7_out2 = (coeff10+coeff12);
	4'd6 : lut7_out2 = (coeff11+coeff12);
	4'd7 : lut7_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut7_out2 = (coeff13);
	4'd9 : lut7_out2 = (coeff10+coeff13);
	4'd10 : lut7_out2 = (coeff11+coeff13);
	4'd11 : lut7_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut7_out2 = (coeff12+coeff13);
	4'd13 : lut7_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut7_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut7_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut7_out2 = 0;
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
always @(lut_addr8_1)
begin
	case(lut_addr8_1)
	5'd0 : lut8_out1 = (0);
	5'd1 : lut8_out1 = (coeff5);
	5'd2 : lut8_out1 = (coeff6);
	5'd3 : lut8_out1 = (coeff5+coeff6);
	5'd4 : lut8_out1 = (coeff7);
	5'd5 : lut8_out1 = (coeff5+coeff7);
	5'd6 : lut8_out1 = (coeff6+coeff7);
	5'd7 : lut8_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut8_out1 = (coeff8);
	5'd9 : lut8_out1 = (coeff5+coeff8);
	5'd10 : lut8_out1 = (coeff6+coeff8);
	5'd11 : lut8_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut8_out1 = (coeff7+coeff8);
	5'd13 : lut8_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut8_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut8_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut8_out1 = (coeff9);
	5'd17 : lut8_out1 = (coeff5+coeff9);
	5'd18 : lut8_out1 = (coeff6+coeff9);
	5'd19 : lut8_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut8_out1 = (coeff7+coeff9);
	5'd21 : lut8_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut8_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut8_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut8_out1 = (coeff8+coeff9);
	5'd25 : lut8_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut8_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut8_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut8_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut8_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut8_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut8_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut8_out1 = 0;
	endcase
end
always @(lut_addr8_2)
begin
	case(lut_addr8_2)
	4'd0 : lut8_out2 = (0);
	4'd1 : lut8_out2 = (coeff10);
	4'd2 : lut8_out2 = (coeff11);
	4'd3 : lut8_out2 = (coeff10+coeff11);
	4'd4 : lut8_out2 = (coeff12);
	4'd5 : lut8_out2 = (coeff10+coeff12);
	4'd6 : lut8_out2 = (coeff11+coeff12);
	4'd7 : lut8_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut8_out2 = (coeff13);
	4'd9 : lut8_out2 = (coeff10+coeff13);
	4'd10 : lut8_out2 = (coeff11+coeff13);
	4'd11 : lut8_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut8_out2 = (coeff12+coeff13);
	4'd13 : lut8_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut8_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut8_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut8_out2 = 0;
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
always @(lut_addr9_1)
begin
	case(lut_addr9_1)
	5'd0 : lut9_out1 = (0);
	5'd1 : lut9_out1 = (coeff5);
	5'd2 : lut9_out1 = (coeff6);
	5'd3 : lut9_out1 = (coeff5+coeff6);
	5'd4 : lut9_out1 = (coeff7);
	5'd5 : lut9_out1 = (coeff5+coeff7);
	5'd6 : lut9_out1 = (coeff6+coeff7);
	5'd7 : lut9_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut9_out1 = (coeff8);
	5'd9 : lut9_out1 = (coeff5+coeff8);
	5'd10 : lut9_out1 = (coeff6+coeff8);
	5'd11 : lut9_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut9_out1 = (coeff7+coeff8);
	5'd13 : lut9_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut9_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut9_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut9_out1 = (coeff9);
	5'd17 : lut9_out1 = (coeff5+coeff9);
	5'd18 : lut9_out1 = (coeff6+coeff9);
	5'd19 : lut9_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut9_out1 = (coeff7+coeff9);
	5'd21 : lut9_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut9_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut9_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut9_out1 = (coeff8+coeff9);
	5'd25 : lut9_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut9_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut9_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut9_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut9_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut9_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut9_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut9_out1 = 0;
	endcase
end
always @(lut_addr9_2)
begin
	case(lut_addr9_2)
	4'd0 : lut9_out2 = (0);
	4'd1 : lut9_out2 = (coeff10);
	4'd2 : lut9_out2 = (coeff11);
	4'd3 : lut9_out2 = (coeff10+coeff11);
	4'd4 : lut9_out2 = (coeff12);
	4'd5 : lut9_out2 = (coeff10+coeff12);
	4'd6 : lut9_out2 = (coeff11+coeff12);
	4'd7 : lut9_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut9_out2 = (coeff13);
	4'd9 : lut9_out2 = (coeff10+coeff13);
	4'd10 : lut9_out2 = (coeff11+coeff13);
	4'd11 : lut9_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut9_out2 = (coeff12+coeff13);
	4'd13 : lut9_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut9_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut9_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut9_out2 = 0;
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
always @(lut_addr10_1)
begin
	case(lut_addr10_1)
	5'd0 : lut10_out1 = (0);
	5'd1 : lut10_out1 = (coeff5);
	5'd2 : lut10_out1 = (coeff6);
	5'd3 : lut10_out1 = (coeff5+coeff6);
	5'd4 : lut10_out1 = (coeff7);
	5'd5 : lut10_out1 = (coeff5+coeff7);
	5'd6 : lut10_out1 = (coeff6+coeff7);
	5'd7 : lut10_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut10_out1 = (coeff8);
	5'd9 : lut10_out1 = (coeff5+coeff8);
	5'd10 : lut10_out1 = (coeff6+coeff8);
	5'd11 : lut10_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut10_out1 = (coeff7+coeff8);
	5'd13 : lut10_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut10_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut10_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut10_out1 = (coeff9);
	5'd17 : lut10_out1 = (coeff5+coeff9);
	5'd18 : lut10_out1 = (coeff6+coeff9);
	5'd19 : lut10_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut10_out1 = (coeff7+coeff9);
	5'd21 : lut10_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut10_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut10_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut10_out1 = (coeff8+coeff9);
	5'd25 : lut10_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut10_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut10_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut10_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut10_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut10_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut10_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut10_out1 = 0;
	endcase
end
always @(lut_addr10_2)
begin
	case(lut_addr10_2)
	4'd0 : lut10_out2 = (0);
	4'd1 : lut10_out2 = (coeff10);
	4'd2 : lut10_out2 = (coeff11);
	4'd3 : lut10_out2 = (coeff10+coeff11);
	4'd4 : lut10_out2 = (coeff12);
	4'd5 : lut10_out2 = (coeff10+coeff12);
	4'd6 : lut10_out2 = (coeff11+coeff12);
	4'd7 : lut10_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut10_out2 = (coeff13);
	4'd9 : lut10_out2 = (coeff10+coeff13);
	4'd10 : lut10_out2 = (coeff11+coeff13);
	4'd11 : lut10_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut10_out2 = (coeff12+coeff13);
	4'd13 : lut10_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut10_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut10_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut10_out2 = 0;
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
always @(lut_addr11_1)
begin
	case(lut_addr11_1)
	5'd0 : lut11_out1 = (0);
	5'd1 : lut11_out1 = (coeff5);
	5'd2 : lut11_out1 = (coeff6);
	5'd3 : lut11_out1 = (coeff5+coeff6);
	5'd4 : lut11_out1 = (coeff7);
	5'd5 : lut11_out1 = (coeff5+coeff7);
	5'd6 : lut11_out1 = (coeff6+coeff7);
	5'd7 : lut11_out1 = (coeff5+coeff6+coeff7);
	5'd8 : lut11_out1 = (coeff8);
	5'd9 : lut11_out1 = (coeff5+coeff8);
	5'd10 : lut11_out1 = (coeff6+coeff8);
	5'd11 : lut11_out1 = (coeff5+coeff6+coeff8);
	5'd12 : lut11_out1 = (coeff7+coeff8);
	5'd13 : lut11_out1 = (coeff5+coeff7+coeff8);
	5'd14 : lut11_out1 = (coeff6+coeff7+coeff8);
	5'd15 : lut11_out1 = (coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut11_out1 = (coeff9);
	5'd17 : lut11_out1 = (coeff5+coeff9);
	5'd18 : lut11_out1 = (coeff6+coeff9);
	5'd19 : lut11_out1 = (coeff5+coeff6+coeff9);
	5'd20 : lut11_out1 = (coeff7+coeff9);
	5'd21 : lut11_out1 = (coeff5+coeff7+coeff9);
	5'd22 : lut11_out1 = (coeff6+coeff7+coeff9);
	5'd23 : lut11_out1 = (coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut11_out1 = (coeff8+coeff9);
	5'd25 : lut11_out1 = (coeff5+coeff8+coeff9);
	5'd26 : lut11_out1 = (coeff6+coeff8+coeff9);
	5'd27 : lut11_out1 = (coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut11_out1 = (coeff7+coeff8+coeff9);
	5'd29 : lut11_out1 = (coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut11_out1 = (coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut11_out1 = (coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut11_out1 = 0;
	endcase
end
always @(lut_addr11_2)
begin
	case(lut_addr11_2)
	4'd0 : lut11_out2 = (0);
	4'd1 : lut11_out2 = (coeff10);
	4'd2 : lut11_out2 = (coeff11);
	4'd3 : lut11_out2 = (coeff10+coeff11);
	4'd4 : lut11_out2 = (coeff12);
	4'd5 : lut11_out2 = (coeff10+coeff12);
	4'd6 : lut11_out2 = (coeff11+coeff12);
	4'd7 : lut11_out2 = (coeff10+coeff11+coeff12);
	4'd8 : lut11_out2 = (coeff13);
	4'd9 : lut11_out2 = (coeff10+coeff13);
	4'd10 : lut11_out2 = (coeff11+coeff13);
	4'd11 : lut11_out2 = (coeff10+coeff11+coeff13);
	4'd12 : lut11_out2 = (coeff12+coeff13);
	4'd13 : lut11_out2 = (coeff10+coeff12+coeff13);
	4'd14 : lut11_out2 = (coeff11+coeff12+coeff13);
	4'd15 : lut11_out2 = (coeff10+coeff11+coeff12+coeff13);
	default :lut11_out2 = 0;
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
always @(lut_addr12_1)
begin
	case(lut_addr12_1)
	5'd0 : lut12_out1 = (0);
	5'd1 : lut12_out1 = -(coeff5);
	5'd2 : lut12_out1 = -(coeff6);
	5'd3 : lut12_out1 = -(coeff5+coeff6);
	5'd4 : lut12_out1 = -(coeff7);
	5'd5 : lut12_out1 = -(coeff5+coeff7);
	5'd6 : lut12_out1 = -(coeff6+coeff7);
	5'd7 : lut12_out1 = -(coeff5+coeff6+coeff7);
	5'd8 : lut12_out1 = -(coeff8);
	5'd9 : lut12_out1 = -(coeff5+coeff8);
	5'd10 : lut12_out1 = -(coeff6+coeff8);
	5'd11 : lut12_out1 = -(coeff5+coeff6+coeff8);
	5'd12 : lut12_out1 = -(coeff7+coeff8);
	5'd13 : lut12_out1 = -(coeff5+coeff7+coeff8);
	5'd14 : lut12_out1 = -(coeff6+coeff7+coeff8);
	5'd15 : lut12_out1 = -(coeff5+coeff6+coeff7+coeff8);
	5'd16 : lut12_out1 = -(coeff9);
	5'd17 : lut12_out1 = -(coeff5+coeff9);
	5'd18 : lut12_out1 = -(coeff6+coeff9);
	5'd19 : lut12_out1 = -(coeff5+coeff6+coeff9);
	5'd20 : lut12_out1 = -(coeff7+coeff9);
	5'd21 : lut12_out1 = -(coeff5+coeff7+coeff9);
	5'd22 : lut12_out1 = -(coeff6+coeff7+coeff9);
	5'd23 : lut12_out1 = -(coeff5+coeff6+coeff7+coeff9);
	5'd24 : lut12_out1 = -(coeff8+coeff9);
	5'd25 : lut12_out1 = -(coeff5+coeff8+coeff9);
	5'd26 : lut12_out1 = -(coeff6+coeff8+coeff9);
	5'd27 : lut12_out1 = -(coeff5+coeff6+coeff8+coeff9);
	5'd28 : lut12_out1 = -(coeff7+coeff8+coeff9);
	5'd29 : lut12_out1 = -(coeff5+coeff7+coeff8+coeff9);
	5'd30 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff9);
	5'd31 : lut12_out1 = -(coeff5+coeff6+coeff7+coeff8+coeff9);
	default :lut12_out1 = 0;
	endcase
end
always @(lut_addr12_2)
begin
	case(lut_addr12_2)
	4'd0 : lut12_out2 = (0);
	4'd1 : lut12_out2 = -(coeff10);
	4'd2 : lut12_out2 = -(coeff11);
	4'd3 : lut12_out2 = -(coeff10+coeff11);
	4'd4 : lut12_out2 = -(coeff12);
	4'd5 : lut12_out2 = -(coeff10+coeff12);
	4'd6 : lut12_out2 = -(coeff11+coeff12);
	4'd7 : lut12_out2 = -(coeff10+coeff11+coeff12);
	4'd8 : lut12_out2 = -(coeff13);
	4'd9 : lut12_out2 = -(coeff10+coeff13);
	4'd10 : lut12_out2 = -(coeff11+coeff13);
	4'd11 : lut12_out2 = -(coeff10+coeff11+coeff13);
	4'd12 : lut12_out2 = -(coeff12+coeff13);
	4'd13 : lut12_out2 = -(coeff10+coeff12+coeff13);
	4'd14 : lut12_out2 = -(coeff11+coeff12+coeff13);
	4'd15 : lut12_out2 = -(coeff10+coeff11+coeff12+coeff13);
	default :lut12_out2 = 0;
	endcase
end


always @(posedge clk)
begin
	lut0_0 <= lut0_out0;
end
always @(posedge clk)
begin
	lut0_1 <= lut0_out1;
end
always @(posedge clk)
begin
	lut0_2 <= lut0_out2;
end
always @(posedge clk)
begin
	lut1_0 <= lut1_out0;
end
always @(posedge clk)
begin
	lut1_1 <= lut1_out1;
end
always @(posedge clk)
begin
	lut1_2 <= lut1_out2;
end
always @(posedge clk)
begin
	lut2_0 <= lut2_out0;
end
always @(posedge clk)
begin
	lut2_1 <= lut2_out1;
end
always @(posedge clk)
begin
	lut2_2 <= lut2_out2;
end
always @(posedge clk)
begin
	lut3_0 <= lut3_out0;
end
always @(posedge clk)
begin
	lut3_1 <= lut3_out1;
end
always @(posedge clk)
begin
	lut3_2 <= lut3_out2;
end
always @(posedge clk)
begin
	lut4_0 <= lut4_out0;
end
always @(posedge clk)
begin
	lut4_1 <= lut4_out1;
end
always @(posedge clk)
begin
	lut4_2 <= lut4_out2;
end
always @(posedge clk)
begin
	lut5_0 <= lut5_out0;
end
always @(posedge clk)
begin
	lut5_1 <= lut5_out1;
end
always @(posedge clk)
begin
	lut5_2 <= lut5_out2;
end
always @(posedge clk)
begin
	lut6_0 <= lut6_out0;
end
always @(posedge clk)
begin
	lut6_1 <= lut6_out1;
end
always @(posedge clk)
begin
	lut6_2 <= lut6_out2;
end
always @(posedge clk)
begin
	lut7_0 <= lut7_out0;
end
always @(posedge clk)
begin
	lut7_1 <= lut7_out1;
end
always @(posedge clk)
begin
	lut7_2 <= lut7_out2;
end
always @(posedge clk)
begin
	lut8_0 <= lut8_out0;
end
always @(posedge clk)
begin
	lut8_1 <= lut8_out1;
end
always @(posedge clk)
begin
	lut8_2 <= lut8_out2;
end
always @(posedge clk)
begin
	lut9_0 <= lut9_out0;
end
always @(posedge clk)
begin
	lut9_1 <= lut9_out1;
end
always @(posedge clk)
begin
	lut9_2 <= lut9_out2;
end
always @(posedge clk)
begin
	lut10_0 <= lut10_out0;
end
always @(posedge clk)
begin
	lut10_1 <= lut10_out1;
end
always @(posedge clk)
begin
	lut10_2 <= lut10_out2;
end
always @(posedge clk)
begin
	lut11_0 <= lut11_out0;
end
always @(posedge clk)
begin
	lut11_1 <= lut11_out1;
end
always @(posedge clk)
begin
	lut11_2 <= lut11_out2;
end
always @(posedge clk)
begin
	lut12_0 <= lut12_out0;
end
always @(posedge clk)
begin
	lut12_1 <= lut12_out1;
end
always @(posedge clk)
begin
	lut12_2 <= lut12_out2;
end

//shift0
wire [16:0]	level0_add0_X =  {{3{lut0_0[13]}}, lut0_0};
wire [16:0]	level0_add0_Y =  {{3{lut0_1[13]}}, lut0_1};
wire [16:0]	level0_add0_Z =  {{2{lut1_0[13]}}, lut1_0, {1{1'b0}}};
wire [16:0]	level0_add0_W =  {{2{lut1_1[13]}}, lut1_1, {1{1'b0}}};
wire [16:0]	level0_add0_S;
wire [16:0]	level0_add0_C;
Adder_N #(.in_width(17)) Adder_N_inst0(
	.clk(clk),
	.X(level0_add0_X),
	.Y(level0_add0_Y),	
	.Z(level0_add0_Z),
	.W(level0_add0_W),
	.S(level0_add0_S),
	.C(level0_add0_C),
	.COUT()
);
//shift2
wire [16:0]	level0_add1_X =  {{3{lut2_0[13]}}, lut2_0};
wire [16:0]	level0_add1_Y =  {{3{lut2_1[13]}}, lut2_1};
wire [16:0]	level0_add1_Z =  {{2{lut3_0[13]}}, lut3_0, {1{1'b0}}};
wire [16:0]	level0_add1_W =  {{2{lut3_1[13]}}, lut3_1, {1{1'b0}}};
wire [16:0]	level0_add1_S;
wire [16:0]	level0_add1_C;
Adder_N #(.in_width(17)) Adder_N_inst1(
	.clk(clk),
	.X(level0_add1_X),
	.Y(level0_add1_Y),	
	.Z(level0_add1_Z),
	.W(level0_add1_W),
	.S(level0_add1_S),
	.C(level0_add1_C),
	.COUT()
);
//shift4
wire [16:0]	level0_add2_X =  {{3{lut4_0[13]}}, lut4_0};
wire [16:0]	level0_add2_Y =  {{3{lut4_1[13]}}, lut4_1};
wire [16:0]	level0_add2_Z =  {{2{lut5_0[13]}}, lut5_0, {1{1'b0}}};
wire [16:0]	level0_add2_W =  {{2{lut5_1[13]}}, lut5_1, {1{1'b0}}};
wire [16:0]	level0_add2_S;
wire [16:0]	level0_add2_C;
Adder_N #(.in_width(17)) Adder_N_inst2(
	.clk(clk),
	.X(level0_add2_X),
	.Y(level0_add2_Y),	
	.Z(level0_add2_Z),
	.W(level0_add2_W),
	.S(level0_add2_S),
	.C(level0_add2_C),
	.COUT()
);
//shift6
wire [16:0]	level0_add3_X =  {{3{lut6_0[13]}}, lut6_0};
wire [16:0]	level0_add3_Y =  {{3{lut6_1[13]}}, lut6_1};
wire [16:0]	level0_add3_Z =  {{2{lut7_0[13]}}, lut7_0, {1{1'b0}}};
wire [16:0]	level0_add3_W =  {{2{lut7_1[13]}}, lut7_1, {1{1'b0}}};
wire [16:0]	level0_add3_S;
wire [16:0]	level0_add3_C;
Adder_N #(.in_width(17)) Adder_N_inst3(
	.clk(clk),
	.X(level0_add3_X),
	.Y(level0_add3_Y),	
	.Z(level0_add3_Z),
	.W(level0_add3_W),
	.S(level0_add3_S),
	.C(level0_add3_C),
	.COUT()
);
//shift8
wire [16:0]	level0_add4_X =  {{3{lut8_0[13]}}, lut8_0};
wire [16:0]	level0_add4_Y =  {{3{lut8_1[13]}}, lut8_1};
wire [16:0]	level0_add4_Z =  {{2{lut9_0[13]}}, lut9_0, {1{1'b0}}};
wire [16:0]	level0_add4_W =  {{2{lut9_1[13]}}, lut9_1, {1{1'b0}}};
wire [16:0]	level0_add4_S;
wire [16:0]	level0_add4_C;
Adder_N #(.in_width(17)) Adder_N_inst4(
	.clk(clk),
	.X(level0_add4_X),
	.Y(level0_add4_Y),	
	.Z(level0_add4_Z),
	.W(level0_add4_W),
	.S(level0_add4_S),
	.C(level0_add4_C),
	.COUT()
);
/*
//shift10
wire [16:0]	level0_add5_X =  {{3{lut10_0[13]}}, lut10_0};
wire [16:0]	level0_add5_Y =  {{3{lut10_1[13]}}, lut10_1};
wire [16:0]	level0_add5_Z =  {{2{lut11_0[13]}}, lut11_0, {1{1'b0}}};
wire [16:0]	level0_add5_W =  {{2{lut11_1[13]}}, lut11_1, {1{1'b0}}};
wire [16:0]	level0_add5_S;
wire [16:0]	level0_add5_C;
Adder_N #(.in_width(17)) Adder_N_inst5(
	.clk(clk),
	.X(level0_add5_X),
	.Y(level0_add5_Y),	
	.Z(level0_add5_Z),
	.W(level0_add5_W),
	.S(level0_add5_S),
	.C(level0_add5_C),
	.COUT()
);
*/
//shift10
wire [16:0]	level0_add5_X =  {{2{lut11_1[13]}}, lut11_1, {1{1'b0}}};
wire [16:0]	level0_add5_Y =  {{3{lut10_1[13]}}, lut10_1};
wire [16:0]	level0_add5_Z =  {{2{lut11_0[13]}}, lut11_0, {1{1'b0}}};
wire [16:0]	level0_add5_W =  {{3{lut10_0[13]}}, lut10_0};
wire [16:0]	level0_add5_S;
wire [16:0]	level0_add5_C;
Adder_N #(.in_width(17)) Adder_N_inst5(
	.clk(clk),
	.X(level0_add5_X),
	.Y(level0_add5_Y),	
	.Z(level0_add5_Z),
	.W(level0_add5_W),
	.S(level0_add5_S),
	.C(level0_add5_C),
	.COUT()
);
//shift0
wire [21:0]	level0_add6_X =  {{5{lut0_2[16]}}, lut0_2};
wire [21:0]	level0_add6_Y =  {{4{lut1_2[16]}}, lut1_2, {1{1'b0}}};
wire [21:0]	level0_add6_Z =  {{3{lut2_2[16]}}, lut2_2, {2{1'b0}}};
wire [21:0]	level0_add6_W =  {{2{lut3_2[16]}}, lut3_2, {3{1'b0}}};
wire [21:0]	level0_add6_S;
wire [21:0]	level0_add6_C;
Adder_N #(.in_width(22)) Adder_N_inst6(
	.clk(clk),
	.X(level0_add6_X),
	.Y(level0_add6_Y),	
	.Z(level0_add6_Z),
	.W(level0_add6_W),
	.S(level0_add6_S),
	.C(level0_add6_C),
	.COUT()
);
//shift4
wire [21:0]	level0_add7_X =  {{5{lut4_2[16]}}, lut4_2};
wire [21:0]	level0_add7_Y =  {{4{lut5_2[16]}}, lut5_2, {1{1'b0}}};
wire [21:0]	level0_add7_Z =  {{3{lut6_2[16]}}, lut6_2, {2{1'b0}}};
wire [21:0]	level0_add7_W =  {{2{lut7_2[16]}}, lut7_2, {3{1'b0}}};
wire [21:0]	level0_add7_S;
wire [21:0]	level0_add7_C;
Adder_N #(.in_width(22)) Adder_N_inst7(
	.clk(clk),
	.X(level0_add7_X),
	.Y(level0_add7_Y),	
	.Z(level0_add7_Z),
	.W(level0_add7_W),
	.S(level0_add7_S),
	.C(level0_add7_C),
	.COUT()
);
//shift8
wire [21:0]	level0_add8_X =  {{5{lut8_2[16]}}, lut8_2};
wire [21:0]	level0_add8_Y =  {{4{lut9_2[16]}}, lut9_2, {1{1'b0}}};
wire [21:0]	level0_add8_Z =  {{3{lut10_2[16]}}, lut10_2, {2{1'b0}}};
wire [21:0]	level0_add8_W =  {{2{lut11_2[16]}}, lut11_2, {3{1'b0}}};
wire [21:0]	level0_add8_S;
wire [21:0]	level0_add8_C;
Adder_N #(.in_width(22)) Adder_N_inst8(
	.clk(clk),
	.X(level0_add8_X),
	.Y(level0_add8_Y),	
	.Z(level0_add8_Z),
	.W(level0_add8_W),
	.S(level0_add8_S),
	.C(level0_add8_C),
	.COUT()
);
//shift12
reg [14:0] level0_add9;
always @(posedge clk)
	level0_add9 <= $signed(lut12_0) + $signed(lut12_1);
reg [16:0] level0_add10;
always @(posedge clk)
	level0_add10 <= lut12_2;



//shift0
wire [21:0]	level1_add0_X =  {{5{level0_add0_S[16]}}, level0_add0_S};
wire [21:0]	level1_add0_Y =  {{4{level0_add0_C[16]}}, level0_add0_C, {1{1'b0}}};
wire [21:0]	level1_add0_Z =  {{3{level0_add1_S[16]}}, level0_add1_S, {2{1'b0}}};
wire [21:0]	level1_add0_W =  {{2{level0_add1_C[16]}}, level0_add1_C, 1'b0, {2{1'b0}}};
wire [21:0]	level1_add0_S;
wire [21:0]	level1_add0_C;
Adder_N #(.in_width(22)) Adder_N_inst9(
	.clk(clk),
	.X(level1_add0_X),
	.Y(level1_add0_Y),	
	.Z(level1_add0_Z),
	.W(level1_add0_W),
	.S(level1_add0_S),
	.C(level1_add0_C),
	.COUT()
);
//shift4
wire [21:0]	level1_add1_X =  {{5{level0_add2_S[16]}}, level0_add2_S};
wire [21:0]	level1_add1_Y =  {{4{level0_add2_C[16]}}, level0_add2_C, {1{1'b0}}};
wire [21:0]	level1_add1_Z =  {{3{level0_add3_S[16]}}, level0_add3_S, {2{1'b0}}};
wire [21:0]	level1_add1_W =  {{2{level0_add3_C[16]}}, level0_add3_C, 1'b0, {2{1'b0}}};
wire [21:0]	level1_add1_S;
wire [21:0]	level1_add1_C;
Adder_N #(.in_width(22)) Adder_N_inst10(
	.clk(clk),
	.X(level1_add1_X),
	.Y(level1_add1_Y),	
	.Z(level1_add1_Z),
	.W(level1_add1_W),
	.S(level1_add1_S),
	.C(level1_add1_C),
	.COUT()
);
//shift8
wire [21:0]	level1_add2_X =  {{5{level0_add4_S[16]}}, level0_add4_S};
wire [21:0]	level1_add2_Y =  {{4{level0_add4_C[16]}}, level0_add4_C, {1{1'b0}}};
wire [21:0]	level1_add2_Z =  {{3{level0_add5_S[16]}}, level0_add5_S, {2{1'b0}}};
wire [21:0]	level1_add2_W =  {{2{level0_add5_C[16]}}, level0_add5_C, 1'b0, {2{1'b0}}};
wire [21:0]	level1_add2_S;
wire [21:0]	level1_add2_C;
Adder_N #(.in_width(22)) Adder_N_inst11(
	.clk(clk),
	.X(level1_add2_X),
	.Y(level1_add2_Y),	
	.Z(level1_add2_Z),
	.W(level1_add2_W),
	.S(level1_add2_S),
	.C(level1_add2_C),
	.COUT()
);
//shift0
wire [28:0]	level1_add3_X =  {{7{level0_add6_S[21]}}, level0_add6_S};
wire [28:0]	level1_add3_Y =  {{6{level0_add6_C[21]}}, level0_add6_C, {1{1'b0}}};
wire [28:0]	level1_add3_Z =  {{3{level0_add7_S[21]}}, level0_add7_S, {4{1'b0}}};
wire [28:0]	level1_add3_W =  {{2{level0_add7_C[21]}}, level0_add7_C, 1'b0, {4{1'b0}}};
wire [28:0]	level1_add3_S;
wire [28:0]	level1_add3_C;
Adder_N #(.in_width(29)) Adder_N_inst12(
	.clk(clk),
	.X(level1_add3_X),
	.Y(level1_add3_Y),	
	.Z(level1_add3_Z),
	.W(level1_add3_W),
	.S(level1_add3_S),
	.C(level1_add3_C),
	.COUT()
);
//shift8
wire [24:0]	level1_add4_X =  {{3{level0_add8_S[21]}}, level0_add8_S};
wire [24:0]	level1_add4_Y =  {{2{level0_add8_C[21]}}, level0_add8_C, {1{1'b0}}};
wire [24:0]	level1_add4_Z =  {{6{level0_add9[14]}},  level0_add9,  {4{1'b0}}};
wire [24:0]	level1_add4_W =  {{4{level0_add10[16]}}, level0_add10, {4{1'b0}}};
wire [24:0]	level1_add4_S;
wire [24:0]	level1_add4_C;
Adder_N #(.in_width(25)) Adder_N_inst13(
	.clk(clk),
	.X(level1_add4_X),
	.Y(level1_add4_Y),	
	.Z(level1_add4_Z),
	.W(level1_add4_W),
	.S(level1_add4_S),
	.C(level1_add4_C),
	.COUT()
);

//shift0
wire [28:0]	level2_add0_X =  {{7{level1_add0_S[21]}}, level1_add0_S};
wire [28:0]	level2_add0_Y =  {{6{level1_add0_C[21]}}, level1_add0_C, {1{1'b0}}};
wire [28:0]	level2_add0_Z =  {{3{level1_add1_S[21]}}, level1_add1_S, {4{1'b0}}};
wire [28:0]	level2_add0_W =  {{2{level1_add1_C[21]}}, level1_add1_C, 1'b0, {4{1'b0}}};
wire [28:0]	level2_add0_S;
wire [28:0]	level2_add0_C;
Adder_N #(.in_width(29)) Adder_N_inst14(
	.clk(clk),
	.X(level2_add0_X),
	.Y(level2_add0_Y),	
	.Z(level2_add0_Z),
	.W(level2_add0_W),
	.S(level2_add0_S),
	.C(level2_add0_C),
	.COUT()
);
//shift0
wire [29:0]	level2_add1_X =  {level1_add4_C[20:0], 1'b0, {8{1'b0}}};
wire [29:0]	level2_add1_Y =  {level1_add3_C, {1{1'b0}}};
wire [29:0]	level2_add1_Z =  {level1_add4_S[21:0], {8{1'b0}}};
wire [29:0]	level2_add1_W =  {{1{level1_add3_S[28]}}, level1_add3_S};
wire [29:0]	level2_add1_S;
wire [29:0]	level2_add1_C;
Adder_N #(.in_width(30)) Adder_N_inst15(
	.clk(clk),
	.X(level2_add1_X),
	.Y(level2_add1_Y),	
	.Z(level2_add1_Z),
	.W(level2_add1_W),
	.S(level2_add1_S),
	.C(level2_add1_C),
	.COUT()
);
//shift8
reg [23:0]	level2_add2;
always @(posedge clk)
	level2_add2 <= $signed({level1_add2_S[21], level1_add2_S}) + $signed({level1_add2_C, 1'b0});

//shift0
wire [29:0]	level3_add0_X =  {{1{level2_add0_S[28]}}, level2_add0_S};
wire [29:0]	level3_add0_Y =  {level2_add0_C, {1{1'b0}}};
wire [29:0]	level3_add0_Z =  {level2_add1_S};
wire [29:0]	level3_add0_W =  {level2_add1_C[28:0], {1{1'b0}}};
wire [29:0]	level3_add0_S;
wire [29:0]	level3_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst16(
	.clk(clk),
	.X(level3_add0_X),
	.Y(level3_add0_Y),	
	.Z(level3_add0_Z),
	.W(level3_add0_W),
	.S(level3_add0_S),
	.C(level3_add0_C),
	.COUT()
);
//shift8
reg	[23:0]	level3_add1;
always @(posedge clk)
	level3_add1 <= level2_add2;

//shift0
reg [29:0] level4_add0;
always @(posedge clk)
	level4_add0 <= $signed(level3_add0_S) +$signed({level3_add0_C[28:0], 1'b0});
//shift8
reg	[23:0]	level4_add1;
always @(posedge clk)
	level4_add1 <= level3_add1;
/*
reg	[29:0]	out_tmp;
always @(posedge clk)
	out_tmp <= $signed(level4_add0) +$signed({level4_add1[21:0], {8{1'b0}}});
*/
wire	[29:0]	out_tmp = $signed(level4_add0) +$signed({level4_add1[21:0], {8{1'b0}}});
assign filter_out = out_tmp[29:0];

endmodule
