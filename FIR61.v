module FIR61(
input					clk,
input  signed [11:0]	filter_in,
output signed [29:0]	filter_out
);

parameter signed [16:0] coeff0 = 17'd434;
parameter signed [16:0] coeff1 = 17'd270;
parameter signed [16:0] coeff2 = -17'd573;
parameter signed [16:0] coeff3 = -17'd83;
parameter signed [16:0] coeff4 = 17'd655;
parameter signed [16:0] coeff5 = -17'd155;
parameter signed [16:0] coeff6 = -17'd663;
parameter signed [16:0] coeff7 = 17'd417;
parameter signed [16:0] coeff8 = 17'd575;
parameter signed [16:0] coeff9 = -17'd679;
parameter signed [16:0] coeff10 = -17'd386;
parameter signed [16:0] coeff11 = 17'd903;
parameter signed [16:0] coeff12 = 17'd91;
parameter signed [16:0] coeff13 = -17'd1055;
parameter signed [16:0] coeff14 = 17'd298;
parameter signed [16:0] coeff15 = 17'd1091;
parameter signed [16:0] coeff16 = -17'd763;
parameter signed [16:0] coeff17 = -17'd975;
parameter signed [16:0] coeff18 = 17'd1274;
parameter signed [16:0] coeff19 = 17'd660;
parameter signed [16:0] coeff20 = -17'd1800;
parameter signed [16:0] coeff21 = -17'd97;
parameter signed [16:0] coeff22 = 17'd2298;
parameter signed [16:0] coeff23 = -17'd817;
parameter signed [16:0] coeff24 = -17'd2736;
parameter signed [16:0] coeff25 = 17'd2322;
parameter signed [16:0] coeff26 = 17'd3075;
parameter signed [16:0] coeff27 = -17'd5348;
parameter signed [16:0] coeff28 = -17'd3292;
parameter signed [16:0] coeff29 = 17'd18414;
parameter signed [16:0] coeff30 = 17'd32768;

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
reg signed [11:0] delay28;
reg signed [11:0] delay29;
reg signed [11:0] delay30;
reg signed [11:0] delay31;
reg signed [11:0] delay32;
reg signed [11:0] delay33;
reg signed [11:0] delay34;
reg signed [11:0] delay35;
reg signed [11:0] delay36;
reg signed [11:0] delay37;
reg signed [11:0] delay38;
reg signed [11:0] delay39;
reg signed [11:0] delay40;
reg signed [11:0] delay41;
reg signed [11:0] delay42;
reg signed [11:0] delay43;
reg signed [11:0] delay44;
reg signed [11:0] delay45;
reg signed [11:0] delay46;
reg signed [11:0] delay47;
reg signed [11:0] delay48;
reg signed [11:0] delay49;
reg signed [11:0] delay50;
reg signed [11:0] delay51;
reg signed [11:0] delay52;
reg signed [11:0] delay53;
reg signed [11:0] delay54;
reg signed [11:0] delay55;
reg signed [11:0] delay56;
reg signed [11:0] delay57;
reg signed [11:0] delay58;
reg signed [11:0] delay59;
reg signed [11:0] delay60;
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
	delay28 <= delay27;
	delay29 <= delay28;
	delay30 <= delay29;
	delay31 <= delay30;
	delay32 <= delay31;
	delay33 <= delay32;
	delay34 <= delay33;
	delay35 <= delay34;
	delay36 <= delay35;
	delay37 <= delay36;
	delay38 <= delay37;
	delay39 <= delay38;
	delay40 <= delay39;
	delay41 <= delay40;
	delay42 <= delay41;
	delay43 <= delay42;
	delay44 <= delay43;
	delay45 <= delay44;
	delay46 <= delay45;
	delay47 <= delay46;
	delay48 <= delay47;
	delay49 <= delay48;
	delay50 <= delay49;
	delay51 <= delay50;
	delay52 <= delay51;
	delay53 <= delay52;
	delay54 <= delay53;
	delay55 <= delay54;
	delay56 <= delay55;
	delay57 <= delay56;
	delay58 <= delay57;
	delay59 <= delay58;
	delay60 <= delay59;
end

//wire signed [12:0] add0 = delay0 + delay60;
//wire signed [12:0] add1 = delay1 + delay59;
//wire signed [12:0] add2 = delay2 + delay58;
//wire signed [12:0] add3 = delay3 + delay57;
//wire signed [12:0] add4 = delay4 + delay56;
//wire signed [12:0] add5 = delay5 + delay55;
//wire signed [12:0] add6 = delay6 + delay54;
//wire signed [12:0] add7 = delay7 + delay53;
//wire signed [12:0] add8 = delay8 + delay52;
//wire signed [12:0] add9 = delay9 + delay51;
//wire signed [12:0] add10 = delay10 + delay50;
//wire signed [12:0] add11 = delay11 + delay49;
//wire signed [12:0] add12 = delay12 + delay48;
//wire signed [12:0] add13 = delay13 + delay47;
//wire signed [12:0] add14 = delay14 + delay46;
//wire signed [12:0] add15 = delay15 + delay45;
//wire signed [12:0] add16 = delay16 + delay44;
//wire signed [12:0] add17 = delay17 + delay43;
//wire signed [12:0] add18 = delay18 + delay42;
//wire signed [12:0] add19 = delay19 + delay41;
//wire signed [12:0] add20 = delay20 + delay40;
//wire signed [12:0] add21 = delay21 + delay39;
//wire signed [12:0] add22 = delay22 + delay38;
//wire signed [12:0] add23 = delay23 + delay37;
//wire signed [12:0] add24 = delay24 + delay36;
//wire signed [12:0] add25 = delay25 + delay35;
//wire signed [12:0] add26 = delay26 + delay34;
//wire signed [12:0] add27 = delay27 + delay33;
//wire signed [12:0] add28 = delay28 + delay32;
//wire signed [12:0] add29 = delay29 + delay31;
//wire signed [12:0] add30 = {delay30[11], delay30};

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
reg signed [12:0] add14;
reg signed [12:0] add15;
reg signed [12:0] add16;
reg signed [12:0] add17;
reg signed [12:0] add18;
reg signed [12:0] add19;
reg signed [12:0] add20;
reg signed [12:0] add21;
reg signed [12:0] add22;
reg signed [12:0] add23;
reg signed [12:0] add24;
reg signed [12:0] add25;
reg signed [12:0] add26;
reg signed [12:0] add27;
reg signed [12:0] add28;
reg signed [12:0] add29;
reg signed [12:0] add30;
always @(posedge clk)
begin
	add0 <= delay0 + delay60;
end
always @(posedge clk)
begin
	add1 <= delay1 + delay59;
end
always @(posedge clk)
begin
	add2 <= delay2 + delay58;
end
always @(posedge clk)
begin
	add3 <= delay3 + delay57;
end
always @(posedge clk)
begin
	add4 <= delay4 + delay56;
end
always @(posedge clk)
begin
	add5 <= delay5 + delay55;
end
always @(posedge clk)
begin
	add6 <= delay6 + delay54;
end
always @(posedge clk)
begin
	add7 <= delay7 + delay53;
end
always @(posedge clk)
begin
	add8 <= delay8 + delay52;
end
always @(posedge clk)
begin
	add9 <= delay9 + delay51;
end
always @(posedge clk)
begin
	add10 <= delay10 + delay50;
end
always @(posedge clk)
begin
	add11 <= delay11 + delay49;
end
always @(posedge clk)
begin
	add12 <= delay12 + delay48;
end
always @(posedge clk)
begin
	add13 <= delay13 + delay47;
end
always @(posedge clk)
begin
	add14 <= delay14 + delay46;
end
always @(posedge clk)
begin
	add15 <= delay15 + delay45;
end
always @(posedge clk)
begin
	add16 <= delay16 + delay44;
end
always @(posedge clk)
begin
	add17 <= delay17 + delay43;
end
always @(posedge clk)
begin
	add18 <= delay18 + delay42;
end
always @(posedge clk)
begin
	add19 <= delay19 + delay41;
end
always @(posedge clk)
begin
	add20 <= delay20 + delay40;
end
always @(posedge clk)
begin
	add21 <= delay21 + delay39;
end
always @(posedge clk)
begin
	add22 <= delay22 + delay38;
end
always @(posedge clk)
begin
	add23 <= delay23 + delay37;
end
always @(posedge clk)
begin
	add24 <= delay24 + delay36;
end
always @(posedge clk)
begin
	add25 <= delay25 + delay35;
end
always @(posedge clk)
begin
	add26 <= delay26 + delay34;
end
always @(posedge clk)
begin
	add27 <= delay27 + delay33;
end
always @(posedge clk)
begin
	add28 <= delay28 + delay32;
end
always @(posedge clk)
begin
	add29 <= delay29 + delay31;
end
always @(posedge clk)
begin
	add30 <= {delay30[11], delay30};
end



//-----------------------------------begin lut table-----------------------------------//
wire [5:0] lut_addr0_0 = {add5[0],add4[0],add3[0],add2[0],add1[0],add0[0]};
reg  [11:0] lut0_out0, lut0_0;
wire [5:0] lut_addr0_1 = {add11[0],add10[0],add9[0],add8[0],add7[0],add6[0]};
reg  [11:0] lut0_out1, lut0_1;
wire [5:0] lut_addr0_2 = {add17[0],add16[0],add15[0],add14[0],add13[0],add12[0]};
reg  [12:0] lut0_out2, lut0_2;
wire [5:0] lut_addr0_3 = {add23[0],add22[0],add21[0],add20[0],add19[0],add18[0]};
reg  [13:0] lut0_out3, lut0_3;
wire [5:0] lut_addr0_4 = {add29[0],add28[0],add27[0],add26[0],add25[0],add24[0]};
reg  [15:0] lut0_out4, lut0_4;
wire [0:0] lut_addr0_5 = {add30[0]};
reg  [16:0] lut0_out5, lut0_5;
wire [5:0] lut_addr1_0 = {add5[1],add4[1],add3[1],add2[1],add1[1],add0[1]};
reg  [11:0] lut1_out0, lut1_0;
wire [5:0] lut_addr1_1 = {add11[1],add10[1],add9[1],add8[1],add7[1],add6[1]};
reg  [11:0] lut1_out1, lut1_1;
wire [5:0] lut_addr1_2 = {add17[1],add16[1],add15[1],add14[1],add13[1],add12[1]};
reg  [12:0] lut1_out2, lut1_2;
wire [5:0] lut_addr1_3 = {add23[1],add22[1],add21[1],add20[1],add19[1],add18[1]};
reg  [13:0] lut1_out3, lut1_3;
wire [5:0] lut_addr1_4 = {add29[1],add28[1],add27[1],add26[1],add25[1],add24[1]};
reg  [15:0] lut1_out4, lut1_4;
wire [0:0] lut_addr1_5 = {add30[1]};
reg  [16:0] lut1_out5, lut1_5;
wire [5:0] lut_addr2_0 = {add5[2],add4[2],add3[2],add2[2],add1[2],add0[2]};
reg  [11:0] lut2_out0, lut2_0;
wire [5:0] lut_addr2_1 = {add11[2],add10[2],add9[2],add8[2],add7[2],add6[2]};
reg  [11:0] lut2_out1, lut2_1;
wire [5:0] lut_addr2_2 = {add17[2],add16[2],add15[2],add14[2],add13[2],add12[2]};
reg  [12:0] lut2_out2, lut2_2;
wire [5:0] lut_addr2_3 = {add23[2],add22[2],add21[2],add20[2],add19[2],add18[2]};
reg  [13:0] lut2_out3, lut2_3;
wire [5:0] lut_addr2_4 = {add29[2],add28[2],add27[2],add26[2],add25[2],add24[2]};
reg  [15:0] lut2_out4, lut2_4;
wire [0:0] lut_addr2_5 = {add30[2]};
reg  [16:0] lut2_out5, lut2_5;
wire [5:0] lut_addr3_0 = {add5[3],add4[3],add3[3],add2[3],add1[3],add0[3]};
reg  [11:0] lut3_out0, lut3_0;
wire [5:0] lut_addr3_1 = {add11[3],add10[3],add9[3],add8[3],add7[3],add6[3]};
reg  [11:0] lut3_out1, lut3_1;
wire [5:0] lut_addr3_2 = {add17[3],add16[3],add15[3],add14[3],add13[3],add12[3]};
reg  [12:0] lut3_out2, lut3_2;
wire [5:0] lut_addr3_3 = {add23[3],add22[3],add21[3],add20[3],add19[3],add18[3]};
reg  [13:0] lut3_out3, lut3_3;
wire [5:0] lut_addr3_4 = {add29[3],add28[3],add27[3],add26[3],add25[3],add24[3]};
reg  [15:0] lut3_out4, lut3_4;
wire [0:0] lut_addr3_5 = {add30[3]};
reg  [16:0] lut3_out5, lut3_5;
wire [5:0] lut_addr4_0 = {add5[4],add4[4],add3[4],add2[4],add1[4],add0[4]};
reg  [11:0] lut4_out0, lut4_0;
wire [5:0] lut_addr4_1 = {add11[4],add10[4],add9[4],add8[4],add7[4],add6[4]};
reg  [11:0] lut4_out1, lut4_1;
wire [5:0] lut_addr4_2 = {add17[4],add16[4],add15[4],add14[4],add13[4],add12[4]};
reg  [12:0] lut4_out2, lut4_2;
wire [5:0] lut_addr4_3 = {add23[4],add22[4],add21[4],add20[4],add19[4],add18[4]};
reg  [13:0] lut4_out3, lut4_3;
wire [5:0] lut_addr4_4 = {add29[4],add28[4],add27[4],add26[4],add25[4],add24[4]};
reg  [15:0] lut4_out4, lut4_4;
wire [0:0] lut_addr4_5 = {add30[4]};
reg  [16:0] lut4_out5, lut4_5;
wire [5:0] lut_addr5_0 = {add5[5],add4[5],add3[5],add2[5],add1[5],add0[5]};
reg  [11:0] lut5_out0, lut5_0;
wire [5:0] lut_addr5_1 = {add11[5],add10[5],add9[5],add8[5],add7[5],add6[5]};
reg  [11:0] lut5_out1, lut5_1;
wire [5:0] lut_addr5_2 = {add17[5],add16[5],add15[5],add14[5],add13[5],add12[5]};
reg  [12:0] lut5_out2, lut5_2;
wire [5:0] lut_addr5_3 = {add23[5],add22[5],add21[5],add20[5],add19[5],add18[5]};
reg  [13:0] lut5_out3, lut5_3;
wire [5:0] lut_addr5_4 = {add29[5],add28[5],add27[5],add26[5],add25[5],add24[5]};
reg  [15:0] lut5_out4, lut5_4;
wire [0:0] lut_addr5_5 = {add30[5]};
reg  [16:0] lut5_out5, lut5_5;
wire [5:0] lut_addr6_0 = {add5[6],add4[6],add3[6],add2[6],add1[6],add0[6]};
reg  [11:0] lut6_out0, lut6_0;
wire [5:0] lut_addr6_1 = {add11[6],add10[6],add9[6],add8[6],add7[6],add6[6]};
reg  [11:0] lut6_out1, lut6_1;
wire [5:0] lut_addr6_2 = {add17[6],add16[6],add15[6],add14[6],add13[6],add12[6]};
reg  [12:0] lut6_out2, lut6_2;
wire [5:0] lut_addr6_3 = {add23[6],add22[6],add21[6],add20[6],add19[6],add18[6]};
reg  [13:0] lut6_out3, lut6_3;
wire [5:0] lut_addr6_4 = {add29[6],add28[6],add27[6],add26[6],add25[6],add24[6]};
reg  [15:0] lut6_out4, lut6_4;
wire [0:0] lut_addr6_5 = {add30[6]};
reg  [16:0] lut6_out5, lut6_5;
wire [5:0] lut_addr7_0 = {add5[7],add4[7],add3[7],add2[7],add1[7],add0[7]};
reg  [11:0] lut7_out0, lut7_0;
wire [5:0] lut_addr7_1 = {add11[7],add10[7],add9[7],add8[7],add7[7],add6[7]};
reg  [11:0] lut7_out1, lut7_1;
wire [5:0] lut_addr7_2 = {add17[7],add16[7],add15[7],add14[7],add13[7],add12[7]};
reg  [12:0] lut7_out2, lut7_2;
wire [5:0] lut_addr7_3 = {add23[7],add22[7],add21[7],add20[7],add19[7],add18[7]};
reg  [13:0] lut7_out3, lut7_3;
wire [5:0] lut_addr7_4 = {add29[7],add28[7],add27[7],add26[7],add25[7],add24[7]};
reg  [15:0] lut7_out4, lut7_4;
wire [0:0] lut_addr7_5 = {add30[7]};
reg  [16:0] lut7_out5, lut7_5;
wire [5:0] lut_addr8_0 = {add5[8],add4[8],add3[8],add2[8],add1[8],add0[8]};
reg  [11:0] lut8_out0, lut8_0;
wire [5:0] lut_addr8_1 = {add11[8],add10[8],add9[8],add8[8],add7[8],add6[8]};
reg  [11:0] lut8_out1, lut8_1;
wire [5:0] lut_addr8_2 = {add17[8],add16[8],add15[8],add14[8],add13[8],add12[8]};
reg  [12:0] lut8_out2, lut8_2;
wire [5:0] lut_addr8_3 = {add23[8],add22[8],add21[8],add20[8],add19[8],add18[8]};
reg  [13:0] lut8_out3, lut8_3;
wire [5:0] lut_addr8_4 = {add29[8],add28[8],add27[8],add26[8],add25[8],add24[8]};
reg  [15:0] lut8_out4, lut8_4;
wire [0:0] lut_addr8_5 = {add30[8]};
reg  [16:0] lut8_out5, lut8_5;
wire [5:0] lut_addr9_0 = {add5[9],add4[9],add3[9],add2[9],add1[9],add0[9]};
reg  [11:0] lut9_out0, lut9_0;
wire [5:0] lut_addr9_1 = {add11[9],add10[9],add9[9],add8[9],add7[9],add6[9]};
reg  [11:0] lut9_out1, lut9_1;
wire [5:0] lut_addr9_2 = {add17[9],add16[9],add15[9],add14[9],add13[9],add12[9]};
reg  [12:0] lut9_out2, lut9_2;
wire [5:0] lut_addr9_3 = {add23[9],add22[9],add21[9],add20[9],add19[9],add18[9]};
reg  [13:0] lut9_out3, lut9_3;
wire [5:0] lut_addr9_4 = {add29[9],add28[9],add27[9],add26[9],add25[9],add24[9]};
reg  [15:0] lut9_out4, lut9_4;
wire [0:0] lut_addr9_5 = {add30[9]};
reg  [16:0] lut9_out5, lut9_5;
wire [5:0] lut_addr10_0 = {add5[10],add4[10],add3[10],add2[10],add1[10],add0[10]};
reg  [11:0] lut10_out0, lut10_0;
wire [5:0] lut_addr10_1 = {add11[10],add10[10],add9[10],add8[10],add7[10],add6[10]};
reg  [11:0] lut10_out1, lut10_1;
wire [5:0] lut_addr10_2 = {add17[10],add16[10],add15[10],add14[10],add13[10],add12[10]};
reg  [12:0] lut10_out2, lut10_2;
wire [5:0] lut_addr10_3 = {add23[10],add22[10],add21[10],add20[10],add19[10],add18[10]};
reg  [13:0] lut10_out3, lut10_3;
wire [5:0] lut_addr10_4 = {add29[10],add28[10],add27[10],add26[10],add25[10],add24[10]};
reg  [15:0] lut10_out4, lut10_4;
wire [0:0] lut_addr10_5 = {add30[10]};
reg  [16:0] lut10_out5, lut10_5;
wire [5:0] lut_addr11_0 = {add5[11],add4[11],add3[11],add2[11],add1[11],add0[11]};
reg  [11:0] lut11_out0, lut11_0;
wire [5:0] lut_addr11_1 = {add11[11],add10[11],add9[11],add8[11],add7[11],add6[11]};
reg  [11:0] lut11_out1, lut11_1;
wire [5:0] lut_addr11_2 = {add17[11],add16[11],add15[11],add14[11],add13[11],add12[11]};
reg  [12:0] lut11_out2, lut11_2;
wire [5:0] lut_addr11_3 = {add23[11],add22[11],add21[11],add20[11],add19[11],add18[11]};
reg  [13:0] lut11_out3, lut11_3;
wire [5:0] lut_addr11_4 = {add29[11],add28[11],add27[11],add26[11],add25[11],add24[11]};
reg  [15:0] lut11_out4, lut11_4;
wire [0:0] lut_addr11_5 = {add30[11]};
reg  [16:0] lut11_out5, lut11_5;
wire [5:0] lut_addr12_0 = {add5[12],add4[12],add3[12],add2[12],add1[12],add0[12]};
reg  [11:0] lut12_out0, lut12_0;
wire [5:0] lut_addr12_1 = {add11[12],add10[12],add9[12],add8[12],add7[12],add6[12]};
reg  [11:0] lut12_out1, lut12_1;
wire [5:0] lut_addr12_2 = {add17[12],add16[12],add15[12],add14[12],add13[12],add12[12]};
reg  [12:0] lut12_out2, lut12_2;
wire [5:0] lut_addr12_3 = {add23[12],add22[12],add21[12],add20[12],add19[12],add18[12]};
reg  [13:0] lut12_out3, lut12_3;
wire [5:0] lut_addr12_4 = {add29[12],add28[12],add27[12],add26[12],add25[12],add24[12]};
reg  [15:0] lut12_out4, lut12_4;
wire [0:0] lut_addr12_5 = {add30[12]};
reg  [16:0] lut12_out5, lut12_5;
always @(lut_addr0_0)
begin
	case(lut_addr0_0)
	6'd0 : lut0_out0 = (0);
	6'd1 : lut0_out0 = (coeff0);
	6'd2 : lut0_out0 = (coeff1);
	6'd3 : lut0_out0 = (coeff0+coeff1);
	6'd4 : lut0_out0 = (coeff2);
	6'd5 : lut0_out0 = (coeff0+coeff2);
	6'd6 : lut0_out0 = (coeff1+coeff2);
	6'd7 : lut0_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut0_out0 = (coeff3);
	6'd9 : lut0_out0 = (coeff0+coeff3);
	6'd10 : lut0_out0 = (coeff1+coeff3);
	6'd11 : lut0_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut0_out0 = (coeff2+coeff3);
	6'd13 : lut0_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut0_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut0_out0 = (coeff4);
	6'd17 : lut0_out0 = (coeff0+coeff4);
	6'd18 : lut0_out0 = (coeff1+coeff4);
	6'd19 : lut0_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut0_out0 = (coeff2+coeff4);
	6'd21 : lut0_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut0_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut0_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut0_out0 = (coeff3+coeff4);
	6'd25 : lut0_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut0_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut0_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut0_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut0_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut0_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut0_out0 = (coeff5);
	6'd33 : lut0_out0 = (coeff0+coeff5);
	6'd34 : lut0_out0 = (coeff1+coeff5);
	6'd35 : lut0_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut0_out0 = (coeff2+coeff5);
	6'd37 : lut0_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut0_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut0_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut0_out0 = (coeff3+coeff5);
	6'd41 : lut0_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut0_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut0_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut0_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut0_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut0_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut0_out0 = (coeff4+coeff5);
	6'd49 : lut0_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut0_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut0_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut0_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut0_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut0_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut0_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut0_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut0_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut0_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut0_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut0_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut0_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut0_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut0_out0 = 0;
	endcase
end
always @(lut_addr0_1)
begin
	case(lut_addr0_1)
	6'd0 : lut0_out1 = (0);
	6'd1 : lut0_out1 = (coeff6);
	6'd2 : lut0_out1 = (coeff7);
	6'd3 : lut0_out1 = (coeff6+coeff7);
	6'd4 : lut0_out1 = (coeff8);
	6'd5 : lut0_out1 = (coeff6+coeff8);
	6'd6 : lut0_out1 = (coeff7+coeff8);
	6'd7 : lut0_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut0_out1 = (coeff9);
	6'd9 : lut0_out1 = (coeff6+coeff9);
	6'd10 : lut0_out1 = (coeff7+coeff9);
	6'd11 : lut0_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut0_out1 = (coeff8+coeff9);
	6'd13 : lut0_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut0_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut0_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut0_out1 = (coeff10);
	6'd17 : lut0_out1 = (coeff6+coeff10);
	6'd18 : lut0_out1 = (coeff7+coeff10);
	6'd19 : lut0_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut0_out1 = (coeff8+coeff10);
	6'd21 : lut0_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut0_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut0_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut0_out1 = (coeff9+coeff10);
	6'd25 : lut0_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut0_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut0_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut0_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut0_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut0_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut0_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut0_out1 = (coeff11);
	6'd33 : lut0_out1 = (coeff6+coeff11);
	6'd34 : lut0_out1 = (coeff7+coeff11);
	6'd35 : lut0_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut0_out1 = (coeff8+coeff11);
	6'd37 : lut0_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut0_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut0_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut0_out1 = (coeff9+coeff11);
	6'd41 : lut0_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut0_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut0_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut0_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut0_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut0_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut0_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut0_out1 = (coeff10+coeff11);
	6'd49 : lut0_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut0_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut0_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut0_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut0_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut0_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut0_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut0_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut0_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut0_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut0_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut0_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut0_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut0_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut0_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut0_out1 = 0;
	endcase
end
always @(lut_addr0_2)
begin
	case(lut_addr0_2)
	6'd0 : lut0_out2 = (0);
	6'd1 : lut0_out2 = (coeff12);
	6'd2 : lut0_out2 = (coeff13);
	6'd3 : lut0_out2 = (coeff12+coeff13);
	6'd4 : lut0_out2 = (coeff14);
	6'd5 : lut0_out2 = (coeff12+coeff14);
	6'd6 : lut0_out2 = (coeff13+coeff14);
	6'd7 : lut0_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut0_out2 = (coeff15);
	6'd9 : lut0_out2 = (coeff12+coeff15);
	6'd10 : lut0_out2 = (coeff13+coeff15);
	6'd11 : lut0_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut0_out2 = (coeff14+coeff15);
	6'd13 : lut0_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut0_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut0_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut0_out2 = (coeff16);
	6'd17 : lut0_out2 = (coeff12+coeff16);
	6'd18 : lut0_out2 = (coeff13+coeff16);
	6'd19 : lut0_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut0_out2 = (coeff14+coeff16);
	6'd21 : lut0_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut0_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut0_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut0_out2 = (coeff15+coeff16);
	6'd25 : lut0_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut0_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut0_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut0_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut0_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut0_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut0_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut0_out2 = (coeff17);
	6'd33 : lut0_out2 = (coeff12+coeff17);
	6'd34 : lut0_out2 = (coeff13+coeff17);
	6'd35 : lut0_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut0_out2 = (coeff14+coeff17);
	6'd37 : lut0_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut0_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut0_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut0_out2 = (coeff15+coeff17);
	6'd41 : lut0_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut0_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut0_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut0_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut0_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut0_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut0_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut0_out2 = (coeff16+coeff17);
	6'd49 : lut0_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut0_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut0_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut0_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut0_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut0_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut0_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut0_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut0_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut0_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut0_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut0_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut0_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut0_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut0_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut0_out2 = 0;
	endcase
end
always @(lut_addr0_3)
begin
	case(lut_addr0_3)
	6'd0 : lut0_out3 = (0);
	6'd1 : lut0_out3 = (coeff18);
	6'd2 : lut0_out3 = (coeff19);
	6'd3 : lut0_out3 = (coeff18+coeff19);
	6'd4 : lut0_out3 = (coeff20);
	6'd5 : lut0_out3 = (coeff18+coeff20);
	6'd6 : lut0_out3 = (coeff19+coeff20);
	6'd7 : lut0_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut0_out3 = (coeff21);
	6'd9 : lut0_out3 = (coeff18+coeff21);
	6'd10 : lut0_out3 = (coeff19+coeff21);
	6'd11 : lut0_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut0_out3 = (coeff20+coeff21);
	6'd13 : lut0_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut0_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut0_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut0_out3 = (coeff22);
	6'd17 : lut0_out3 = (coeff18+coeff22);
	6'd18 : lut0_out3 = (coeff19+coeff22);
	6'd19 : lut0_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut0_out3 = (coeff20+coeff22);
	6'd21 : lut0_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut0_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut0_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut0_out3 = (coeff21+coeff22);
	6'd25 : lut0_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut0_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut0_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut0_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut0_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut0_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut0_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut0_out3 = (coeff23);
	6'd33 : lut0_out3 = (coeff18+coeff23);
	6'd34 : lut0_out3 = (coeff19+coeff23);
	6'd35 : lut0_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut0_out3 = (coeff20+coeff23);
	6'd37 : lut0_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut0_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut0_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut0_out3 = (coeff21+coeff23);
	6'd41 : lut0_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut0_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut0_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut0_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut0_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut0_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut0_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut0_out3 = (coeff22+coeff23);
	6'd49 : lut0_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut0_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut0_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut0_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut0_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut0_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut0_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut0_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut0_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut0_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut0_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut0_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut0_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut0_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut0_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut0_out3 = 0;
	endcase
end
always @(lut_addr0_4)
begin
	case(lut_addr0_4)
	6'd0 : lut0_out4 = (0);
	6'd1 : lut0_out4 = (coeff24);
	6'd2 : lut0_out4 = (coeff25);
	6'd3 : lut0_out4 = (coeff24+coeff25);
	6'd4 : lut0_out4 = (coeff26);
	6'd5 : lut0_out4 = (coeff24+coeff26);
	6'd6 : lut0_out4 = (coeff25+coeff26);
	6'd7 : lut0_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut0_out4 = (coeff27);
	6'd9 : lut0_out4 = (coeff24+coeff27);
	6'd10 : lut0_out4 = (coeff25+coeff27);
	6'd11 : lut0_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut0_out4 = (coeff26+coeff27);
	6'd13 : lut0_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut0_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut0_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut0_out4 = (coeff28);
	6'd17 : lut0_out4 = (coeff24+coeff28);
	6'd18 : lut0_out4 = (coeff25+coeff28);
	6'd19 : lut0_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut0_out4 = (coeff26+coeff28);
	6'd21 : lut0_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut0_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut0_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut0_out4 = (coeff27+coeff28);
	6'd25 : lut0_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut0_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut0_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut0_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut0_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut0_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut0_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut0_out4 = (coeff29);
	6'd33 : lut0_out4 = (coeff24+coeff29);
	6'd34 : lut0_out4 = (coeff25+coeff29);
	6'd35 : lut0_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut0_out4 = (coeff26+coeff29);
	6'd37 : lut0_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut0_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut0_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut0_out4 = (coeff27+coeff29);
	6'd41 : lut0_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut0_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut0_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut0_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut0_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut0_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut0_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut0_out4 = (coeff28+coeff29);
	6'd49 : lut0_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut0_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut0_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut0_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut0_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut0_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut0_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut0_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut0_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut0_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut0_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut0_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut0_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut0_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut0_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut0_out4 = 0;
	endcase
end
always @(lut_addr0_5)
begin
	case(lut_addr0_5)
	1'd0 : lut0_out5 = (0);
	1'd1 : lut0_out5 = (coeff30);
	default :lut0_out5 = 0;
	endcase
end
always @(lut_addr1_0)
begin
	case(lut_addr1_0)
	6'd0 : lut1_out0 = (0);
	6'd1 : lut1_out0 = (coeff0);
	6'd2 : lut1_out0 = (coeff1);
	6'd3 : lut1_out0 = (coeff0+coeff1);
	6'd4 : lut1_out0 = (coeff2);
	6'd5 : lut1_out0 = (coeff0+coeff2);
	6'd6 : lut1_out0 = (coeff1+coeff2);
	6'd7 : lut1_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut1_out0 = (coeff3);
	6'd9 : lut1_out0 = (coeff0+coeff3);
	6'd10 : lut1_out0 = (coeff1+coeff3);
	6'd11 : lut1_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut1_out0 = (coeff2+coeff3);
	6'd13 : lut1_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut1_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut1_out0 = (coeff4);
	6'd17 : lut1_out0 = (coeff0+coeff4);
	6'd18 : lut1_out0 = (coeff1+coeff4);
	6'd19 : lut1_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut1_out0 = (coeff2+coeff4);
	6'd21 : lut1_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut1_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut1_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut1_out0 = (coeff3+coeff4);
	6'd25 : lut1_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut1_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut1_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut1_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut1_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut1_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut1_out0 = (coeff5);
	6'd33 : lut1_out0 = (coeff0+coeff5);
	6'd34 : lut1_out0 = (coeff1+coeff5);
	6'd35 : lut1_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut1_out0 = (coeff2+coeff5);
	6'd37 : lut1_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut1_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut1_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut1_out0 = (coeff3+coeff5);
	6'd41 : lut1_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut1_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut1_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut1_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut1_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut1_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut1_out0 = (coeff4+coeff5);
	6'd49 : lut1_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut1_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut1_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut1_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut1_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut1_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut1_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut1_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut1_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut1_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut1_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut1_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut1_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut1_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut1_out0 = 0;
	endcase
end
always @(lut_addr1_1)
begin
	case(lut_addr1_1)
	6'd0 : lut1_out1 = (0);
	6'd1 : lut1_out1 = (coeff6);
	6'd2 : lut1_out1 = (coeff7);
	6'd3 : lut1_out1 = (coeff6+coeff7);
	6'd4 : lut1_out1 = (coeff8);
	6'd5 : lut1_out1 = (coeff6+coeff8);
	6'd6 : lut1_out1 = (coeff7+coeff8);
	6'd7 : lut1_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut1_out1 = (coeff9);
	6'd9 : lut1_out1 = (coeff6+coeff9);
	6'd10 : lut1_out1 = (coeff7+coeff9);
	6'd11 : lut1_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut1_out1 = (coeff8+coeff9);
	6'd13 : lut1_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut1_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut1_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut1_out1 = (coeff10);
	6'd17 : lut1_out1 = (coeff6+coeff10);
	6'd18 : lut1_out1 = (coeff7+coeff10);
	6'd19 : lut1_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut1_out1 = (coeff8+coeff10);
	6'd21 : lut1_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut1_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut1_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut1_out1 = (coeff9+coeff10);
	6'd25 : lut1_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut1_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut1_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut1_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut1_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut1_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut1_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut1_out1 = (coeff11);
	6'd33 : lut1_out1 = (coeff6+coeff11);
	6'd34 : lut1_out1 = (coeff7+coeff11);
	6'd35 : lut1_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut1_out1 = (coeff8+coeff11);
	6'd37 : lut1_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut1_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut1_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut1_out1 = (coeff9+coeff11);
	6'd41 : lut1_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut1_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut1_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut1_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut1_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut1_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut1_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut1_out1 = (coeff10+coeff11);
	6'd49 : lut1_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut1_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut1_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut1_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut1_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut1_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut1_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut1_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut1_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut1_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut1_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut1_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut1_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut1_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut1_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut1_out1 = 0;
	endcase
end
always @(lut_addr1_2)
begin
	case(lut_addr1_2)
	6'd0 : lut1_out2 = (0);
	6'd1 : lut1_out2 = (coeff12);
	6'd2 : lut1_out2 = (coeff13);
	6'd3 : lut1_out2 = (coeff12+coeff13);
	6'd4 : lut1_out2 = (coeff14);
	6'd5 : lut1_out2 = (coeff12+coeff14);
	6'd6 : lut1_out2 = (coeff13+coeff14);
	6'd7 : lut1_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut1_out2 = (coeff15);
	6'd9 : lut1_out2 = (coeff12+coeff15);
	6'd10 : lut1_out2 = (coeff13+coeff15);
	6'd11 : lut1_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut1_out2 = (coeff14+coeff15);
	6'd13 : lut1_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut1_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut1_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut1_out2 = (coeff16);
	6'd17 : lut1_out2 = (coeff12+coeff16);
	6'd18 : lut1_out2 = (coeff13+coeff16);
	6'd19 : lut1_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut1_out2 = (coeff14+coeff16);
	6'd21 : lut1_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut1_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut1_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut1_out2 = (coeff15+coeff16);
	6'd25 : lut1_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut1_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut1_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut1_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut1_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut1_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut1_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut1_out2 = (coeff17);
	6'd33 : lut1_out2 = (coeff12+coeff17);
	6'd34 : lut1_out2 = (coeff13+coeff17);
	6'd35 : lut1_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut1_out2 = (coeff14+coeff17);
	6'd37 : lut1_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut1_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut1_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut1_out2 = (coeff15+coeff17);
	6'd41 : lut1_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut1_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut1_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut1_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut1_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut1_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut1_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut1_out2 = (coeff16+coeff17);
	6'd49 : lut1_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut1_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut1_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut1_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut1_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut1_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut1_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut1_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut1_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut1_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut1_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut1_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut1_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut1_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut1_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut1_out2 = 0;
	endcase
end
always @(lut_addr1_3)
begin
	case(lut_addr1_3)
	6'd0 : lut1_out3 = (0);
	6'd1 : lut1_out3 = (coeff18);
	6'd2 : lut1_out3 = (coeff19);
	6'd3 : lut1_out3 = (coeff18+coeff19);
	6'd4 : lut1_out3 = (coeff20);
	6'd5 : lut1_out3 = (coeff18+coeff20);
	6'd6 : lut1_out3 = (coeff19+coeff20);
	6'd7 : lut1_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut1_out3 = (coeff21);
	6'd9 : lut1_out3 = (coeff18+coeff21);
	6'd10 : lut1_out3 = (coeff19+coeff21);
	6'd11 : lut1_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut1_out3 = (coeff20+coeff21);
	6'd13 : lut1_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut1_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut1_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut1_out3 = (coeff22);
	6'd17 : lut1_out3 = (coeff18+coeff22);
	6'd18 : lut1_out3 = (coeff19+coeff22);
	6'd19 : lut1_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut1_out3 = (coeff20+coeff22);
	6'd21 : lut1_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut1_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut1_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut1_out3 = (coeff21+coeff22);
	6'd25 : lut1_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut1_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut1_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut1_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut1_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut1_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut1_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut1_out3 = (coeff23);
	6'd33 : lut1_out3 = (coeff18+coeff23);
	6'd34 : lut1_out3 = (coeff19+coeff23);
	6'd35 : lut1_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut1_out3 = (coeff20+coeff23);
	6'd37 : lut1_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut1_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut1_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut1_out3 = (coeff21+coeff23);
	6'd41 : lut1_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut1_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut1_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut1_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut1_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut1_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut1_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut1_out3 = (coeff22+coeff23);
	6'd49 : lut1_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut1_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut1_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut1_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut1_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut1_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut1_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut1_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut1_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut1_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut1_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut1_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut1_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut1_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut1_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut1_out3 = 0;
	endcase
end
always @(lut_addr1_4)
begin
	case(lut_addr1_4)
	6'd0 : lut1_out4 = (0);
	6'd1 : lut1_out4 = (coeff24);
	6'd2 : lut1_out4 = (coeff25);
	6'd3 : lut1_out4 = (coeff24+coeff25);
	6'd4 : lut1_out4 = (coeff26);
	6'd5 : lut1_out4 = (coeff24+coeff26);
	6'd6 : lut1_out4 = (coeff25+coeff26);
	6'd7 : lut1_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut1_out4 = (coeff27);
	6'd9 : lut1_out4 = (coeff24+coeff27);
	6'd10 : lut1_out4 = (coeff25+coeff27);
	6'd11 : lut1_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut1_out4 = (coeff26+coeff27);
	6'd13 : lut1_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut1_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut1_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut1_out4 = (coeff28);
	6'd17 : lut1_out4 = (coeff24+coeff28);
	6'd18 : lut1_out4 = (coeff25+coeff28);
	6'd19 : lut1_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut1_out4 = (coeff26+coeff28);
	6'd21 : lut1_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut1_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut1_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut1_out4 = (coeff27+coeff28);
	6'd25 : lut1_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut1_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut1_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut1_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut1_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut1_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut1_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut1_out4 = (coeff29);
	6'd33 : lut1_out4 = (coeff24+coeff29);
	6'd34 : lut1_out4 = (coeff25+coeff29);
	6'd35 : lut1_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut1_out4 = (coeff26+coeff29);
	6'd37 : lut1_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut1_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut1_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut1_out4 = (coeff27+coeff29);
	6'd41 : lut1_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut1_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut1_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut1_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut1_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut1_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut1_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut1_out4 = (coeff28+coeff29);
	6'd49 : lut1_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut1_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut1_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut1_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut1_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut1_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut1_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut1_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut1_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut1_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut1_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut1_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut1_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut1_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut1_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut1_out4 = 0;
	endcase
end
always @(lut_addr1_5)
begin
	case(lut_addr1_5)
	1'd0 : lut1_out5 = (0);
	1'd1 : lut1_out5 = (coeff30);
	default :lut1_out5 = 0;
	endcase
end
always @(lut_addr2_0)
begin
	case(lut_addr2_0)
	6'd0 : lut2_out0 = (0);
	6'd1 : lut2_out0 = (coeff0);
	6'd2 : lut2_out0 = (coeff1);
	6'd3 : lut2_out0 = (coeff0+coeff1);
	6'd4 : lut2_out0 = (coeff2);
	6'd5 : lut2_out0 = (coeff0+coeff2);
	6'd6 : lut2_out0 = (coeff1+coeff2);
	6'd7 : lut2_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut2_out0 = (coeff3);
	6'd9 : lut2_out0 = (coeff0+coeff3);
	6'd10 : lut2_out0 = (coeff1+coeff3);
	6'd11 : lut2_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut2_out0 = (coeff2+coeff3);
	6'd13 : lut2_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut2_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut2_out0 = (coeff4);
	6'd17 : lut2_out0 = (coeff0+coeff4);
	6'd18 : lut2_out0 = (coeff1+coeff4);
	6'd19 : lut2_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut2_out0 = (coeff2+coeff4);
	6'd21 : lut2_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut2_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut2_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut2_out0 = (coeff3+coeff4);
	6'd25 : lut2_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut2_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut2_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut2_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut2_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut2_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut2_out0 = (coeff5);
	6'd33 : lut2_out0 = (coeff0+coeff5);
	6'd34 : lut2_out0 = (coeff1+coeff5);
	6'd35 : lut2_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut2_out0 = (coeff2+coeff5);
	6'd37 : lut2_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut2_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut2_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut2_out0 = (coeff3+coeff5);
	6'd41 : lut2_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut2_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut2_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut2_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut2_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut2_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut2_out0 = (coeff4+coeff5);
	6'd49 : lut2_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut2_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut2_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut2_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut2_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut2_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut2_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut2_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut2_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut2_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut2_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut2_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut2_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut2_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut2_out0 = 0;
	endcase
end
always @(lut_addr2_1)
begin
	case(lut_addr2_1)
	6'd0 : lut2_out1 = (0);
	6'd1 : lut2_out1 = (coeff6);
	6'd2 : lut2_out1 = (coeff7);
	6'd3 : lut2_out1 = (coeff6+coeff7);
	6'd4 : lut2_out1 = (coeff8);
	6'd5 : lut2_out1 = (coeff6+coeff8);
	6'd6 : lut2_out1 = (coeff7+coeff8);
	6'd7 : lut2_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut2_out1 = (coeff9);
	6'd9 : lut2_out1 = (coeff6+coeff9);
	6'd10 : lut2_out1 = (coeff7+coeff9);
	6'd11 : lut2_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut2_out1 = (coeff8+coeff9);
	6'd13 : lut2_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut2_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut2_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut2_out1 = (coeff10);
	6'd17 : lut2_out1 = (coeff6+coeff10);
	6'd18 : lut2_out1 = (coeff7+coeff10);
	6'd19 : lut2_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut2_out1 = (coeff8+coeff10);
	6'd21 : lut2_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut2_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut2_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut2_out1 = (coeff9+coeff10);
	6'd25 : lut2_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut2_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut2_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut2_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut2_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut2_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut2_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut2_out1 = (coeff11);
	6'd33 : lut2_out1 = (coeff6+coeff11);
	6'd34 : lut2_out1 = (coeff7+coeff11);
	6'd35 : lut2_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut2_out1 = (coeff8+coeff11);
	6'd37 : lut2_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut2_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut2_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut2_out1 = (coeff9+coeff11);
	6'd41 : lut2_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut2_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut2_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut2_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut2_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut2_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut2_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut2_out1 = (coeff10+coeff11);
	6'd49 : lut2_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut2_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut2_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut2_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut2_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut2_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut2_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut2_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut2_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut2_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut2_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut2_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut2_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut2_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut2_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut2_out1 = 0;
	endcase
end
always @(lut_addr2_2)
begin
	case(lut_addr2_2)
	6'd0 : lut2_out2 = (0);
	6'd1 : lut2_out2 = (coeff12);
	6'd2 : lut2_out2 = (coeff13);
	6'd3 : lut2_out2 = (coeff12+coeff13);
	6'd4 : lut2_out2 = (coeff14);
	6'd5 : lut2_out2 = (coeff12+coeff14);
	6'd6 : lut2_out2 = (coeff13+coeff14);
	6'd7 : lut2_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut2_out2 = (coeff15);
	6'd9 : lut2_out2 = (coeff12+coeff15);
	6'd10 : lut2_out2 = (coeff13+coeff15);
	6'd11 : lut2_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut2_out2 = (coeff14+coeff15);
	6'd13 : lut2_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut2_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut2_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut2_out2 = (coeff16);
	6'd17 : lut2_out2 = (coeff12+coeff16);
	6'd18 : lut2_out2 = (coeff13+coeff16);
	6'd19 : lut2_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut2_out2 = (coeff14+coeff16);
	6'd21 : lut2_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut2_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut2_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut2_out2 = (coeff15+coeff16);
	6'd25 : lut2_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut2_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut2_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut2_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut2_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut2_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut2_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut2_out2 = (coeff17);
	6'd33 : lut2_out2 = (coeff12+coeff17);
	6'd34 : lut2_out2 = (coeff13+coeff17);
	6'd35 : lut2_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut2_out2 = (coeff14+coeff17);
	6'd37 : lut2_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut2_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut2_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut2_out2 = (coeff15+coeff17);
	6'd41 : lut2_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut2_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut2_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut2_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut2_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut2_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut2_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut2_out2 = (coeff16+coeff17);
	6'd49 : lut2_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut2_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut2_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut2_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut2_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut2_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut2_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut2_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut2_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut2_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut2_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut2_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut2_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut2_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut2_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut2_out2 = 0;
	endcase
end
always @(lut_addr2_3)
begin
	case(lut_addr2_3)
	6'd0 : lut2_out3 = (0);
	6'd1 : lut2_out3 = (coeff18);
	6'd2 : lut2_out3 = (coeff19);
	6'd3 : lut2_out3 = (coeff18+coeff19);
	6'd4 : lut2_out3 = (coeff20);
	6'd5 : lut2_out3 = (coeff18+coeff20);
	6'd6 : lut2_out3 = (coeff19+coeff20);
	6'd7 : lut2_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut2_out3 = (coeff21);
	6'd9 : lut2_out3 = (coeff18+coeff21);
	6'd10 : lut2_out3 = (coeff19+coeff21);
	6'd11 : lut2_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut2_out3 = (coeff20+coeff21);
	6'd13 : lut2_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut2_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut2_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut2_out3 = (coeff22);
	6'd17 : lut2_out3 = (coeff18+coeff22);
	6'd18 : lut2_out3 = (coeff19+coeff22);
	6'd19 : lut2_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut2_out3 = (coeff20+coeff22);
	6'd21 : lut2_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut2_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut2_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut2_out3 = (coeff21+coeff22);
	6'd25 : lut2_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut2_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut2_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut2_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut2_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut2_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut2_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut2_out3 = (coeff23);
	6'd33 : lut2_out3 = (coeff18+coeff23);
	6'd34 : lut2_out3 = (coeff19+coeff23);
	6'd35 : lut2_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut2_out3 = (coeff20+coeff23);
	6'd37 : lut2_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut2_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut2_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut2_out3 = (coeff21+coeff23);
	6'd41 : lut2_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut2_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut2_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut2_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut2_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut2_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut2_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut2_out3 = (coeff22+coeff23);
	6'd49 : lut2_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut2_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut2_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut2_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut2_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut2_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut2_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut2_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut2_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut2_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut2_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut2_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut2_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut2_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut2_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut2_out3 = 0;
	endcase
end
always @(lut_addr2_4)
begin
	case(lut_addr2_4)
	6'd0 : lut2_out4 = (0);
	6'd1 : lut2_out4 = (coeff24);
	6'd2 : lut2_out4 = (coeff25);
	6'd3 : lut2_out4 = (coeff24+coeff25);
	6'd4 : lut2_out4 = (coeff26);
	6'd5 : lut2_out4 = (coeff24+coeff26);
	6'd6 : lut2_out4 = (coeff25+coeff26);
	6'd7 : lut2_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut2_out4 = (coeff27);
	6'd9 : lut2_out4 = (coeff24+coeff27);
	6'd10 : lut2_out4 = (coeff25+coeff27);
	6'd11 : lut2_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut2_out4 = (coeff26+coeff27);
	6'd13 : lut2_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut2_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut2_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut2_out4 = (coeff28);
	6'd17 : lut2_out4 = (coeff24+coeff28);
	6'd18 : lut2_out4 = (coeff25+coeff28);
	6'd19 : lut2_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut2_out4 = (coeff26+coeff28);
	6'd21 : lut2_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut2_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut2_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut2_out4 = (coeff27+coeff28);
	6'd25 : lut2_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut2_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut2_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut2_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut2_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut2_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut2_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut2_out4 = (coeff29);
	6'd33 : lut2_out4 = (coeff24+coeff29);
	6'd34 : lut2_out4 = (coeff25+coeff29);
	6'd35 : lut2_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut2_out4 = (coeff26+coeff29);
	6'd37 : lut2_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut2_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut2_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut2_out4 = (coeff27+coeff29);
	6'd41 : lut2_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut2_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut2_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut2_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut2_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut2_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut2_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut2_out4 = (coeff28+coeff29);
	6'd49 : lut2_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut2_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut2_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut2_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut2_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut2_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut2_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut2_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut2_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut2_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut2_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut2_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut2_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut2_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut2_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut2_out4 = 0;
	endcase
end
always @(lut_addr2_5)
begin
	case(lut_addr2_5)
	1'd0 : lut2_out5 = (0);
	1'd1 : lut2_out5 = (coeff30);
	default :lut2_out5 = 0;
	endcase
end
always @(lut_addr3_0)
begin
	case(lut_addr3_0)
	6'd0 : lut3_out0 = (0);
	6'd1 : lut3_out0 = (coeff0);
	6'd2 : lut3_out0 = (coeff1);
	6'd3 : lut3_out0 = (coeff0+coeff1);
	6'd4 : lut3_out0 = (coeff2);
	6'd5 : lut3_out0 = (coeff0+coeff2);
	6'd6 : lut3_out0 = (coeff1+coeff2);
	6'd7 : lut3_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut3_out0 = (coeff3);
	6'd9 : lut3_out0 = (coeff0+coeff3);
	6'd10 : lut3_out0 = (coeff1+coeff3);
	6'd11 : lut3_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut3_out0 = (coeff2+coeff3);
	6'd13 : lut3_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut3_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut3_out0 = (coeff4);
	6'd17 : lut3_out0 = (coeff0+coeff4);
	6'd18 : lut3_out0 = (coeff1+coeff4);
	6'd19 : lut3_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut3_out0 = (coeff2+coeff4);
	6'd21 : lut3_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut3_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut3_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut3_out0 = (coeff3+coeff4);
	6'd25 : lut3_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut3_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut3_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut3_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut3_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut3_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut3_out0 = (coeff5);
	6'd33 : lut3_out0 = (coeff0+coeff5);
	6'd34 : lut3_out0 = (coeff1+coeff5);
	6'd35 : lut3_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut3_out0 = (coeff2+coeff5);
	6'd37 : lut3_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut3_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut3_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut3_out0 = (coeff3+coeff5);
	6'd41 : lut3_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut3_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut3_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut3_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut3_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut3_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut3_out0 = (coeff4+coeff5);
	6'd49 : lut3_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut3_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut3_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut3_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut3_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut3_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut3_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut3_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut3_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut3_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut3_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut3_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut3_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut3_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut3_out0 = 0;
	endcase
end
always @(lut_addr3_1)
begin
	case(lut_addr3_1)
	6'd0 : lut3_out1 = (0);
	6'd1 : lut3_out1 = (coeff6);
	6'd2 : lut3_out1 = (coeff7);
	6'd3 : lut3_out1 = (coeff6+coeff7);
	6'd4 : lut3_out1 = (coeff8);
	6'd5 : lut3_out1 = (coeff6+coeff8);
	6'd6 : lut3_out1 = (coeff7+coeff8);
	6'd7 : lut3_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut3_out1 = (coeff9);
	6'd9 : lut3_out1 = (coeff6+coeff9);
	6'd10 : lut3_out1 = (coeff7+coeff9);
	6'd11 : lut3_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut3_out1 = (coeff8+coeff9);
	6'd13 : lut3_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut3_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut3_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut3_out1 = (coeff10);
	6'd17 : lut3_out1 = (coeff6+coeff10);
	6'd18 : lut3_out1 = (coeff7+coeff10);
	6'd19 : lut3_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut3_out1 = (coeff8+coeff10);
	6'd21 : lut3_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut3_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut3_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut3_out1 = (coeff9+coeff10);
	6'd25 : lut3_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut3_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut3_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut3_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut3_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut3_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut3_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut3_out1 = (coeff11);
	6'd33 : lut3_out1 = (coeff6+coeff11);
	6'd34 : lut3_out1 = (coeff7+coeff11);
	6'd35 : lut3_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut3_out1 = (coeff8+coeff11);
	6'd37 : lut3_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut3_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut3_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut3_out1 = (coeff9+coeff11);
	6'd41 : lut3_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut3_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut3_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut3_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut3_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut3_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut3_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut3_out1 = (coeff10+coeff11);
	6'd49 : lut3_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut3_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut3_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut3_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut3_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut3_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut3_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut3_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut3_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut3_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut3_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut3_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut3_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut3_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut3_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut3_out1 = 0;
	endcase
end
always @(lut_addr3_2)
begin
	case(lut_addr3_2)
	6'd0 : lut3_out2 = (0);
	6'd1 : lut3_out2 = (coeff12);
	6'd2 : lut3_out2 = (coeff13);
	6'd3 : lut3_out2 = (coeff12+coeff13);
	6'd4 : lut3_out2 = (coeff14);
	6'd5 : lut3_out2 = (coeff12+coeff14);
	6'd6 : lut3_out2 = (coeff13+coeff14);
	6'd7 : lut3_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut3_out2 = (coeff15);
	6'd9 : lut3_out2 = (coeff12+coeff15);
	6'd10 : lut3_out2 = (coeff13+coeff15);
	6'd11 : lut3_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut3_out2 = (coeff14+coeff15);
	6'd13 : lut3_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut3_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut3_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut3_out2 = (coeff16);
	6'd17 : lut3_out2 = (coeff12+coeff16);
	6'd18 : lut3_out2 = (coeff13+coeff16);
	6'd19 : lut3_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut3_out2 = (coeff14+coeff16);
	6'd21 : lut3_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut3_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut3_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut3_out2 = (coeff15+coeff16);
	6'd25 : lut3_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut3_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut3_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut3_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut3_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut3_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut3_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut3_out2 = (coeff17);
	6'd33 : lut3_out2 = (coeff12+coeff17);
	6'd34 : lut3_out2 = (coeff13+coeff17);
	6'd35 : lut3_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut3_out2 = (coeff14+coeff17);
	6'd37 : lut3_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut3_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut3_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut3_out2 = (coeff15+coeff17);
	6'd41 : lut3_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut3_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut3_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut3_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut3_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut3_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut3_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut3_out2 = (coeff16+coeff17);
	6'd49 : lut3_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut3_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut3_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut3_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut3_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut3_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut3_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut3_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut3_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut3_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut3_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut3_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut3_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut3_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut3_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut3_out2 = 0;
	endcase
end
always @(lut_addr3_3)
begin
	case(lut_addr3_3)
	6'd0 : lut3_out3 = (0);
	6'd1 : lut3_out3 = (coeff18);
	6'd2 : lut3_out3 = (coeff19);
	6'd3 : lut3_out3 = (coeff18+coeff19);
	6'd4 : lut3_out3 = (coeff20);
	6'd5 : lut3_out3 = (coeff18+coeff20);
	6'd6 : lut3_out3 = (coeff19+coeff20);
	6'd7 : lut3_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut3_out3 = (coeff21);
	6'd9 : lut3_out3 = (coeff18+coeff21);
	6'd10 : lut3_out3 = (coeff19+coeff21);
	6'd11 : lut3_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut3_out3 = (coeff20+coeff21);
	6'd13 : lut3_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut3_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut3_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut3_out3 = (coeff22);
	6'd17 : lut3_out3 = (coeff18+coeff22);
	6'd18 : lut3_out3 = (coeff19+coeff22);
	6'd19 : lut3_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut3_out3 = (coeff20+coeff22);
	6'd21 : lut3_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut3_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut3_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut3_out3 = (coeff21+coeff22);
	6'd25 : lut3_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut3_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut3_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut3_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut3_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut3_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut3_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut3_out3 = (coeff23);
	6'd33 : lut3_out3 = (coeff18+coeff23);
	6'd34 : lut3_out3 = (coeff19+coeff23);
	6'd35 : lut3_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut3_out3 = (coeff20+coeff23);
	6'd37 : lut3_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut3_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut3_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut3_out3 = (coeff21+coeff23);
	6'd41 : lut3_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut3_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut3_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut3_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut3_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut3_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut3_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut3_out3 = (coeff22+coeff23);
	6'd49 : lut3_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut3_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut3_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut3_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut3_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut3_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut3_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut3_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut3_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut3_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut3_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut3_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut3_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut3_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut3_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut3_out3 = 0;
	endcase
end
always @(lut_addr3_4)
begin
	case(lut_addr3_4)
	6'd0 : lut3_out4 = (0);
	6'd1 : lut3_out4 = (coeff24);
	6'd2 : lut3_out4 = (coeff25);
	6'd3 : lut3_out4 = (coeff24+coeff25);
	6'd4 : lut3_out4 = (coeff26);
	6'd5 : lut3_out4 = (coeff24+coeff26);
	6'd6 : lut3_out4 = (coeff25+coeff26);
	6'd7 : lut3_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut3_out4 = (coeff27);
	6'd9 : lut3_out4 = (coeff24+coeff27);
	6'd10 : lut3_out4 = (coeff25+coeff27);
	6'd11 : lut3_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut3_out4 = (coeff26+coeff27);
	6'd13 : lut3_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut3_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut3_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut3_out4 = (coeff28);
	6'd17 : lut3_out4 = (coeff24+coeff28);
	6'd18 : lut3_out4 = (coeff25+coeff28);
	6'd19 : lut3_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut3_out4 = (coeff26+coeff28);
	6'd21 : lut3_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut3_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut3_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut3_out4 = (coeff27+coeff28);
	6'd25 : lut3_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut3_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut3_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut3_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut3_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut3_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut3_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut3_out4 = (coeff29);
	6'd33 : lut3_out4 = (coeff24+coeff29);
	6'd34 : lut3_out4 = (coeff25+coeff29);
	6'd35 : lut3_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut3_out4 = (coeff26+coeff29);
	6'd37 : lut3_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut3_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut3_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut3_out4 = (coeff27+coeff29);
	6'd41 : lut3_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut3_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut3_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut3_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut3_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut3_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut3_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut3_out4 = (coeff28+coeff29);
	6'd49 : lut3_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut3_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut3_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut3_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut3_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut3_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut3_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut3_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut3_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut3_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut3_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut3_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut3_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut3_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut3_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut3_out4 = 0;
	endcase
end
always @(lut_addr3_5)
begin
	case(lut_addr3_5)
	1'd0 : lut3_out5 = (0);
	1'd1 : lut3_out5 = (coeff30);
	default :lut3_out5 = 0;
	endcase
end
always @(lut_addr4_0)
begin
	case(lut_addr4_0)
	6'd0 : lut4_out0 = (0);
	6'd1 : lut4_out0 = (coeff0);
	6'd2 : lut4_out0 = (coeff1);
	6'd3 : lut4_out0 = (coeff0+coeff1);
	6'd4 : lut4_out0 = (coeff2);
	6'd5 : lut4_out0 = (coeff0+coeff2);
	6'd6 : lut4_out0 = (coeff1+coeff2);
	6'd7 : lut4_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut4_out0 = (coeff3);
	6'd9 : lut4_out0 = (coeff0+coeff3);
	6'd10 : lut4_out0 = (coeff1+coeff3);
	6'd11 : lut4_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut4_out0 = (coeff2+coeff3);
	6'd13 : lut4_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut4_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut4_out0 = (coeff4);
	6'd17 : lut4_out0 = (coeff0+coeff4);
	6'd18 : lut4_out0 = (coeff1+coeff4);
	6'd19 : lut4_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut4_out0 = (coeff2+coeff4);
	6'd21 : lut4_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut4_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut4_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut4_out0 = (coeff3+coeff4);
	6'd25 : lut4_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut4_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut4_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut4_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut4_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut4_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut4_out0 = (coeff5);
	6'd33 : lut4_out0 = (coeff0+coeff5);
	6'd34 : lut4_out0 = (coeff1+coeff5);
	6'd35 : lut4_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut4_out0 = (coeff2+coeff5);
	6'd37 : lut4_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut4_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut4_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut4_out0 = (coeff3+coeff5);
	6'd41 : lut4_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut4_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut4_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut4_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut4_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut4_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut4_out0 = (coeff4+coeff5);
	6'd49 : lut4_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut4_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut4_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut4_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut4_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut4_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut4_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut4_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut4_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut4_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut4_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut4_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut4_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut4_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut4_out0 = 0;
	endcase
end
always @(lut_addr4_1)
begin
	case(lut_addr4_1)
	6'd0 : lut4_out1 = (0);
	6'd1 : lut4_out1 = (coeff6);
	6'd2 : lut4_out1 = (coeff7);
	6'd3 : lut4_out1 = (coeff6+coeff7);
	6'd4 : lut4_out1 = (coeff8);
	6'd5 : lut4_out1 = (coeff6+coeff8);
	6'd6 : lut4_out1 = (coeff7+coeff8);
	6'd7 : lut4_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut4_out1 = (coeff9);
	6'd9 : lut4_out1 = (coeff6+coeff9);
	6'd10 : lut4_out1 = (coeff7+coeff9);
	6'd11 : lut4_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut4_out1 = (coeff8+coeff9);
	6'd13 : lut4_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut4_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut4_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut4_out1 = (coeff10);
	6'd17 : lut4_out1 = (coeff6+coeff10);
	6'd18 : lut4_out1 = (coeff7+coeff10);
	6'd19 : lut4_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut4_out1 = (coeff8+coeff10);
	6'd21 : lut4_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut4_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut4_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut4_out1 = (coeff9+coeff10);
	6'd25 : lut4_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut4_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut4_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut4_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut4_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut4_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut4_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut4_out1 = (coeff11);
	6'd33 : lut4_out1 = (coeff6+coeff11);
	6'd34 : lut4_out1 = (coeff7+coeff11);
	6'd35 : lut4_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut4_out1 = (coeff8+coeff11);
	6'd37 : lut4_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut4_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut4_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut4_out1 = (coeff9+coeff11);
	6'd41 : lut4_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut4_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut4_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut4_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut4_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut4_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut4_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut4_out1 = (coeff10+coeff11);
	6'd49 : lut4_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut4_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut4_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut4_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut4_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut4_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut4_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut4_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut4_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut4_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut4_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut4_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut4_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut4_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut4_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut4_out1 = 0;
	endcase
end
always @(lut_addr4_2)
begin
	case(lut_addr4_2)
	6'd0 : lut4_out2 = (0);
	6'd1 : lut4_out2 = (coeff12);
	6'd2 : lut4_out2 = (coeff13);
	6'd3 : lut4_out2 = (coeff12+coeff13);
	6'd4 : lut4_out2 = (coeff14);
	6'd5 : lut4_out2 = (coeff12+coeff14);
	6'd6 : lut4_out2 = (coeff13+coeff14);
	6'd7 : lut4_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut4_out2 = (coeff15);
	6'd9 : lut4_out2 = (coeff12+coeff15);
	6'd10 : lut4_out2 = (coeff13+coeff15);
	6'd11 : lut4_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut4_out2 = (coeff14+coeff15);
	6'd13 : lut4_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut4_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut4_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut4_out2 = (coeff16);
	6'd17 : lut4_out2 = (coeff12+coeff16);
	6'd18 : lut4_out2 = (coeff13+coeff16);
	6'd19 : lut4_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut4_out2 = (coeff14+coeff16);
	6'd21 : lut4_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut4_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut4_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut4_out2 = (coeff15+coeff16);
	6'd25 : lut4_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut4_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut4_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut4_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut4_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut4_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut4_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut4_out2 = (coeff17);
	6'd33 : lut4_out2 = (coeff12+coeff17);
	6'd34 : lut4_out2 = (coeff13+coeff17);
	6'd35 : lut4_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut4_out2 = (coeff14+coeff17);
	6'd37 : lut4_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut4_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut4_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut4_out2 = (coeff15+coeff17);
	6'd41 : lut4_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut4_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut4_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut4_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut4_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut4_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut4_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut4_out2 = (coeff16+coeff17);
	6'd49 : lut4_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut4_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut4_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut4_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut4_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut4_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut4_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut4_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut4_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut4_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut4_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut4_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut4_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut4_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut4_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut4_out2 = 0;
	endcase
end
always @(lut_addr4_3)
begin
	case(lut_addr4_3)
	6'd0 : lut4_out3 = (0);
	6'd1 : lut4_out3 = (coeff18);
	6'd2 : lut4_out3 = (coeff19);
	6'd3 : lut4_out3 = (coeff18+coeff19);
	6'd4 : lut4_out3 = (coeff20);
	6'd5 : lut4_out3 = (coeff18+coeff20);
	6'd6 : lut4_out3 = (coeff19+coeff20);
	6'd7 : lut4_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut4_out3 = (coeff21);
	6'd9 : lut4_out3 = (coeff18+coeff21);
	6'd10 : lut4_out3 = (coeff19+coeff21);
	6'd11 : lut4_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut4_out3 = (coeff20+coeff21);
	6'd13 : lut4_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut4_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut4_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut4_out3 = (coeff22);
	6'd17 : lut4_out3 = (coeff18+coeff22);
	6'd18 : lut4_out3 = (coeff19+coeff22);
	6'd19 : lut4_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut4_out3 = (coeff20+coeff22);
	6'd21 : lut4_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut4_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut4_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut4_out3 = (coeff21+coeff22);
	6'd25 : lut4_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut4_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut4_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut4_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut4_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut4_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut4_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut4_out3 = (coeff23);
	6'd33 : lut4_out3 = (coeff18+coeff23);
	6'd34 : lut4_out3 = (coeff19+coeff23);
	6'd35 : lut4_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut4_out3 = (coeff20+coeff23);
	6'd37 : lut4_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut4_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut4_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut4_out3 = (coeff21+coeff23);
	6'd41 : lut4_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut4_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut4_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut4_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut4_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut4_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut4_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut4_out3 = (coeff22+coeff23);
	6'd49 : lut4_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut4_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut4_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut4_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut4_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut4_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut4_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut4_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut4_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut4_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut4_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut4_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut4_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut4_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut4_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut4_out3 = 0;
	endcase
end
always @(lut_addr4_4)
begin
	case(lut_addr4_4)
	6'd0 : lut4_out4 = (0);
	6'd1 : lut4_out4 = (coeff24);
	6'd2 : lut4_out4 = (coeff25);
	6'd3 : lut4_out4 = (coeff24+coeff25);
	6'd4 : lut4_out4 = (coeff26);
	6'd5 : lut4_out4 = (coeff24+coeff26);
	6'd6 : lut4_out4 = (coeff25+coeff26);
	6'd7 : lut4_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut4_out4 = (coeff27);
	6'd9 : lut4_out4 = (coeff24+coeff27);
	6'd10 : lut4_out4 = (coeff25+coeff27);
	6'd11 : lut4_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut4_out4 = (coeff26+coeff27);
	6'd13 : lut4_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut4_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut4_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut4_out4 = (coeff28);
	6'd17 : lut4_out4 = (coeff24+coeff28);
	6'd18 : lut4_out4 = (coeff25+coeff28);
	6'd19 : lut4_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut4_out4 = (coeff26+coeff28);
	6'd21 : lut4_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut4_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut4_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut4_out4 = (coeff27+coeff28);
	6'd25 : lut4_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut4_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut4_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut4_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut4_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut4_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut4_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut4_out4 = (coeff29);
	6'd33 : lut4_out4 = (coeff24+coeff29);
	6'd34 : lut4_out4 = (coeff25+coeff29);
	6'd35 : lut4_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut4_out4 = (coeff26+coeff29);
	6'd37 : lut4_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut4_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut4_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut4_out4 = (coeff27+coeff29);
	6'd41 : lut4_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut4_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut4_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut4_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut4_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut4_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut4_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut4_out4 = (coeff28+coeff29);
	6'd49 : lut4_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut4_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut4_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut4_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut4_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut4_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut4_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut4_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut4_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut4_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut4_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut4_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut4_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut4_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut4_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut4_out4 = 0;
	endcase
end
always @(lut_addr4_5)
begin
	case(lut_addr4_5)
	1'd0 : lut4_out5 = (0);
	1'd1 : lut4_out5 = (coeff30);
	default :lut4_out5 = 0;
	endcase
end
always @(lut_addr5_0)
begin
	case(lut_addr5_0)
	6'd0 : lut5_out0 = (0);
	6'd1 : lut5_out0 = (coeff0);
	6'd2 : lut5_out0 = (coeff1);
	6'd3 : lut5_out0 = (coeff0+coeff1);
	6'd4 : lut5_out0 = (coeff2);
	6'd5 : lut5_out0 = (coeff0+coeff2);
	6'd6 : lut5_out0 = (coeff1+coeff2);
	6'd7 : lut5_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut5_out0 = (coeff3);
	6'd9 : lut5_out0 = (coeff0+coeff3);
	6'd10 : lut5_out0 = (coeff1+coeff3);
	6'd11 : lut5_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut5_out0 = (coeff2+coeff3);
	6'd13 : lut5_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut5_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut5_out0 = (coeff4);
	6'd17 : lut5_out0 = (coeff0+coeff4);
	6'd18 : lut5_out0 = (coeff1+coeff4);
	6'd19 : lut5_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut5_out0 = (coeff2+coeff4);
	6'd21 : lut5_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut5_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut5_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut5_out0 = (coeff3+coeff4);
	6'd25 : lut5_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut5_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut5_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut5_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut5_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut5_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut5_out0 = (coeff5);
	6'd33 : lut5_out0 = (coeff0+coeff5);
	6'd34 : lut5_out0 = (coeff1+coeff5);
	6'd35 : lut5_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut5_out0 = (coeff2+coeff5);
	6'd37 : lut5_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut5_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut5_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut5_out0 = (coeff3+coeff5);
	6'd41 : lut5_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut5_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut5_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut5_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut5_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut5_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut5_out0 = (coeff4+coeff5);
	6'd49 : lut5_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut5_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut5_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut5_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut5_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut5_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut5_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut5_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut5_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut5_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut5_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut5_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut5_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut5_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut5_out0 = 0;
	endcase
end
always @(lut_addr5_1)
begin
	case(lut_addr5_1)
	6'd0 : lut5_out1 = (0);
	6'd1 : lut5_out1 = (coeff6);
	6'd2 : lut5_out1 = (coeff7);
	6'd3 : lut5_out1 = (coeff6+coeff7);
	6'd4 : lut5_out1 = (coeff8);
	6'd5 : lut5_out1 = (coeff6+coeff8);
	6'd6 : lut5_out1 = (coeff7+coeff8);
	6'd7 : lut5_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut5_out1 = (coeff9);
	6'd9 : lut5_out1 = (coeff6+coeff9);
	6'd10 : lut5_out1 = (coeff7+coeff9);
	6'd11 : lut5_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut5_out1 = (coeff8+coeff9);
	6'd13 : lut5_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut5_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut5_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut5_out1 = (coeff10);
	6'd17 : lut5_out1 = (coeff6+coeff10);
	6'd18 : lut5_out1 = (coeff7+coeff10);
	6'd19 : lut5_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut5_out1 = (coeff8+coeff10);
	6'd21 : lut5_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut5_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut5_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut5_out1 = (coeff9+coeff10);
	6'd25 : lut5_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut5_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut5_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut5_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut5_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut5_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut5_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut5_out1 = (coeff11);
	6'd33 : lut5_out1 = (coeff6+coeff11);
	6'd34 : lut5_out1 = (coeff7+coeff11);
	6'd35 : lut5_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut5_out1 = (coeff8+coeff11);
	6'd37 : lut5_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut5_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut5_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut5_out1 = (coeff9+coeff11);
	6'd41 : lut5_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut5_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut5_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut5_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut5_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut5_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut5_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut5_out1 = (coeff10+coeff11);
	6'd49 : lut5_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut5_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut5_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut5_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut5_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut5_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut5_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut5_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut5_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut5_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut5_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut5_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut5_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut5_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut5_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut5_out1 = 0;
	endcase
end
always @(lut_addr5_2)
begin
	case(lut_addr5_2)
	6'd0 : lut5_out2 = (0);
	6'd1 : lut5_out2 = (coeff12);
	6'd2 : lut5_out2 = (coeff13);
	6'd3 : lut5_out2 = (coeff12+coeff13);
	6'd4 : lut5_out2 = (coeff14);
	6'd5 : lut5_out2 = (coeff12+coeff14);
	6'd6 : lut5_out2 = (coeff13+coeff14);
	6'd7 : lut5_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut5_out2 = (coeff15);
	6'd9 : lut5_out2 = (coeff12+coeff15);
	6'd10 : lut5_out2 = (coeff13+coeff15);
	6'd11 : lut5_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut5_out2 = (coeff14+coeff15);
	6'd13 : lut5_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut5_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut5_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut5_out2 = (coeff16);
	6'd17 : lut5_out2 = (coeff12+coeff16);
	6'd18 : lut5_out2 = (coeff13+coeff16);
	6'd19 : lut5_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut5_out2 = (coeff14+coeff16);
	6'd21 : lut5_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut5_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut5_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut5_out2 = (coeff15+coeff16);
	6'd25 : lut5_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut5_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut5_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut5_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut5_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut5_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut5_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut5_out2 = (coeff17);
	6'd33 : lut5_out2 = (coeff12+coeff17);
	6'd34 : lut5_out2 = (coeff13+coeff17);
	6'd35 : lut5_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut5_out2 = (coeff14+coeff17);
	6'd37 : lut5_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut5_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut5_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut5_out2 = (coeff15+coeff17);
	6'd41 : lut5_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut5_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut5_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut5_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut5_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut5_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut5_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut5_out2 = (coeff16+coeff17);
	6'd49 : lut5_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut5_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut5_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut5_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut5_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut5_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut5_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut5_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut5_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut5_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut5_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut5_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut5_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut5_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut5_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut5_out2 = 0;
	endcase
end
always @(lut_addr5_3)
begin
	case(lut_addr5_3)
	6'd0 : lut5_out3 = (0);
	6'd1 : lut5_out3 = (coeff18);
	6'd2 : lut5_out3 = (coeff19);
	6'd3 : lut5_out3 = (coeff18+coeff19);
	6'd4 : lut5_out3 = (coeff20);
	6'd5 : lut5_out3 = (coeff18+coeff20);
	6'd6 : lut5_out3 = (coeff19+coeff20);
	6'd7 : lut5_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut5_out3 = (coeff21);
	6'd9 : lut5_out3 = (coeff18+coeff21);
	6'd10 : lut5_out3 = (coeff19+coeff21);
	6'd11 : lut5_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut5_out3 = (coeff20+coeff21);
	6'd13 : lut5_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut5_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut5_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut5_out3 = (coeff22);
	6'd17 : lut5_out3 = (coeff18+coeff22);
	6'd18 : lut5_out3 = (coeff19+coeff22);
	6'd19 : lut5_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut5_out3 = (coeff20+coeff22);
	6'd21 : lut5_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut5_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut5_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut5_out3 = (coeff21+coeff22);
	6'd25 : lut5_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut5_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut5_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut5_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut5_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut5_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut5_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut5_out3 = (coeff23);
	6'd33 : lut5_out3 = (coeff18+coeff23);
	6'd34 : lut5_out3 = (coeff19+coeff23);
	6'd35 : lut5_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut5_out3 = (coeff20+coeff23);
	6'd37 : lut5_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut5_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut5_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut5_out3 = (coeff21+coeff23);
	6'd41 : lut5_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut5_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut5_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut5_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut5_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut5_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut5_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut5_out3 = (coeff22+coeff23);
	6'd49 : lut5_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut5_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut5_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut5_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut5_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut5_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut5_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut5_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut5_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut5_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut5_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut5_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut5_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut5_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut5_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut5_out3 = 0;
	endcase
end
always @(lut_addr5_4)
begin
	case(lut_addr5_4)
	6'd0 : lut5_out4 = (0);
	6'd1 : lut5_out4 = (coeff24);
	6'd2 : lut5_out4 = (coeff25);
	6'd3 : lut5_out4 = (coeff24+coeff25);
	6'd4 : lut5_out4 = (coeff26);
	6'd5 : lut5_out4 = (coeff24+coeff26);
	6'd6 : lut5_out4 = (coeff25+coeff26);
	6'd7 : lut5_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut5_out4 = (coeff27);
	6'd9 : lut5_out4 = (coeff24+coeff27);
	6'd10 : lut5_out4 = (coeff25+coeff27);
	6'd11 : lut5_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut5_out4 = (coeff26+coeff27);
	6'd13 : lut5_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut5_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut5_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut5_out4 = (coeff28);
	6'd17 : lut5_out4 = (coeff24+coeff28);
	6'd18 : lut5_out4 = (coeff25+coeff28);
	6'd19 : lut5_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut5_out4 = (coeff26+coeff28);
	6'd21 : lut5_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut5_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut5_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut5_out4 = (coeff27+coeff28);
	6'd25 : lut5_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut5_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut5_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut5_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut5_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut5_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut5_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut5_out4 = (coeff29);
	6'd33 : lut5_out4 = (coeff24+coeff29);
	6'd34 : lut5_out4 = (coeff25+coeff29);
	6'd35 : lut5_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut5_out4 = (coeff26+coeff29);
	6'd37 : lut5_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut5_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut5_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut5_out4 = (coeff27+coeff29);
	6'd41 : lut5_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut5_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut5_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut5_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut5_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut5_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut5_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut5_out4 = (coeff28+coeff29);
	6'd49 : lut5_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut5_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut5_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut5_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut5_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut5_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut5_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut5_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut5_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut5_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut5_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut5_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut5_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut5_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut5_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut5_out4 = 0;
	endcase
end
always @(lut_addr5_5)
begin
	case(lut_addr5_5)
	1'd0 : lut5_out5 = (0);
	1'd1 : lut5_out5 = (coeff30);
	default :lut5_out5 = 0;
	endcase
end
always @(lut_addr6_0)
begin
	case(lut_addr6_0)
	6'd0 : lut6_out0 = (0);
	6'd1 : lut6_out0 = (coeff0);
	6'd2 : lut6_out0 = (coeff1);
	6'd3 : lut6_out0 = (coeff0+coeff1);
	6'd4 : lut6_out0 = (coeff2);
	6'd5 : lut6_out0 = (coeff0+coeff2);
	6'd6 : lut6_out0 = (coeff1+coeff2);
	6'd7 : lut6_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut6_out0 = (coeff3);
	6'd9 : lut6_out0 = (coeff0+coeff3);
	6'd10 : lut6_out0 = (coeff1+coeff3);
	6'd11 : lut6_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut6_out0 = (coeff2+coeff3);
	6'd13 : lut6_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut6_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut6_out0 = (coeff4);
	6'd17 : lut6_out0 = (coeff0+coeff4);
	6'd18 : lut6_out0 = (coeff1+coeff4);
	6'd19 : lut6_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut6_out0 = (coeff2+coeff4);
	6'd21 : lut6_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut6_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut6_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut6_out0 = (coeff3+coeff4);
	6'd25 : lut6_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut6_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut6_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut6_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut6_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut6_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut6_out0 = (coeff5);
	6'd33 : lut6_out0 = (coeff0+coeff5);
	6'd34 : lut6_out0 = (coeff1+coeff5);
	6'd35 : lut6_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut6_out0 = (coeff2+coeff5);
	6'd37 : lut6_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut6_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut6_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut6_out0 = (coeff3+coeff5);
	6'd41 : lut6_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut6_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut6_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut6_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut6_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut6_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut6_out0 = (coeff4+coeff5);
	6'd49 : lut6_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut6_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut6_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut6_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut6_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut6_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut6_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut6_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut6_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut6_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut6_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut6_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut6_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut6_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut6_out0 = 0;
	endcase
end
always @(lut_addr6_1)
begin
	case(lut_addr6_1)
	6'd0 : lut6_out1 = (0);
	6'd1 : lut6_out1 = (coeff6);
	6'd2 : lut6_out1 = (coeff7);
	6'd3 : lut6_out1 = (coeff6+coeff7);
	6'd4 : lut6_out1 = (coeff8);
	6'd5 : lut6_out1 = (coeff6+coeff8);
	6'd6 : lut6_out1 = (coeff7+coeff8);
	6'd7 : lut6_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut6_out1 = (coeff9);
	6'd9 : lut6_out1 = (coeff6+coeff9);
	6'd10 : lut6_out1 = (coeff7+coeff9);
	6'd11 : lut6_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut6_out1 = (coeff8+coeff9);
	6'd13 : lut6_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut6_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut6_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut6_out1 = (coeff10);
	6'd17 : lut6_out1 = (coeff6+coeff10);
	6'd18 : lut6_out1 = (coeff7+coeff10);
	6'd19 : lut6_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut6_out1 = (coeff8+coeff10);
	6'd21 : lut6_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut6_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut6_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut6_out1 = (coeff9+coeff10);
	6'd25 : lut6_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut6_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut6_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut6_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut6_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut6_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut6_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut6_out1 = (coeff11);
	6'd33 : lut6_out1 = (coeff6+coeff11);
	6'd34 : lut6_out1 = (coeff7+coeff11);
	6'd35 : lut6_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut6_out1 = (coeff8+coeff11);
	6'd37 : lut6_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut6_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut6_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut6_out1 = (coeff9+coeff11);
	6'd41 : lut6_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut6_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut6_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut6_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut6_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut6_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut6_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut6_out1 = (coeff10+coeff11);
	6'd49 : lut6_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut6_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut6_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut6_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut6_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut6_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut6_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut6_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut6_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut6_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut6_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut6_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut6_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut6_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut6_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut6_out1 = 0;
	endcase
end
always @(lut_addr6_2)
begin
	case(lut_addr6_2)
	6'd0 : lut6_out2 = (0);
	6'd1 : lut6_out2 = (coeff12);
	6'd2 : lut6_out2 = (coeff13);
	6'd3 : lut6_out2 = (coeff12+coeff13);
	6'd4 : lut6_out2 = (coeff14);
	6'd5 : lut6_out2 = (coeff12+coeff14);
	6'd6 : lut6_out2 = (coeff13+coeff14);
	6'd7 : lut6_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut6_out2 = (coeff15);
	6'd9 : lut6_out2 = (coeff12+coeff15);
	6'd10 : lut6_out2 = (coeff13+coeff15);
	6'd11 : lut6_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut6_out2 = (coeff14+coeff15);
	6'd13 : lut6_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut6_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut6_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut6_out2 = (coeff16);
	6'd17 : lut6_out2 = (coeff12+coeff16);
	6'd18 : lut6_out2 = (coeff13+coeff16);
	6'd19 : lut6_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut6_out2 = (coeff14+coeff16);
	6'd21 : lut6_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut6_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut6_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut6_out2 = (coeff15+coeff16);
	6'd25 : lut6_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut6_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut6_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut6_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut6_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut6_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut6_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut6_out2 = (coeff17);
	6'd33 : lut6_out2 = (coeff12+coeff17);
	6'd34 : lut6_out2 = (coeff13+coeff17);
	6'd35 : lut6_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut6_out2 = (coeff14+coeff17);
	6'd37 : lut6_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut6_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut6_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut6_out2 = (coeff15+coeff17);
	6'd41 : lut6_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut6_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut6_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut6_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut6_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut6_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut6_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut6_out2 = (coeff16+coeff17);
	6'd49 : lut6_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut6_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut6_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut6_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut6_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut6_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut6_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut6_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut6_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut6_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut6_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut6_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut6_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut6_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut6_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut6_out2 = 0;
	endcase
end
always @(lut_addr6_3)
begin
	case(lut_addr6_3)
	6'd0 : lut6_out3 = (0);
	6'd1 : lut6_out3 = (coeff18);
	6'd2 : lut6_out3 = (coeff19);
	6'd3 : lut6_out3 = (coeff18+coeff19);
	6'd4 : lut6_out3 = (coeff20);
	6'd5 : lut6_out3 = (coeff18+coeff20);
	6'd6 : lut6_out3 = (coeff19+coeff20);
	6'd7 : lut6_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut6_out3 = (coeff21);
	6'd9 : lut6_out3 = (coeff18+coeff21);
	6'd10 : lut6_out3 = (coeff19+coeff21);
	6'd11 : lut6_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut6_out3 = (coeff20+coeff21);
	6'd13 : lut6_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut6_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut6_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut6_out3 = (coeff22);
	6'd17 : lut6_out3 = (coeff18+coeff22);
	6'd18 : lut6_out3 = (coeff19+coeff22);
	6'd19 : lut6_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut6_out3 = (coeff20+coeff22);
	6'd21 : lut6_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut6_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut6_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut6_out3 = (coeff21+coeff22);
	6'd25 : lut6_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut6_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut6_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut6_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut6_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut6_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut6_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut6_out3 = (coeff23);
	6'd33 : lut6_out3 = (coeff18+coeff23);
	6'd34 : lut6_out3 = (coeff19+coeff23);
	6'd35 : lut6_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut6_out3 = (coeff20+coeff23);
	6'd37 : lut6_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut6_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut6_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut6_out3 = (coeff21+coeff23);
	6'd41 : lut6_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut6_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut6_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut6_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut6_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut6_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut6_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut6_out3 = (coeff22+coeff23);
	6'd49 : lut6_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut6_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut6_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut6_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut6_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut6_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut6_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut6_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut6_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut6_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut6_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut6_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut6_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut6_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut6_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut6_out3 = 0;
	endcase
end
always @(lut_addr6_4)
begin
	case(lut_addr6_4)
	6'd0 : lut6_out4 = (0);
	6'd1 : lut6_out4 = (coeff24);
	6'd2 : lut6_out4 = (coeff25);
	6'd3 : lut6_out4 = (coeff24+coeff25);
	6'd4 : lut6_out4 = (coeff26);
	6'd5 : lut6_out4 = (coeff24+coeff26);
	6'd6 : lut6_out4 = (coeff25+coeff26);
	6'd7 : lut6_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut6_out4 = (coeff27);
	6'd9 : lut6_out4 = (coeff24+coeff27);
	6'd10 : lut6_out4 = (coeff25+coeff27);
	6'd11 : lut6_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut6_out4 = (coeff26+coeff27);
	6'd13 : lut6_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut6_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut6_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut6_out4 = (coeff28);
	6'd17 : lut6_out4 = (coeff24+coeff28);
	6'd18 : lut6_out4 = (coeff25+coeff28);
	6'd19 : lut6_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut6_out4 = (coeff26+coeff28);
	6'd21 : lut6_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut6_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut6_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut6_out4 = (coeff27+coeff28);
	6'd25 : lut6_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut6_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut6_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut6_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut6_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut6_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut6_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut6_out4 = (coeff29);
	6'd33 : lut6_out4 = (coeff24+coeff29);
	6'd34 : lut6_out4 = (coeff25+coeff29);
	6'd35 : lut6_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut6_out4 = (coeff26+coeff29);
	6'd37 : lut6_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut6_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut6_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut6_out4 = (coeff27+coeff29);
	6'd41 : lut6_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut6_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut6_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut6_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut6_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut6_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut6_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut6_out4 = (coeff28+coeff29);
	6'd49 : lut6_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut6_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut6_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut6_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut6_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut6_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut6_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut6_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut6_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut6_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut6_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut6_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut6_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut6_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut6_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut6_out4 = 0;
	endcase
end
always @(lut_addr6_5)
begin
	case(lut_addr6_5)
	1'd0 : lut6_out5 = (0);
	1'd1 : lut6_out5 = (coeff30);
	default :lut6_out5 = 0;
	endcase
end
always @(lut_addr7_0)
begin
	case(lut_addr7_0)
	6'd0 : lut7_out0 = (0);
	6'd1 : lut7_out0 = (coeff0);
	6'd2 : lut7_out0 = (coeff1);
	6'd3 : lut7_out0 = (coeff0+coeff1);
	6'd4 : lut7_out0 = (coeff2);
	6'd5 : lut7_out0 = (coeff0+coeff2);
	6'd6 : lut7_out0 = (coeff1+coeff2);
	6'd7 : lut7_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut7_out0 = (coeff3);
	6'd9 : lut7_out0 = (coeff0+coeff3);
	6'd10 : lut7_out0 = (coeff1+coeff3);
	6'd11 : lut7_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut7_out0 = (coeff2+coeff3);
	6'd13 : lut7_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut7_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut7_out0 = (coeff4);
	6'd17 : lut7_out0 = (coeff0+coeff4);
	6'd18 : lut7_out0 = (coeff1+coeff4);
	6'd19 : lut7_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut7_out0 = (coeff2+coeff4);
	6'd21 : lut7_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut7_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut7_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut7_out0 = (coeff3+coeff4);
	6'd25 : lut7_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut7_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut7_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut7_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut7_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut7_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut7_out0 = (coeff5);
	6'd33 : lut7_out0 = (coeff0+coeff5);
	6'd34 : lut7_out0 = (coeff1+coeff5);
	6'd35 : lut7_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut7_out0 = (coeff2+coeff5);
	6'd37 : lut7_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut7_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut7_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut7_out0 = (coeff3+coeff5);
	6'd41 : lut7_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut7_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut7_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut7_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut7_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut7_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut7_out0 = (coeff4+coeff5);
	6'd49 : lut7_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut7_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut7_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut7_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut7_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut7_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut7_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut7_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut7_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut7_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut7_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut7_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut7_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut7_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut7_out0 = 0;
	endcase
end
always @(lut_addr7_1)
begin
	case(lut_addr7_1)
	6'd0 : lut7_out1 = (0);
	6'd1 : lut7_out1 = (coeff6);
	6'd2 : lut7_out1 = (coeff7);
	6'd3 : lut7_out1 = (coeff6+coeff7);
	6'd4 : lut7_out1 = (coeff8);
	6'd5 : lut7_out1 = (coeff6+coeff8);
	6'd6 : lut7_out1 = (coeff7+coeff8);
	6'd7 : lut7_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut7_out1 = (coeff9);
	6'd9 : lut7_out1 = (coeff6+coeff9);
	6'd10 : lut7_out1 = (coeff7+coeff9);
	6'd11 : lut7_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut7_out1 = (coeff8+coeff9);
	6'd13 : lut7_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut7_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut7_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut7_out1 = (coeff10);
	6'd17 : lut7_out1 = (coeff6+coeff10);
	6'd18 : lut7_out1 = (coeff7+coeff10);
	6'd19 : lut7_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut7_out1 = (coeff8+coeff10);
	6'd21 : lut7_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut7_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut7_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut7_out1 = (coeff9+coeff10);
	6'd25 : lut7_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut7_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut7_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut7_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut7_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut7_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut7_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut7_out1 = (coeff11);
	6'd33 : lut7_out1 = (coeff6+coeff11);
	6'd34 : lut7_out1 = (coeff7+coeff11);
	6'd35 : lut7_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut7_out1 = (coeff8+coeff11);
	6'd37 : lut7_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut7_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut7_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut7_out1 = (coeff9+coeff11);
	6'd41 : lut7_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut7_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut7_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut7_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut7_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut7_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut7_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut7_out1 = (coeff10+coeff11);
	6'd49 : lut7_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut7_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut7_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut7_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut7_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut7_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut7_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut7_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut7_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut7_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut7_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut7_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut7_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut7_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut7_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut7_out1 = 0;
	endcase
end
always @(lut_addr7_2)
begin
	case(lut_addr7_2)
	6'd0 : lut7_out2 = (0);
	6'd1 : lut7_out2 = (coeff12);
	6'd2 : lut7_out2 = (coeff13);
	6'd3 : lut7_out2 = (coeff12+coeff13);
	6'd4 : lut7_out2 = (coeff14);
	6'd5 : lut7_out2 = (coeff12+coeff14);
	6'd6 : lut7_out2 = (coeff13+coeff14);
	6'd7 : lut7_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut7_out2 = (coeff15);
	6'd9 : lut7_out2 = (coeff12+coeff15);
	6'd10 : lut7_out2 = (coeff13+coeff15);
	6'd11 : lut7_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut7_out2 = (coeff14+coeff15);
	6'd13 : lut7_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut7_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut7_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut7_out2 = (coeff16);
	6'd17 : lut7_out2 = (coeff12+coeff16);
	6'd18 : lut7_out2 = (coeff13+coeff16);
	6'd19 : lut7_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut7_out2 = (coeff14+coeff16);
	6'd21 : lut7_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut7_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut7_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut7_out2 = (coeff15+coeff16);
	6'd25 : lut7_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut7_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut7_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut7_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut7_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut7_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut7_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut7_out2 = (coeff17);
	6'd33 : lut7_out2 = (coeff12+coeff17);
	6'd34 : lut7_out2 = (coeff13+coeff17);
	6'd35 : lut7_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut7_out2 = (coeff14+coeff17);
	6'd37 : lut7_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut7_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut7_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut7_out2 = (coeff15+coeff17);
	6'd41 : lut7_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut7_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut7_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut7_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut7_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut7_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut7_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut7_out2 = (coeff16+coeff17);
	6'd49 : lut7_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut7_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut7_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut7_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut7_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut7_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut7_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut7_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut7_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut7_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut7_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut7_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut7_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut7_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut7_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut7_out2 = 0;
	endcase
end
always @(lut_addr7_3)
begin
	case(lut_addr7_3)
	6'd0 : lut7_out3 = (0);
	6'd1 : lut7_out3 = (coeff18);
	6'd2 : lut7_out3 = (coeff19);
	6'd3 : lut7_out3 = (coeff18+coeff19);
	6'd4 : lut7_out3 = (coeff20);
	6'd5 : lut7_out3 = (coeff18+coeff20);
	6'd6 : lut7_out3 = (coeff19+coeff20);
	6'd7 : lut7_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut7_out3 = (coeff21);
	6'd9 : lut7_out3 = (coeff18+coeff21);
	6'd10 : lut7_out3 = (coeff19+coeff21);
	6'd11 : lut7_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut7_out3 = (coeff20+coeff21);
	6'd13 : lut7_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut7_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut7_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut7_out3 = (coeff22);
	6'd17 : lut7_out3 = (coeff18+coeff22);
	6'd18 : lut7_out3 = (coeff19+coeff22);
	6'd19 : lut7_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut7_out3 = (coeff20+coeff22);
	6'd21 : lut7_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut7_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut7_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut7_out3 = (coeff21+coeff22);
	6'd25 : lut7_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut7_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut7_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut7_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut7_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut7_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut7_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut7_out3 = (coeff23);
	6'd33 : lut7_out3 = (coeff18+coeff23);
	6'd34 : lut7_out3 = (coeff19+coeff23);
	6'd35 : lut7_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut7_out3 = (coeff20+coeff23);
	6'd37 : lut7_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut7_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut7_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut7_out3 = (coeff21+coeff23);
	6'd41 : lut7_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut7_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut7_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut7_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut7_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut7_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut7_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut7_out3 = (coeff22+coeff23);
	6'd49 : lut7_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut7_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut7_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut7_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut7_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut7_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut7_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut7_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut7_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut7_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut7_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut7_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut7_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut7_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut7_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut7_out3 = 0;
	endcase
end
always @(lut_addr7_4)
begin
	case(lut_addr7_4)
	6'd0 : lut7_out4 = (0);
	6'd1 : lut7_out4 = (coeff24);
	6'd2 : lut7_out4 = (coeff25);
	6'd3 : lut7_out4 = (coeff24+coeff25);
	6'd4 : lut7_out4 = (coeff26);
	6'd5 : lut7_out4 = (coeff24+coeff26);
	6'd6 : lut7_out4 = (coeff25+coeff26);
	6'd7 : lut7_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut7_out4 = (coeff27);
	6'd9 : lut7_out4 = (coeff24+coeff27);
	6'd10 : lut7_out4 = (coeff25+coeff27);
	6'd11 : lut7_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut7_out4 = (coeff26+coeff27);
	6'd13 : lut7_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut7_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut7_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut7_out4 = (coeff28);
	6'd17 : lut7_out4 = (coeff24+coeff28);
	6'd18 : lut7_out4 = (coeff25+coeff28);
	6'd19 : lut7_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut7_out4 = (coeff26+coeff28);
	6'd21 : lut7_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut7_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut7_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut7_out4 = (coeff27+coeff28);
	6'd25 : lut7_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut7_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut7_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut7_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut7_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut7_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut7_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut7_out4 = (coeff29);
	6'd33 : lut7_out4 = (coeff24+coeff29);
	6'd34 : lut7_out4 = (coeff25+coeff29);
	6'd35 : lut7_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut7_out4 = (coeff26+coeff29);
	6'd37 : lut7_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut7_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut7_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut7_out4 = (coeff27+coeff29);
	6'd41 : lut7_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut7_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut7_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut7_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut7_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut7_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut7_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut7_out4 = (coeff28+coeff29);
	6'd49 : lut7_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut7_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut7_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut7_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut7_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut7_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut7_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut7_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut7_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut7_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut7_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut7_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut7_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut7_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut7_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut7_out4 = 0;
	endcase
end
always @(lut_addr7_5)
begin
	case(lut_addr7_5)
	1'd0 : lut7_out5 = (0);
	1'd1 : lut7_out5 = (coeff30);
	default :lut7_out5 = 0;
	endcase
end
always @(lut_addr8_0)
begin
	case(lut_addr8_0)
	6'd0 : lut8_out0 = (0);
	6'd1 : lut8_out0 = (coeff0);
	6'd2 : lut8_out0 = (coeff1);
	6'd3 : lut8_out0 = (coeff0+coeff1);
	6'd4 : lut8_out0 = (coeff2);
	6'd5 : lut8_out0 = (coeff0+coeff2);
	6'd6 : lut8_out0 = (coeff1+coeff2);
	6'd7 : lut8_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut8_out0 = (coeff3);
	6'd9 : lut8_out0 = (coeff0+coeff3);
	6'd10 : lut8_out0 = (coeff1+coeff3);
	6'd11 : lut8_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut8_out0 = (coeff2+coeff3);
	6'd13 : lut8_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut8_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut8_out0 = (coeff4);
	6'd17 : lut8_out0 = (coeff0+coeff4);
	6'd18 : lut8_out0 = (coeff1+coeff4);
	6'd19 : lut8_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut8_out0 = (coeff2+coeff4);
	6'd21 : lut8_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut8_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut8_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut8_out0 = (coeff3+coeff4);
	6'd25 : lut8_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut8_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut8_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut8_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut8_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut8_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut8_out0 = (coeff5);
	6'd33 : lut8_out0 = (coeff0+coeff5);
	6'd34 : lut8_out0 = (coeff1+coeff5);
	6'd35 : lut8_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut8_out0 = (coeff2+coeff5);
	6'd37 : lut8_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut8_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut8_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut8_out0 = (coeff3+coeff5);
	6'd41 : lut8_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut8_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut8_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut8_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut8_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut8_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut8_out0 = (coeff4+coeff5);
	6'd49 : lut8_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut8_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut8_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut8_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut8_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut8_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut8_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut8_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut8_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut8_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut8_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut8_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut8_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut8_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut8_out0 = 0;
	endcase
end
always @(lut_addr8_1)
begin
	case(lut_addr8_1)
	6'd0 : lut8_out1 = (0);
	6'd1 : lut8_out1 = (coeff6);
	6'd2 : lut8_out1 = (coeff7);
	6'd3 : lut8_out1 = (coeff6+coeff7);
	6'd4 : lut8_out1 = (coeff8);
	6'd5 : lut8_out1 = (coeff6+coeff8);
	6'd6 : lut8_out1 = (coeff7+coeff8);
	6'd7 : lut8_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut8_out1 = (coeff9);
	6'd9 : lut8_out1 = (coeff6+coeff9);
	6'd10 : lut8_out1 = (coeff7+coeff9);
	6'd11 : lut8_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut8_out1 = (coeff8+coeff9);
	6'd13 : lut8_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut8_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut8_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut8_out1 = (coeff10);
	6'd17 : lut8_out1 = (coeff6+coeff10);
	6'd18 : lut8_out1 = (coeff7+coeff10);
	6'd19 : lut8_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut8_out1 = (coeff8+coeff10);
	6'd21 : lut8_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut8_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut8_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut8_out1 = (coeff9+coeff10);
	6'd25 : lut8_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut8_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut8_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut8_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut8_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut8_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut8_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut8_out1 = (coeff11);
	6'd33 : lut8_out1 = (coeff6+coeff11);
	6'd34 : lut8_out1 = (coeff7+coeff11);
	6'd35 : lut8_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut8_out1 = (coeff8+coeff11);
	6'd37 : lut8_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut8_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut8_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut8_out1 = (coeff9+coeff11);
	6'd41 : lut8_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut8_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut8_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut8_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut8_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut8_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut8_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut8_out1 = (coeff10+coeff11);
	6'd49 : lut8_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut8_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut8_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut8_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut8_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut8_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut8_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut8_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut8_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut8_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut8_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut8_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut8_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut8_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut8_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut8_out1 = 0;
	endcase
end
always @(lut_addr8_2)
begin
	case(lut_addr8_2)
	6'd0 : lut8_out2 = (0);
	6'd1 : lut8_out2 = (coeff12);
	6'd2 : lut8_out2 = (coeff13);
	6'd3 : lut8_out2 = (coeff12+coeff13);
	6'd4 : lut8_out2 = (coeff14);
	6'd5 : lut8_out2 = (coeff12+coeff14);
	6'd6 : lut8_out2 = (coeff13+coeff14);
	6'd7 : lut8_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut8_out2 = (coeff15);
	6'd9 : lut8_out2 = (coeff12+coeff15);
	6'd10 : lut8_out2 = (coeff13+coeff15);
	6'd11 : lut8_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut8_out2 = (coeff14+coeff15);
	6'd13 : lut8_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut8_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut8_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut8_out2 = (coeff16);
	6'd17 : lut8_out2 = (coeff12+coeff16);
	6'd18 : lut8_out2 = (coeff13+coeff16);
	6'd19 : lut8_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut8_out2 = (coeff14+coeff16);
	6'd21 : lut8_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut8_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut8_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut8_out2 = (coeff15+coeff16);
	6'd25 : lut8_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut8_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut8_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut8_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut8_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut8_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut8_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut8_out2 = (coeff17);
	6'd33 : lut8_out2 = (coeff12+coeff17);
	6'd34 : lut8_out2 = (coeff13+coeff17);
	6'd35 : lut8_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut8_out2 = (coeff14+coeff17);
	6'd37 : lut8_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut8_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut8_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut8_out2 = (coeff15+coeff17);
	6'd41 : lut8_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut8_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut8_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut8_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut8_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut8_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut8_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut8_out2 = (coeff16+coeff17);
	6'd49 : lut8_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut8_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut8_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut8_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut8_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut8_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut8_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut8_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut8_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut8_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut8_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut8_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut8_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut8_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut8_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut8_out2 = 0;
	endcase
end
always @(lut_addr8_3)
begin
	case(lut_addr8_3)
	6'd0 : lut8_out3 = (0);
	6'd1 : lut8_out3 = (coeff18);
	6'd2 : lut8_out3 = (coeff19);
	6'd3 : lut8_out3 = (coeff18+coeff19);
	6'd4 : lut8_out3 = (coeff20);
	6'd5 : lut8_out3 = (coeff18+coeff20);
	6'd6 : lut8_out3 = (coeff19+coeff20);
	6'd7 : lut8_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut8_out3 = (coeff21);
	6'd9 : lut8_out3 = (coeff18+coeff21);
	6'd10 : lut8_out3 = (coeff19+coeff21);
	6'd11 : lut8_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut8_out3 = (coeff20+coeff21);
	6'd13 : lut8_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut8_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut8_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut8_out3 = (coeff22);
	6'd17 : lut8_out3 = (coeff18+coeff22);
	6'd18 : lut8_out3 = (coeff19+coeff22);
	6'd19 : lut8_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut8_out3 = (coeff20+coeff22);
	6'd21 : lut8_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut8_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut8_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut8_out3 = (coeff21+coeff22);
	6'd25 : lut8_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut8_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut8_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut8_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut8_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut8_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut8_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut8_out3 = (coeff23);
	6'd33 : lut8_out3 = (coeff18+coeff23);
	6'd34 : lut8_out3 = (coeff19+coeff23);
	6'd35 : lut8_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut8_out3 = (coeff20+coeff23);
	6'd37 : lut8_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut8_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut8_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut8_out3 = (coeff21+coeff23);
	6'd41 : lut8_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut8_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut8_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut8_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut8_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut8_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut8_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut8_out3 = (coeff22+coeff23);
	6'd49 : lut8_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut8_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut8_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut8_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut8_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut8_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut8_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut8_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut8_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut8_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut8_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut8_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut8_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut8_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut8_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut8_out3 = 0;
	endcase
end
always @(lut_addr8_4)
begin
	case(lut_addr8_4)
	6'd0 : lut8_out4 = (0);
	6'd1 : lut8_out4 = (coeff24);
	6'd2 : lut8_out4 = (coeff25);
	6'd3 : lut8_out4 = (coeff24+coeff25);
	6'd4 : lut8_out4 = (coeff26);
	6'd5 : lut8_out4 = (coeff24+coeff26);
	6'd6 : lut8_out4 = (coeff25+coeff26);
	6'd7 : lut8_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut8_out4 = (coeff27);
	6'd9 : lut8_out4 = (coeff24+coeff27);
	6'd10 : lut8_out4 = (coeff25+coeff27);
	6'd11 : lut8_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut8_out4 = (coeff26+coeff27);
	6'd13 : lut8_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut8_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut8_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut8_out4 = (coeff28);
	6'd17 : lut8_out4 = (coeff24+coeff28);
	6'd18 : lut8_out4 = (coeff25+coeff28);
	6'd19 : lut8_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut8_out4 = (coeff26+coeff28);
	6'd21 : lut8_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut8_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut8_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut8_out4 = (coeff27+coeff28);
	6'd25 : lut8_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut8_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut8_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut8_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut8_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut8_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut8_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut8_out4 = (coeff29);
	6'd33 : lut8_out4 = (coeff24+coeff29);
	6'd34 : lut8_out4 = (coeff25+coeff29);
	6'd35 : lut8_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut8_out4 = (coeff26+coeff29);
	6'd37 : lut8_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut8_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut8_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut8_out4 = (coeff27+coeff29);
	6'd41 : lut8_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut8_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut8_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut8_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut8_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut8_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut8_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut8_out4 = (coeff28+coeff29);
	6'd49 : lut8_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut8_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut8_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut8_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut8_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut8_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut8_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut8_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut8_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut8_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut8_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut8_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut8_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut8_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut8_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut8_out4 = 0;
	endcase
end
always @(lut_addr8_5)
begin
	case(lut_addr8_5)
	1'd0 : lut8_out5 = (0);
	1'd1 : lut8_out5 = (coeff30);
	default :lut8_out5 = 0;
	endcase
end
always @(lut_addr9_0)
begin
	case(lut_addr9_0)
	6'd0 : lut9_out0 = (0);
	6'd1 : lut9_out0 = (coeff0);
	6'd2 : lut9_out0 = (coeff1);
	6'd3 : lut9_out0 = (coeff0+coeff1);
	6'd4 : lut9_out0 = (coeff2);
	6'd5 : lut9_out0 = (coeff0+coeff2);
	6'd6 : lut9_out0 = (coeff1+coeff2);
	6'd7 : lut9_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut9_out0 = (coeff3);
	6'd9 : lut9_out0 = (coeff0+coeff3);
	6'd10 : lut9_out0 = (coeff1+coeff3);
	6'd11 : lut9_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut9_out0 = (coeff2+coeff3);
	6'd13 : lut9_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut9_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut9_out0 = (coeff4);
	6'd17 : lut9_out0 = (coeff0+coeff4);
	6'd18 : lut9_out0 = (coeff1+coeff4);
	6'd19 : lut9_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut9_out0 = (coeff2+coeff4);
	6'd21 : lut9_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut9_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut9_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut9_out0 = (coeff3+coeff4);
	6'd25 : lut9_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut9_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut9_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut9_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut9_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut9_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut9_out0 = (coeff5);
	6'd33 : lut9_out0 = (coeff0+coeff5);
	6'd34 : lut9_out0 = (coeff1+coeff5);
	6'd35 : lut9_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut9_out0 = (coeff2+coeff5);
	6'd37 : lut9_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut9_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut9_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut9_out0 = (coeff3+coeff5);
	6'd41 : lut9_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut9_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut9_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut9_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut9_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut9_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut9_out0 = (coeff4+coeff5);
	6'd49 : lut9_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut9_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut9_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut9_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut9_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut9_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut9_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut9_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut9_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut9_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut9_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut9_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut9_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut9_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut9_out0 = 0;
	endcase
end
always @(lut_addr9_1)
begin
	case(lut_addr9_1)
	6'd0 : lut9_out1 = (0);
	6'd1 : lut9_out1 = (coeff6);
	6'd2 : lut9_out1 = (coeff7);
	6'd3 : lut9_out1 = (coeff6+coeff7);
	6'd4 : lut9_out1 = (coeff8);
	6'd5 : lut9_out1 = (coeff6+coeff8);
	6'd6 : lut9_out1 = (coeff7+coeff8);
	6'd7 : lut9_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut9_out1 = (coeff9);
	6'd9 : lut9_out1 = (coeff6+coeff9);
	6'd10 : lut9_out1 = (coeff7+coeff9);
	6'd11 : lut9_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut9_out1 = (coeff8+coeff9);
	6'd13 : lut9_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut9_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut9_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut9_out1 = (coeff10);
	6'd17 : lut9_out1 = (coeff6+coeff10);
	6'd18 : lut9_out1 = (coeff7+coeff10);
	6'd19 : lut9_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut9_out1 = (coeff8+coeff10);
	6'd21 : lut9_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut9_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut9_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut9_out1 = (coeff9+coeff10);
	6'd25 : lut9_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut9_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut9_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut9_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut9_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut9_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut9_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut9_out1 = (coeff11);
	6'd33 : lut9_out1 = (coeff6+coeff11);
	6'd34 : lut9_out1 = (coeff7+coeff11);
	6'd35 : lut9_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut9_out1 = (coeff8+coeff11);
	6'd37 : lut9_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut9_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut9_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut9_out1 = (coeff9+coeff11);
	6'd41 : lut9_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut9_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut9_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut9_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut9_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut9_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut9_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut9_out1 = (coeff10+coeff11);
	6'd49 : lut9_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut9_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut9_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut9_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut9_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut9_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut9_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut9_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut9_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut9_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut9_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut9_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut9_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut9_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut9_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut9_out1 = 0;
	endcase
end
always @(lut_addr9_2)
begin
	case(lut_addr9_2)
	6'd0 : lut9_out2 = (0);
	6'd1 : lut9_out2 = (coeff12);
	6'd2 : lut9_out2 = (coeff13);
	6'd3 : lut9_out2 = (coeff12+coeff13);
	6'd4 : lut9_out2 = (coeff14);
	6'd5 : lut9_out2 = (coeff12+coeff14);
	6'd6 : lut9_out2 = (coeff13+coeff14);
	6'd7 : lut9_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut9_out2 = (coeff15);
	6'd9 : lut9_out2 = (coeff12+coeff15);
	6'd10 : lut9_out2 = (coeff13+coeff15);
	6'd11 : lut9_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut9_out2 = (coeff14+coeff15);
	6'd13 : lut9_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut9_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut9_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut9_out2 = (coeff16);
	6'd17 : lut9_out2 = (coeff12+coeff16);
	6'd18 : lut9_out2 = (coeff13+coeff16);
	6'd19 : lut9_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut9_out2 = (coeff14+coeff16);
	6'd21 : lut9_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut9_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut9_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut9_out2 = (coeff15+coeff16);
	6'd25 : lut9_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut9_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut9_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut9_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut9_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut9_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut9_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut9_out2 = (coeff17);
	6'd33 : lut9_out2 = (coeff12+coeff17);
	6'd34 : lut9_out2 = (coeff13+coeff17);
	6'd35 : lut9_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut9_out2 = (coeff14+coeff17);
	6'd37 : lut9_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut9_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut9_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut9_out2 = (coeff15+coeff17);
	6'd41 : lut9_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut9_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut9_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut9_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut9_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut9_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut9_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut9_out2 = (coeff16+coeff17);
	6'd49 : lut9_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut9_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut9_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut9_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut9_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut9_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut9_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut9_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut9_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut9_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut9_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut9_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut9_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut9_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut9_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut9_out2 = 0;
	endcase
end
always @(lut_addr9_3)
begin
	case(lut_addr9_3)
	6'd0 : lut9_out3 = (0);
	6'd1 : lut9_out3 = (coeff18);
	6'd2 : lut9_out3 = (coeff19);
	6'd3 : lut9_out3 = (coeff18+coeff19);
	6'd4 : lut9_out3 = (coeff20);
	6'd5 : lut9_out3 = (coeff18+coeff20);
	6'd6 : lut9_out3 = (coeff19+coeff20);
	6'd7 : lut9_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut9_out3 = (coeff21);
	6'd9 : lut9_out3 = (coeff18+coeff21);
	6'd10 : lut9_out3 = (coeff19+coeff21);
	6'd11 : lut9_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut9_out3 = (coeff20+coeff21);
	6'd13 : lut9_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut9_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut9_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut9_out3 = (coeff22);
	6'd17 : lut9_out3 = (coeff18+coeff22);
	6'd18 : lut9_out3 = (coeff19+coeff22);
	6'd19 : lut9_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut9_out3 = (coeff20+coeff22);
	6'd21 : lut9_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut9_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut9_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut9_out3 = (coeff21+coeff22);
	6'd25 : lut9_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut9_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut9_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut9_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut9_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut9_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut9_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut9_out3 = (coeff23);
	6'd33 : lut9_out3 = (coeff18+coeff23);
	6'd34 : lut9_out3 = (coeff19+coeff23);
	6'd35 : lut9_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut9_out3 = (coeff20+coeff23);
	6'd37 : lut9_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut9_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut9_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut9_out3 = (coeff21+coeff23);
	6'd41 : lut9_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut9_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut9_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut9_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut9_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut9_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut9_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut9_out3 = (coeff22+coeff23);
	6'd49 : lut9_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut9_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut9_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut9_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut9_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut9_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut9_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut9_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut9_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut9_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut9_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut9_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut9_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut9_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut9_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut9_out3 = 0;
	endcase
end
always @(lut_addr9_4)
begin
	case(lut_addr9_4)
	6'd0 : lut9_out4 = (0);
	6'd1 : lut9_out4 = (coeff24);
	6'd2 : lut9_out4 = (coeff25);
	6'd3 : lut9_out4 = (coeff24+coeff25);
	6'd4 : lut9_out4 = (coeff26);
	6'd5 : lut9_out4 = (coeff24+coeff26);
	6'd6 : lut9_out4 = (coeff25+coeff26);
	6'd7 : lut9_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut9_out4 = (coeff27);
	6'd9 : lut9_out4 = (coeff24+coeff27);
	6'd10 : lut9_out4 = (coeff25+coeff27);
	6'd11 : lut9_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut9_out4 = (coeff26+coeff27);
	6'd13 : lut9_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut9_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut9_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut9_out4 = (coeff28);
	6'd17 : lut9_out4 = (coeff24+coeff28);
	6'd18 : lut9_out4 = (coeff25+coeff28);
	6'd19 : lut9_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut9_out4 = (coeff26+coeff28);
	6'd21 : lut9_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut9_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut9_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut9_out4 = (coeff27+coeff28);
	6'd25 : lut9_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut9_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut9_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut9_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut9_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut9_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut9_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut9_out4 = (coeff29);
	6'd33 : lut9_out4 = (coeff24+coeff29);
	6'd34 : lut9_out4 = (coeff25+coeff29);
	6'd35 : lut9_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut9_out4 = (coeff26+coeff29);
	6'd37 : lut9_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut9_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut9_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut9_out4 = (coeff27+coeff29);
	6'd41 : lut9_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut9_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut9_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut9_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut9_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut9_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut9_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut9_out4 = (coeff28+coeff29);
	6'd49 : lut9_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut9_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut9_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut9_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut9_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut9_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut9_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut9_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut9_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut9_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut9_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut9_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut9_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut9_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut9_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut9_out4 = 0;
	endcase
end
always @(lut_addr9_5)
begin
	case(lut_addr9_5)
	1'd0 : lut9_out5 = (0);
	1'd1 : lut9_out5 = (coeff30);
	default :lut9_out5 = 0;
	endcase
end
always @(lut_addr10_0)
begin
	case(lut_addr10_0)
	6'd0 : lut10_out0 = (0);
	6'd1 : lut10_out0 = (coeff0);
	6'd2 : lut10_out0 = (coeff1);
	6'd3 : lut10_out0 = (coeff0+coeff1);
	6'd4 : lut10_out0 = (coeff2);
	6'd5 : lut10_out0 = (coeff0+coeff2);
	6'd6 : lut10_out0 = (coeff1+coeff2);
	6'd7 : lut10_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut10_out0 = (coeff3);
	6'd9 : lut10_out0 = (coeff0+coeff3);
	6'd10 : lut10_out0 = (coeff1+coeff3);
	6'd11 : lut10_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut10_out0 = (coeff2+coeff3);
	6'd13 : lut10_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut10_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut10_out0 = (coeff4);
	6'd17 : lut10_out0 = (coeff0+coeff4);
	6'd18 : lut10_out0 = (coeff1+coeff4);
	6'd19 : lut10_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut10_out0 = (coeff2+coeff4);
	6'd21 : lut10_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut10_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut10_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut10_out0 = (coeff3+coeff4);
	6'd25 : lut10_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut10_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut10_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut10_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut10_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut10_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut10_out0 = (coeff5);
	6'd33 : lut10_out0 = (coeff0+coeff5);
	6'd34 : lut10_out0 = (coeff1+coeff5);
	6'd35 : lut10_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut10_out0 = (coeff2+coeff5);
	6'd37 : lut10_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut10_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut10_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut10_out0 = (coeff3+coeff5);
	6'd41 : lut10_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut10_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut10_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut10_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut10_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut10_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut10_out0 = (coeff4+coeff5);
	6'd49 : lut10_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut10_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut10_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut10_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut10_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut10_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut10_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut10_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut10_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut10_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut10_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut10_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut10_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut10_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut10_out0 = 0;
	endcase
end
always @(lut_addr10_1)
begin
	case(lut_addr10_1)
	6'd0 : lut10_out1 = (0);
	6'd1 : lut10_out1 = (coeff6);
	6'd2 : lut10_out1 = (coeff7);
	6'd3 : lut10_out1 = (coeff6+coeff7);
	6'd4 : lut10_out1 = (coeff8);
	6'd5 : lut10_out1 = (coeff6+coeff8);
	6'd6 : lut10_out1 = (coeff7+coeff8);
	6'd7 : lut10_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut10_out1 = (coeff9);
	6'd9 : lut10_out1 = (coeff6+coeff9);
	6'd10 : lut10_out1 = (coeff7+coeff9);
	6'd11 : lut10_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut10_out1 = (coeff8+coeff9);
	6'd13 : lut10_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut10_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut10_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut10_out1 = (coeff10);
	6'd17 : lut10_out1 = (coeff6+coeff10);
	6'd18 : lut10_out1 = (coeff7+coeff10);
	6'd19 : lut10_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut10_out1 = (coeff8+coeff10);
	6'd21 : lut10_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut10_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut10_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut10_out1 = (coeff9+coeff10);
	6'd25 : lut10_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut10_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut10_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut10_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut10_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut10_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut10_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut10_out1 = (coeff11);
	6'd33 : lut10_out1 = (coeff6+coeff11);
	6'd34 : lut10_out1 = (coeff7+coeff11);
	6'd35 : lut10_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut10_out1 = (coeff8+coeff11);
	6'd37 : lut10_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut10_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut10_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut10_out1 = (coeff9+coeff11);
	6'd41 : lut10_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut10_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut10_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut10_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut10_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut10_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut10_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut10_out1 = (coeff10+coeff11);
	6'd49 : lut10_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut10_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut10_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut10_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut10_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut10_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut10_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut10_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut10_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut10_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut10_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut10_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut10_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut10_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut10_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut10_out1 = 0;
	endcase
end
always @(lut_addr10_2)
begin
	case(lut_addr10_2)
	6'd0 : lut10_out2 = (0);
	6'd1 : lut10_out2 = (coeff12);
	6'd2 : lut10_out2 = (coeff13);
	6'd3 : lut10_out2 = (coeff12+coeff13);
	6'd4 : lut10_out2 = (coeff14);
	6'd5 : lut10_out2 = (coeff12+coeff14);
	6'd6 : lut10_out2 = (coeff13+coeff14);
	6'd7 : lut10_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut10_out2 = (coeff15);
	6'd9 : lut10_out2 = (coeff12+coeff15);
	6'd10 : lut10_out2 = (coeff13+coeff15);
	6'd11 : lut10_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut10_out2 = (coeff14+coeff15);
	6'd13 : lut10_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut10_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut10_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut10_out2 = (coeff16);
	6'd17 : lut10_out2 = (coeff12+coeff16);
	6'd18 : lut10_out2 = (coeff13+coeff16);
	6'd19 : lut10_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut10_out2 = (coeff14+coeff16);
	6'd21 : lut10_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut10_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut10_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut10_out2 = (coeff15+coeff16);
	6'd25 : lut10_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut10_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut10_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut10_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut10_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut10_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut10_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut10_out2 = (coeff17);
	6'd33 : lut10_out2 = (coeff12+coeff17);
	6'd34 : lut10_out2 = (coeff13+coeff17);
	6'd35 : lut10_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut10_out2 = (coeff14+coeff17);
	6'd37 : lut10_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut10_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut10_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut10_out2 = (coeff15+coeff17);
	6'd41 : lut10_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut10_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut10_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut10_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut10_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut10_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut10_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut10_out2 = (coeff16+coeff17);
	6'd49 : lut10_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut10_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut10_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut10_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut10_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut10_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut10_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut10_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut10_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut10_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut10_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut10_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut10_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut10_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut10_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut10_out2 = 0;
	endcase
end
always @(lut_addr10_3)
begin
	case(lut_addr10_3)
	6'd0 : lut10_out3 = (0);
	6'd1 : lut10_out3 = (coeff18);
	6'd2 : lut10_out3 = (coeff19);
	6'd3 : lut10_out3 = (coeff18+coeff19);
	6'd4 : lut10_out3 = (coeff20);
	6'd5 : lut10_out3 = (coeff18+coeff20);
	6'd6 : lut10_out3 = (coeff19+coeff20);
	6'd7 : lut10_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut10_out3 = (coeff21);
	6'd9 : lut10_out3 = (coeff18+coeff21);
	6'd10 : lut10_out3 = (coeff19+coeff21);
	6'd11 : lut10_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut10_out3 = (coeff20+coeff21);
	6'd13 : lut10_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut10_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut10_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut10_out3 = (coeff22);
	6'd17 : lut10_out3 = (coeff18+coeff22);
	6'd18 : lut10_out3 = (coeff19+coeff22);
	6'd19 : lut10_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut10_out3 = (coeff20+coeff22);
	6'd21 : lut10_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut10_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut10_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut10_out3 = (coeff21+coeff22);
	6'd25 : lut10_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut10_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut10_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut10_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut10_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut10_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut10_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut10_out3 = (coeff23);
	6'd33 : lut10_out3 = (coeff18+coeff23);
	6'd34 : lut10_out3 = (coeff19+coeff23);
	6'd35 : lut10_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut10_out3 = (coeff20+coeff23);
	6'd37 : lut10_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut10_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut10_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut10_out3 = (coeff21+coeff23);
	6'd41 : lut10_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut10_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut10_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut10_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut10_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut10_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut10_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut10_out3 = (coeff22+coeff23);
	6'd49 : lut10_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut10_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut10_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut10_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut10_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut10_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut10_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut10_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut10_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut10_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut10_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut10_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut10_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut10_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut10_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut10_out3 = 0;
	endcase
end
always @(lut_addr10_4)
begin
	case(lut_addr10_4)
	6'd0 : lut10_out4 = (0);
	6'd1 : lut10_out4 = (coeff24);
	6'd2 : lut10_out4 = (coeff25);
	6'd3 : lut10_out4 = (coeff24+coeff25);
	6'd4 : lut10_out4 = (coeff26);
	6'd5 : lut10_out4 = (coeff24+coeff26);
	6'd6 : lut10_out4 = (coeff25+coeff26);
	6'd7 : lut10_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut10_out4 = (coeff27);
	6'd9 : lut10_out4 = (coeff24+coeff27);
	6'd10 : lut10_out4 = (coeff25+coeff27);
	6'd11 : lut10_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut10_out4 = (coeff26+coeff27);
	6'd13 : lut10_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut10_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut10_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut10_out4 = (coeff28);
	6'd17 : lut10_out4 = (coeff24+coeff28);
	6'd18 : lut10_out4 = (coeff25+coeff28);
	6'd19 : lut10_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut10_out4 = (coeff26+coeff28);
	6'd21 : lut10_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut10_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut10_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut10_out4 = (coeff27+coeff28);
	6'd25 : lut10_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut10_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut10_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut10_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut10_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut10_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut10_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut10_out4 = (coeff29);
	6'd33 : lut10_out4 = (coeff24+coeff29);
	6'd34 : lut10_out4 = (coeff25+coeff29);
	6'd35 : lut10_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut10_out4 = (coeff26+coeff29);
	6'd37 : lut10_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut10_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut10_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut10_out4 = (coeff27+coeff29);
	6'd41 : lut10_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut10_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut10_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut10_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut10_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut10_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut10_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut10_out4 = (coeff28+coeff29);
	6'd49 : lut10_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut10_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut10_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut10_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut10_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut10_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut10_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut10_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut10_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut10_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut10_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut10_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut10_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut10_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut10_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut10_out4 = 0;
	endcase
end
always @(lut_addr10_5)
begin
	case(lut_addr10_5)
	1'd0 : lut10_out5 = (0);
	1'd1 : lut10_out5 = (coeff30);
	default :lut10_out5 = 0;
	endcase
end
always @(lut_addr11_0)
begin
	case(lut_addr11_0)
	6'd0 : lut11_out0 = (0);
	6'd1 : lut11_out0 = (coeff0);
	6'd2 : lut11_out0 = (coeff1);
	6'd3 : lut11_out0 = (coeff0+coeff1);
	6'd4 : lut11_out0 = (coeff2);
	6'd5 : lut11_out0 = (coeff0+coeff2);
	6'd6 : lut11_out0 = (coeff1+coeff2);
	6'd7 : lut11_out0 = (coeff0+coeff1+coeff2);
	6'd8 : lut11_out0 = (coeff3);
	6'd9 : lut11_out0 = (coeff0+coeff3);
	6'd10 : lut11_out0 = (coeff1+coeff3);
	6'd11 : lut11_out0 = (coeff0+coeff1+coeff3);
	6'd12 : lut11_out0 = (coeff2+coeff3);
	6'd13 : lut11_out0 = (coeff0+coeff2+coeff3);
	6'd14 : lut11_out0 = (coeff1+coeff2+coeff3);
	6'd15 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut11_out0 = (coeff4);
	6'd17 : lut11_out0 = (coeff0+coeff4);
	6'd18 : lut11_out0 = (coeff1+coeff4);
	6'd19 : lut11_out0 = (coeff0+coeff1+coeff4);
	6'd20 : lut11_out0 = (coeff2+coeff4);
	6'd21 : lut11_out0 = (coeff0+coeff2+coeff4);
	6'd22 : lut11_out0 = (coeff1+coeff2+coeff4);
	6'd23 : lut11_out0 = (coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut11_out0 = (coeff3+coeff4);
	6'd25 : lut11_out0 = (coeff0+coeff3+coeff4);
	6'd26 : lut11_out0 = (coeff1+coeff3+coeff4);
	6'd27 : lut11_out0 = (coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut11_out0 = (coeff2+coeff3+coeff4);
	6'd29 : lut11_out0 = (coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut11_out0 = (coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut11_out0 = (coeff5);
	6'd33 : lut11_out0 = (coeff0+coeff5);
	6'd34 : lut11_out0 = (coeff1+coeff5);
	6'd35 : lut11_out0 = (coeff0+coeff1+coeff5);
	6'd36 : lut11_out0 = (coeff2+coeff5);
	6'd37 : lut11_out0 = (coeff0+coeff2+coeff5);
	6'd38 : lut11_out0 = (coeff1+coeff2+coeff5);
	6'd39 : lut11_out0 = (coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut11_out0 = (coeff3+coeff5);
	6'd41 : lut11_out0 = (coeff0+coeff3+coeff5);
	6'd42 : lut11_out0 = (coeff1+coeff3+coeff5);
	6'd43 : lut11_out0 = (coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut11_out0 = (coeff2+coeff3+coeff5);
	6'd45 : lut11_out0 = (coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut11_out0 = (coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut11_out0 = (coeff4+coeff5);
	6'd49 : lut11_out0 = (coeff0+coeff4+coeff5);
	6'd50 : lut11_out0 = (coeff1+coeff4+coeff5);
	6'd51 : lut11_out0 = (coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut11_out0 = (coeff2+coeff4+coeff5);
	6'd53 : lut11_out0 = (coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut11_out0 = (coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut11_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut11_out0 = (coeff3+coeff4+coeff5);
	6'd57 : lut11_out0 = (coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut11_out0 = (coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut11_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut11_out0 = (coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut11_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut11_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut11_out0 = 0;
	endcase
end
always @(lut_addr11_1)
begin
	case(lut_addr11_1)
	6'd0 : lut11_out1 = (0);
	6'd1 : lut11_out1 = (coeff6);
	6'd2 : lut11_out1 = (coeff7);
	6'd3 : lut11_out1 = (coeff6+coeff7);
	6'd4 : lut11_out1 = (coeff8);
	6'd5 : lut11_out1 = (coeff6+coeff8);
	6'd6 : lut11_out1 = (coeff7+coeff8);
	6'd7 : lut11_out1 = (coeff6+coeff7+coeff8);
	6'd8 : lut11_out1 = (coeff9);
	6'd9 : lut11_out1 = (coeff6+coeff9);
	6'd10 : lut11_out1 = (coeff7+coeff9);
	6'd11 : lut11_out1 = (coeff6+coeff7+coeff9);
	6'd12 : lut11_out1 = (coeff8+coeff9);
	6'd13 : lut11_out1 = (coeff6+coeff8+coeff9);
	6'd14 : lut11_out1 = (coeff7+coeff8+coeff9);
	6'd15 : lut11_out1 = (coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut11_out1 = (coeff10);
	6'd17 : lut11_out1 = (coeff6+coeff10);
	6'd18 : lut11_out1 = (coeff7+coeff10);
	6'd19 : lut11_out1 = (coeff6+coeff7+coeff10);
	6'd20 : lut11_out1 = (coeff8+coeff10);
	6'd21 : lut11_out1 = (coeff6+coeff8+coeff10);
	6'd22 : lut11_out1 = (coeff7+coeff8+coeff10);
	6'd23 : lut11_out1 = (coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut11_out1 = (coeff9+coeff10);
	6'd25 : lut11_out1 = (coeff6+coeff9+coeff10);
	6'd26 : lut11_out1 = (coeff7+coeff9+coeff10);
	6'd27 : lut11_out1 = (coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut11_out1 = (coeff8+coeff9+coeff10);
	6'd29 : lut11_out1 = (coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut11_out1 = (coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut11_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut11_out1 = (coeff11);
	6'd33 : lut11_out1 = (coeff6+coeff11);
	6'd34 : lut11_out1 = (coeff7+coeff11);
	6'd35 : lut11_out1 = (coeff6+coeff7+coeff11);
	6'd36 : lut11_out1 = (coeff8+coeff11);
	6'd37 : lut11_out1 = (coeff6+coeff8+coeff11);
	6'd38 : lut11_out1 = (coeff7+coeff8+coeff11);
	6'd39 : lut11_out1 = (coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut11_out1 = (coeff9+coeff11);
	6'd41 : lut11_out1 = (coeff6+coeff9+coeff11);
	6'd42 : lut11_out1 = (coeff7+coeff9+coeff11);
	6'd43 : lut11_out1 = (coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut11_out1 = (coeff8+coeff9+coeff11);
	6'd45 : lut11_out1 = (coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut11_out1 = (coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut11_out1 = (coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut11_out1 = (coeff10+coeff11);
	6'd49 : lut11_out1 = (coeff6+coeff10+coeff11);
	6'd50 : lut11_out1 = (coeff7+coeff10+coeff11);
	6'd51 : lut11_out1 = (coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut11_out1 = (coeff8+coeff10+coeff11);
	6'd53 : lut11_out1 = (coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut11_out1 = (coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut11_out1 = (coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut11_out1 = (coeff9+coeff10+coeff11);
	6'd57 : lut11_out1 = (coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut11_out1 = (coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut11_out1 = (coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut11_out1 = (coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut11_out1 = (coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut11_out1 = (coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut11_out1 = (coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut11_out1 = 0;
	endcase
end
always @(lut_addr11_2)
begin
	case(lut_addr11_2)
	6'd0 : lut11_out2 = (0);
	6'd1 : lut11_out2 = (coeff12);
	6'd2 : lut11_out2 = (coeff13);
	6'd3 : lut11_out2 = (coeff12+coeff13);
	6'd4 : lut11_out2 = (coeff14);
	6'd5 : lut11_out2 = (coeff12+coeff14);
	6'd6 : lut11_out2 = (coeff13+coeff14);
	6'd7 : lut11_out2 = (coeff12+coeff13+coeff14);
	6'd8 : lut11_out2 = (coeff15);
	6'd9 : lut11_out2 = (coeff12+coeff15);
	6'd10 : lut11_out2 = (coeff13+coeff15);
	6'd11 : lut11_out2 = (coeff12+coeff13+coeff15);
	6'd12 : lut11_out2 = (coeff14+coeff15);
	6'd13 : lut11_out2 = (coeff12+coeff14+coeff15);
	6'd14 : lut11_out2 = (coeff13+coeff14+coeff15);
	6'd15 : lut11_out2 = (coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut11_out2 = (coeff16);
	6'd17 : lut11_out2 = (coeff12+coeff16);
	6'd18 : lut11_out2 = (coeff13+coeff16);
	6'd19 : lut11_out2 = (coeff12+coeff13+coeff16);
	6'd20 : lut11_out2 = (coeff14+coeff16);
	6'd21 : lut11_out2 = (coeff12+coeff14+coeff16);
	6'd22 : lut11_out2 = (coeff13+coeff14+coeff16);
	6'd23 : lut11_out2 = (coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut11_out2 = (coeff15+coeff16);
	6'd25 : lut11_out2 = (coeff12+coeff15+coeff16);
	6'd26 : lut11_out2 = (coeff13+coeff15+coeff16);
	6'd27 : lut11_out2 = (coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut11_out2 = (coeff14+coeff15+coeff16);
	6'd29 : lut11_out2 = (coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut11_out2 = (coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut11_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut11_out2 = (coeff17);
	6'd33 : lut11_out2 = (coeff12+coeff17);
	6'd34 : lut11_out2 = (coeff13+coeff17);
	6'd35 : lut11_out2 = (coeff12+coeff13+coeff17);
	6'd36 : lut11_out2 = (coeff14+coeff17);
	6'd37 : lut11_out2 = (coeff12+coeff14+coeff17);
	6'd38 : lut11_out2 = (coeff13+coeff14+coeff17);
	6'd39 : lut11_out2 = (coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut11_out2 = (coeff15+coeff17);
	6'd41 : lut11_out2 = (coeff12+coeff15+coeff17);
	6'd42 : lut11_out2 = (coeff13+coeff15+coeff17);
	6'd43 : lut11_out2 = (coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut11_out2 = (coeff14+coeff15+coeff17);
	6'd45 : lut11_out2 = (coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut11_out2 = (coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut11_out2 = (coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut11_out2 = (coeff16+coeff17);
	6'd49 : lut11_out2 = (coeff12+coeff16+coeff17);
	6'd50 : lut11_out2 = (coeff13+coeff16+coeff17);
	6'd51 : lut11_out2 = (coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut11_out2 = (coeff14+coeff16+coeff17);
	6'd53 : lut11_out2 = (coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut11_out2 = (coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut11_out2 = (coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut11_out2 = (coeff15+coeff16+coeff17);
	6'd57 : lut11_out2 = (coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut11_out2 = (coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut11_out2 = (coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut11_out2 = (coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut11_out2 = (coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut11_out2 = (coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut11_out2 = (coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut11_out2 = 0;
	endcase
end
always @(lut_addr11_3)
begin
	case(lut_addr11_3)
	6'd0 : lut11_out3 = (0);
	6'd1 : lut11_out3 = (coeff18);
	6'd2 : lut11_out3 = (coeff19);
	6'd3 : lut11_out3 = (coeff18+coeff19);
	6'd4 : lut11_out3 = (coeff20);
	6'd5 : lut11_out3 = (coeff18+coeff20);
	6'd6 : lut11_out3 = (coeff19+coeff20);
	6'd7 : lut11_out3 = (coeff18+coeff19+coeff20);
	6'd8 : lut11_out3 = (coeff21);
	6'd9 : lut11_out3 = (coeff18+coeff21);
	6'd10 : lut11_out3 = (coeff19+coeff21);
	6'd11 : lut11_out3 = (coeff18+coeff19+coeff21);
	6'd12 : lut11_out3 = (coeff20+coeff21);
	6'd13 : lut11_out3 = (coeff18+coeff20+coeff21);
	6'd14 : lut11_out3 = (coeff19+coeff20+coeff21);
	6'd15 : lut11_out3 = (coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut11_out3 = (coeff22);
	6'd17 : lut11_out3 = (coeff18+coeff22);
	6'd18 : lut11_out3 = (coeff19+coeff22);
	6'd19 : lut11_out3 = (coeff18+coeff19+coeff22);
	6'd20 : lut11_out3 = (coeff20+coeff22);
	6'd21 : lut11_out3 = (coeff18+coeff20+coeff22);
	6'd22 : lut11_out3 = (coeff19+coeff20+coeff22);
	6'd23 : lut11_out3 = (coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut11_out3 = (coeff21+coeff22);
	6'd25 : lut11_out3 = (coeff18+coeff21+coeff22);
	6'd26 : lut11_out3 = (coeff19+coeff21+coeff22);
	6'd27 : lut11_out3 = (coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut11_out3 = (coeff20+coeff21+coeff22);
	6'd29 : lut11_out3 = (coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut11_out3 = (coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut11_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut11_out3 = (coeff23);
	6'd33 : lut11_out3 = (coeff18+coeff23);
	6'd34 : lut11_out3 = (coeff19+coeff23);
	6'd35 : lut11_out3 = (coeff18+coeff19+coeff23);
	6'd36 : lut11_out3 = (coeff20+coeff23);
	6'd37 : lut11_out3 = (coeff18+coeff20+coeff23);
	6'd38 : lut11_out3 = (coeff19+coeff20+coeff23);
	6'd39 : lut11_out3 = (coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut11_out3 = (coeff21+coeff23);
	6'd41 : lut11_out3 = (coeff18+coeff21+coeff23);
	6'd42 : lut11_out3 = (coeff19+coeff21+coeff23);
	6'd43 : lut11_out3 = (coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut11_out3 = (coeff20+coeff21+coeff23);
	6'd45 : lut11_out3 = (coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut11_out3 = (coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut11_out3 = (coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut11_out3 = (coeff22+coeff23);
	6'd49 : lut11_out3 = (coeff18+coeff22+coeff23);
	6'd50 : lut11_out3 = (coeff19+coeff22+coeff23);
	6'd51 : lut11_out3 = (coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut11_out3 = (coeff20+coeff22+coeff23);
	6'd53 : lut11_out3 = (coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut11_out3 = (coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut11_out3 = (coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut11_out3 = (coeff21+coeff22+coeff23);
	6'd57 : lut11_out3 = (coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut11_out3 = (coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut11_out3 = (coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut11_out3 = (coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut11_out3 = (coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut11_out3 = (coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut11_out3 = (coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut11_out3 = 0;
	endcase
end
always @(lut_addr11_4)
begin
	case(lut_addr11_4)
	6'd0 : lut11_out4 = (0);
	6'd1 : lut11_out4 = (coeff24);
	6'd2 : lut11_out4 = (coeff25);
	6'd3 : lut11_out4 = (coeff24+coeff25);
	6'd4 : lut11_out4 = (coeff26);
	6'd5 : lut11_out4 = (coeff24+coeff26);
	6'd6 : lut11_out4 = (coeff25+coeff26);
	6'd7 : lut11_out4 = (coeff24+coeff25+coeff26);
	6'd8 : lut11_out4 = (coeff27);
	6'd9 : lut11_out4 = (coeff24+coeff27);
	6'd10 : lut11_out4 = (coeff25+coeff27);
	6'd11 : lut11_out4 = (coeff24+coeff25+coeff27);
	6'd12 : lut11_out4 = (coeff26+coeff27);
	6'd13 : lut11_out4 = (coeff24+coeff26+coeff27);
	6'd14 : lut11_out4 = (coeff25+coeff26+coeff27);
	6'd15 : lut11_out4 = (coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut11_out4 = (coeff28);
	6'd17 : lut11_out4 = (coeff24+coeff28);
	6'd18 : lut11_out4 = (coeff25+coeff28);
	6'd19 : lut11_out4 = (coeff24+coeff25+coeff28);
	6'd20 : lut11_out4 = (coeff26+coeff28);
	6'd21 : lut11_out4 = (coeff24+coeff26+coeff28);
	6'd22 : lut11_out4 = (coeff25+coeff26+coeff28);
	6'd23 : lut11_out4 = (coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut11_out4 = (coeff27+coeff28);
	6'd25 : lut11_out4 = (coeff24+coeff27+coeff28);
	6'd26 : lut11_out4 = (coeff25+coeff27+coeff28);
	6'd27 : lut11_out4 = (coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut11_out4 = (coeff26+coeff27+coeff28);
	6'd29 : lut11_out4 = (coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut11_out4 = (coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut11_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut11_out4 = (coeff29);
	6'd33 : lut11_out4 = (coeff24+coeff29);
	6'd34 : lut11_out4 = (coeff25+coeff29);
	6'd35 : lut11_out4 = (coeff24+coeff25+coeff29);
	6'd36 : lut11_out4 = (coeff26+coeff29);
	6'd37 : lut11_out4 = (coeff24+coeff26+coeff29);
	6'd38 : lut11_out4 = (coeff25+coeff26+coeff29);
	6'd39 : lut11_out4 = (coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut11_out4 = (coeff27+coeff29);
	6'd41 : lut11_out4 = (coeff24+coeff27+coeff29);
	6'd42 : lut11_out4 = (coeff25+coeff27+coeff29);
	6'd43 : lut11_out4 = (coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut11_out4 = (coeff26+coeff27+coeff29);
	6'd45 : lut11_out4 = (coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut11_out4 = (coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut11_out4 = (coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut11_out4 = (coeff28+coeff29);
	6'd49 : lut11_out4 = (coeff24+coeff28+coeff29);
	6'd50 : lut11_out4 = (coeff25+coeff28+coeff29);
	6'd51 : lut11_out4 = (coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut11_out4 = (coeff26+coeff28+coeff29);
	6'd53 : lut11_out4 = (coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut11_out4 = (coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut11_out4 = (coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut11_out4 = (coeff27+coeff28+coeff29);
	6'd57 : lut11_out4 = (coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut11_out4 = (coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut11_out4 = (coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut11_out4 = (coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut11_out4 = (coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut11_out4 = (coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut11_out4 = (coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut11_out4 = 0;
	endcase
end
always @(lut_addr11_5)
begin
	case(lut_addr11_5)
	1'd0 : lut11_out5 = (0);
	1'd1 : lut11_out5 = (coeff30);
	default :lut11_out5 = 0;
	endcase
end
always @(lut_addr12_0)
begin
	case(lut_addr12_0)
	6'd0 : lut12_out0 = (0);
	6'd1 : lut12_out0 = -(coeff0);
	6'd2 : lut12_out0 = -(coeff1);
	6'd3 : lut12_out0 = -(coeff0+coeff1);
	6'd4 : lut12_out0 = -(coeff2);
	6'd5 : lut12_out0 = -(coeff0+coeff2);
	6'd6 : lut12_out0 = -(coeff1+coeff2);
	6'd7 : lut12_out0 = -(coeff0+coeff1+coeff2);
	6'd8 : lut12_out0 = -(coeff3);
	6'd9 : lut12_out0 = -(coeff0+coeff3);
	6'd10 : lut12_out0 = -(coeff1+coeff3);
	6'd11 : lut12_out0 = -(coeff0+coeff1+coeff3);
	6'd12 : lut12_out0 = -(coeff2+coeff3);
	6'd13 : lut12_out0 = -(coeff0+coeff2+coeff3);
	6'd14 : lut12_out0 = -(coeff1+coeff2+coeff3);
	6'd15 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3);
	6'd16 : lut12_out0 = -(coeff4);
	6'd17 : lut12_out0 = -(coeff0+coeff4);
	6'd18 : lut12_out0 = -(coeff1+coeff4);
	6'd19 : lut12_out0 = -(coeff0+coeff1+coeff4);
	6'd20 : lut12_out0 = -(coeff2+coeff4);
	6'd21 : lut12_out0 = -(coeff0+coeff2+coeff4);
	6'd22 : lut12_out0 = -(coeff1+coeff2+coeff4);
	6'd23 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff4);
	6'd24 : lut12_out0 = -(coeff3+coeff4);
	6'd25 : lut12_out0 = -(coeff0+coeff3+coeff4);
	6'd26 : lut12_out0 = -(coeff1+coeff3+coeff4);
	6'd27 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff4);
	6'd28 : lut12_out0 = -(coeff2+coeff3+coeff4);
	6'd29 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff4);
	6'd30 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff4);
	6'd31 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff4);
	6'd32 : lut12_out0 = -(coeff5);
	6'd33 : lut12_out0 = -(coeff0+coeff5);
	6'd34 : lut12_out0 = -(coeff1+coeff5);
	6'd35 : lut12_out0 = -(coeff0+coeff1+coeff5);
	6'd36 : lut12_out0 = -(coeff2+coeff5);
	6'd37 : lut12_out0 = -(coeff0+coeff2+coeff5);
	6'd38 : lut12_out0 = -(coeff1+coeff2+coeff5);
	6'd39 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff5);
	6'd40 : lut12_out0 = -(coeff3+coeff5);
	6'd41 : lut12_out0 = -(coeff0+coeff3+coeff5);
	6'd42 : lut12_out0 = -(coeff1+coeff3+coeff5);
	6'd43 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff5);
	6'd44 : lut12_out0 = -(coeff2+coeff3+coeff5);
	6'd45 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff5);
	6'd46 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff5);
	6'd47 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff5);
	6'd48 : lut12_out0 = -(coeff4+coeff5);
	6'd49 : lut12_out0 = -(coeff0+coeff4+coeff5);
	6'd50 : lut12_out0 = -(coeff1+coeff4+coeff5);
	6'd51 : lut12_out0 = -(coeff0+coeff1+coeff4+coeff5);
	6'd52 : lut12_out0 = -(coeff2+coeff4+coeff5);
	6'd53 : lut12_out0 = -(coeff0+coeff2+coeff4+coeff5);
	6'd54 : lut12_out0 = -(coeff1+coeff2+coeff4+coeff5);
	6'd55 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff4+coeff5);
	6'd56 : lut12_out0 = -(coeff3+coeff4+coeff5);
	6'd57 : lut12_out0 = -(coeff0+coeff3+coeff4+coeff5);
	6'd58 : lut12_out0 = -(coeff1+coeff3+coeff4+coeff5);
	6'd59 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff4+coeff5);
	6'd60 : lut12_out0 = -(coeff2+coeff3+coeff4+coeff5);
	6'd61 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff4+coeff5);
	6'd62 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff4+coeff5);
	6'd63 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	default :lut12_out0 = 0;
	endcase
end
always @(lut_addr12_1)
begin
	case(lut_addr12_1)
	6'd0 : lut12_out1 = (0);
	6'd1 : lut12_out1 = -(coeff6);
	6'd2 : lut12_out1 = -(coeff7);
	6'd3 : lut12_out1 = -(coeff6+coeff7);
	6'd4 : lut12_out1 = -(coeff8);
	6'd5 : lut12_out1 = -(coeff6+coeff8);
	6'd6 : lut12_out1 = -(coeff7+coeff8);
	6'd7 : lut12_out1 = -(coeff6+coeff7+coeff8);
	6'd8 : lut12_out1 = -(coeff9);
	6'd9 : lut12_out1 = -(coeff6+coeff9);
	6'd10 : lut12_out1 = -(coeff7+coeff9);
	6'd11 : lut12_out1 = -(coeff6+coeff7+coeff9);
	6'd12 : lut12_out1 = -(coeff8+coeff9);
	6'd13 : lut12_out1 = -(coeff6+coeff8+coeff9);
	6'd14 : lut12_out1 = -(coeff7+coeff8+coeff9);
	6'd15 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff9);
	6'd16 : lut12_out1 = -(coeff10);
	6'd17 : lut12_out1 = -(coeff6+coeff10);
	6'd18 : lut12_out1 = -(coeff7+coeff10);
	6'd19 : lut12_out1 = -(coeff6+coeff7+coeff10);
	6'd20 : lut12_out1 = -(coeff8+coeff10);
	6'd21 : lut12_out1 = -(coeff6+coeff8+coeff10);
	6'd22 : lut12_out1 = -(coeff7+coeff8+coeff10);
	6'd23 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff10);
	6'd24 : lut12_out1 = -(coeff9+coeff10);
	6'd25 : lut12_out1 = -(coeff6+coeff9+coeff10);
	6'd26 : lut12_out1 = -(coeff7+coeff9+coeff10);
	6'd27 : lut12_out1 = -(coeff6+coeff7+coeff9+coeff10);
	6'd28 : lut12_out1 = -(coeff8+coeff9+coeff10);
	6'd29 : lut12_out1 = -(coeff6+coeff8+coeff9+coeff10);
	6'd30 : lut12_out1 = -(coeff7+coeff8+coeff9+coeff10);
	6'd31 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff9+coeff10);
	6'd32 : lut12_out1 = -(coeff11);
	6'd33 : lut12_out1 = -(coeff6+coeff11);
	6'd34 : lut12_out1 = -(coeff7+coeff11);
	6'd35 : lut12_out1 = -(coeff6+coeff7+coeff11);
	6'd36 : lut12_out1 = -(coeff8+coeff11);
	6'd37 : lut12_out1 = -(coeff6+coeff8+coeff11);
	6'd38 : lut12_out1 = -(coeff7+coeff8+coeff11);
	6'd39 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff11);
	6'd40 : lut12_out1 = -(coeff9+coeff11);
	6'd41 : lut12_out1 = -(coeff6+coeff9+coeff11);
	6'd42 : lut12_out1 = -(coeff7+coeff9+coeff11);
	6'd43 : lut12_out1 = -(coeff6+coeff7+coeff9+coeff11);
	6'd44 : lut12_out1 = -(coeff8+coeff9+coeff11);
	6'd45 : lut12_out1 = -(coeff6+coeff8+coeff9+coeff11);
	6'd46 : lut12_out1 = -(coeff7+coeff8+coeff9+coeff11);
	6'd47 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff9+coeff11);
	6'd48 : lut12_out1 = -(coeff10+coeff11);
	6'd49 : lut12_out1 = -(coeff6+coeff10+coeff11);
	6'd50 : lut12_out1 = -(coeff7+coeff10+coeff11);
	6'd51 : lut12_out1 = -(coeff6+coeff7+coeff10+coeff11);
	6'd52 : lut12_out1 = -(coeff8+coeff10+coeff11);
	6'd53 : lut12_out1 = -(coeff6+coeff8+coeff10+coeff11);
	6'd54 : lut12_out1 = -(coeff7+coeff8+coeff10+coeff11);
	6'd55 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff10+coeff11);
	6'd56 : lut12_out1 = -(coeff9+coeff10+coeff11);
	6'd57 : lut12_out1 = -(coeff6+coeff9+coeff10+coeff11);
	6'd58 : lut12_out1 = -(coeff7+coeff9+coeff10+coeff11);
	6'd59 : lut12_out1 = -(coeff6+coeff7+coeff9+coeff10+coeff11);
	6'd60 : lut12_out1 = -(coeff8+coeff9+coeff10+coeff11);
	6'd61 : lut12_out1 = -(coeff6+coeff8+coeff9+coeff10+coeff11);
	6'd62 : lut12_out1 = -(coeff7+coeff8+coeff9+coeff10+coeff11);
	6'd63 : lut12_out1 = -(coeff6+coeff7+coeff8+coeff9+coeff10+coeff11);
	default :lut12_out1 = 0;
	endcase
end
always @(lut_addr12_2)
begin
	case(lut_addr12_2)
	6'd0 : lut12_out2 = (0);
	6'd1 : lut12_out2 = -(coeff12);
	6'd2 : lut12_out2 = -(coeff13);
	6'd3 : lut12_out2 = -(coeff12+coeff13);
	6'd4 : lut12_out2 = -(coeff14);
	6'd5 : lut12_out2 = -(coeff12+coeff14);
	6'd6 : lut12_out2 = -(coeff13+coeff14);
	6'd7 : lut12_out2 = -(coeff12+coeff13+coeff14);
	6'd8 : lut12_out2 = -(coeff15);
	6'd9 : lut12_out2 = -(coeff12+coeff15);
	6'd10 : lut12_out2 = -(coeff13+coeff15);
	6'd11 : lut12_out2 = -(coeff12+coeff13+coeff15);
	6'd12 : lut12_out2 = -(coeff14+coeff15);
	6'd13 : lut12_out2 = -(coeff12+coeff14+coeff15);
	6'd14 : lut12_out2 = -(coeff13+coeff14+coeff15);
	6'd15 : lut12_out2 = -(coeff12+coeff13+coeff14+coeff15);
	6'd16 : lut12_out2 = -(coeff16);
	6'd17 : lut12_out2 = -(coeff12+coeff16);
	6'd18 : lut12_out2 = -(coeff13+coeff16);
	6'd19 : lut12_out2 = -(coeff12+coeff13+coeff16);
	6'd20 : lut12_out2 = -(coeff14+coeff16);
	6'd21 : lut12_out2 = -(coeff12+coeff14+coeff16);
	6'd22 : lut12_out2 = -(coeff13+coeff14+coeff16);
	6'd23 : lut12_out2 = -(coeff12+coeff13+coeff14+coeff16);
	6'd24 : lut12_out2 = -(coeff15+coeff16);
	6'd25 : lut12_out2 = -(coeff12+coeff15+coeff16);
	6'd26 : lut12_out2 = -(coeff13+coeff15+coeff16);
	6'd27 : lut12_out2 = -(coeff12+coeff13+coeff15+coeff16);
	6'd28 : lut12_out2 = -(coeff14+coeff15+coeff16);
	6'd29 : lut12_out2 = -(coeff12+coeff14+coeff15+coeff16);
	6'd30 : lut12_out2 = -(coeff13+coeff14+coeff15+coeff16);
	6'd31 : lut12_out2 = -(coeff12+coeff13+coeff14+coeff15+coeff16);
	6'd32 : lut12_out2 = -(coeff17);
	6'd33 : lut12_out2 = -(coeff12+coeff17);
	6'd34 : lut12_out2 = -(coeff13+coeff17);
	6'd35 : lut12_out2 = -(coeff12+coeff13+coeff17);
	6'd36 : lut12_out2 = -(coeff14+coeff17);
	6'd37 : lut12_out2 = -(coeff12+coeff14+coeff17);
	6'd38 : lut12_out2 = -(coeff13+coeff14+coeff17);
	6'd39 : lut12_out2 = -(coeff12+coeff13+coeff14+coeff17);
	6'd40 : lut12_out2 = -(coeff15+coeff17);
	6'd41 : lut12_out2 = -(coeff12+coeff15+coeff17);
	6'd42 : lut12_out2 = -(coeff13+coeff15+coeff17);
	6'd43 : lut12_out2 = -(coeff12+coeff13+coeff15+coeff17);
	6'd44 : lut12_out2 = -(coeff14+coeff15+coeff17);
	6'd45 : lut12_out2 = -(coeff12+coeff14+coeff15+coeff17);
	6'd46 : lut12_out2 = -(coeff13+coeff14+coeff15+coeff17);
	6'd47 : lut12_out2 = -(coeff12+coeff13+coeff14+coeff15+coeff17);
	6'd48 : lut12_out2 = -(coeff16+coeff17);
	6'd49 : lut12_out2 = -(coeff12+coeff16+coeff17);
	6'd50 : lut12_out2 = -(coeff13+coeff16+coeff17);
	6'd51 : lut12_out2 = -(coeff12+coeff13+coeff16+coeff17);
	6'd52 : lut12_out2 = -(coeff14+coeff16+coeff17);
	6'd53 : lut12_out2 = -(coeff12+coeff14+coeff16+coeff17);
	6'd54 : lut12_out2 = -(coeff13+coeff14+coeff16+coeff17);
	6'd55 : lut12_out2 = -(coeff12+coeff13+coeff14+coeff16+coeff17);
	6'd56 : lut12_out2 = -(coeff15+coeff16+coeff17);
	6'd57 : lut12_out2 = -(coeff12+coeff15+coeff16+coeff17);
	6'd58 : lut12_out2 = -(coeff13+coeff15+coeff16+coeff17);
	6'd59 : lut12_out2 = -(coeff12+coeff13+coeff15+coeff16+coeff17);
	6'd60 : lut12_out2 = -(coeff14+coeff15+coeff16+coeff17);
	6'd61 : lut12_out2 = -(coeff12+coeff14+coeff15+coeff16+coeff17);
	6'd62 : lut12_out2 = -(coeff13+coeff14+coeff15+coeff16+coeff17);
	6'd63 : lut12_out2 = -(coeff12+coeff13+coeff14+coeff15+coeff16+coeff17);
	default :lut12_out2 = 0;
	endcase
end
always @(lut_addr12_3)
begin
	case(lut_addr12_3)
	6'd0 : lut12_out3 = (0);
	6'd1 : lut12_out3 = -(coeff18);
	6'd2 : lut12_out3 = -(coeff19);
	6'd3 : lut12_out3 = -(coeff18+coeff19);
	6'd4 : lut12_out3 = -(coeff20);
	6'd5 : lut12_out3 = -(coeff18+coeff20);
	6'd6 : lut12_out3 = -(coeff19+coeff20);
	6'd7 : lut12_out3 = -(coeff18+coeff19+coeff20);
	6'd8 : lut12_out3 = -(coeff21);
	6'd9 : lut12_out3 = -(coeff18+coeff21);
	6'd10 : lut12_out3 = -(coeff19+coeff21);
	6'd11 : lut12_out3 = -(coeff18+coeff19+coeff21);
	6'd12 : lut12_out3 = -(coeff20+coeff21);
	6'd13 : lut12_out3 = -(coeff18+coeff20+coeff21);
	6'd14 : lut12_out3 = -(coeff19+coeff20+coeff21);
	6'd15 : lut12_out3 = -(coeff18+coeff19+coeff20+coeff21);
	6'd16 : lut12_out3 = -(coeff22);
	6'd17 : lut12_out3 = -(coeff18+coeff22);
	6'd18 : lut12_out3 = -(coeff19+coeff22);
	6'd19 : lut12_out3 = -(coeff18+coeff19+coeff22);
	6'd20 : lut12_out3 = -(coeff20+coeff22);
	6'd21 : lut12_out3 = -(coeff18+coeff20+coeff22);
	6'd22 : lut12_out3 = -(coeff19+coeff20+coeff22);
	6'd23 : lut12_out3 = -(coeff18+coeff19+coeff20+coeff22);
	6'd24 : lut12_out3 = -(coeff21+coeff22);
	6'd25 : lut12_out3 = -(coeff18+coeff21+coeff22);
	6'd26 : lut12_out3 = -(coeff19+coeff21+coeff22);
	6'd27 : lut12_out3 = -(coeff18+coeff19+coeff21+coeff22);
	6'd28 : lut12_out3 = -(coeff20+coeff21+coeff22);
	6'd29 : lut12_out3 = -(coeff18+coeff20+coeff21+coeff22);
	6'd30 : lut12_out3 = -(coeff19+coeff20+coeff21+coeff22);
	6'd31 : lut12_out3 = -(coeff18+coeff19+coeff20+coeff21+coeff22);
	6'd32 : lut12_out3 = -(coeff23);
	6'd33 : lut12_out3 = -(coeff18+coeff23);
	6'd34 : lut12_out3 = -(coeff19+coeff23);
	6'd35 : lut12_out3 = -(coeff18+coeff19+coeff23);
	6'd36 : lut12_out3 = -(coeff20+coeff23);
	6'd37 : lut12_out3 = -(coeff18+coeff20+coeff23);
	6'd38 : lut12_out3 = -(coeff19+coeff20+coeff23);
	6'd39 : lut12_out3 = -(coeff18+coeff19+coeff20+coeff23);
	6'd40 : lut12_out3 = -(coeff21+coeff23);
	6'd41 : lut12_out3 = -(coeff18+coeff21+coeff23);
	6'd42 : lut12_out3 = -(coeff19+coeff21+coeff23);
	6'd43 : lut12_out3 = -(coeff18+coeff19+coeff21+coeff23);
	6'd44 : lut12_out3 = -(coeff20+coeff21+coeff23);
	6'd45 : lut12_out3 = -(coeff18+coeff20+coeff21+coeff23);
	6'd46 : lut12_out3 = -(coeff19+coeff20+coeff21+coeff23);
	6'd47 : lut12_out3 = -(coeff18+coeff19+coeff20+coeff21+coeff23);
	6'd48 : lut12_out3 = -(coeff22+coeff23);
	6'd49 : lut12_out3 = -(coeff18+coeff22+coeff23);
	6'd50 : lut12_out3 = -(coeff19+coeff22+coeff23);
	6'd51 : lut12_out3 = -(coeff18+coeff19+coeff22+coeff23);
	6'd52 : lut12_out3 = -(coeff20+coeff22+coeff23);
	6'd53 : lut12_out3 = -(coeff18+coeff20+coeff22+coeff23);
	6'd54 : lut12_out3 = -(coeff19+coeff20+coeff22+coeff23);
	6'd55 : lut12_out3 = -(coeff18+coeff19+coeff20+coeff22+coeff23);
	6'd56 : lut12_out3 = -(coeff21+coeff22+coeff23);
	6'd57 : lut12_out3 = -(coeff18+coeff21+coeff22+coeff23);
	6'd58 : lut12_out3 = -(coeff19+coeff21+coeff22+coeff23);
	6'd59 : lut12_out3 = -(coeff18+coeff19+coeff21+coeff22+coeff23);
	6'd60 : lut12_out3 = -(coeff20+coeff21+coeff22+coeff23);
	6'd61 : lut12_out3 = -(coeff18+coeff20+coeff21+coeff22+coeff23);
	6'd62 : lut12_out3 = -(coeff19+coeff20+coeff21+coeff22+coeff23);
	6'd63 : lut12_out3 = -(coeff18+coeff19+coeff20+coeff21+coeff22+coeff23);
	default :lut12_out3 = 0;
	endcase
end
always @(lut_addr12_4)
begin
	case(lut_addr12_4)
	6'd0 : lut12_out4 = (0);
	6'd1 : lut12_out4 = -(coeff24);
	6'd2 : lut12_out4 = -(coeff25);
	6'd3 : lut12_out4 = -(coeff24+coeff25);
	6'd4 : lut12_out4 = -(coeff26);
	6'd5 : lut12_out4 = -(coeff24+coeff26);
	6'd6 : lut12_out4 = -(coeff25+coeff26);
	6'd7 : lut12_out4 = -(coeff24+coeff25+coeff26);
	6'd8 : lut12_out4 = -(coeff27);
	6'd9 : lut12_out4 = -(coeff24+coeff27);
	6'd10 : lut12_out4 = -(coeff25+coeff27);
	6'd11 : lut12_out4 = -(coeff24+coeff25+coeff27);
	6'd12 : lut12_out4 = -(coeff26+coeff27);
	6'd13 : lut12_out4 = -(coeff24+coeff26+coeff27);
	6'd14 : lut12_out4 = -(coeff25+coeff26+coeff27);
	6'd15 : lut12_out4 = -(coeff24+coeff25+coeff26+coeff27);
	6'd16 : lut12_out4 = -(coeff28);
	6'd17 : lut12_out4 = -(coeff24+coeff28);
	6'd18 : lut12_out4 = -(coeff25+coeff28);
	6'd19 : lut12_out4 = -(coeff24+coeff25+coeff28);
	6'd20 : lut12_out4 = -(coeff26+coeff28);
	6'd21 : lut12_out4 = -(coeff24+coeff26+coeff28);
	6'd22 : lut12_out4 = -(coeff25+coeff26+coeff28);
	6'd23 : lut12_out4 = -(coeff24+coeff25+coeff26+coeff28);
	6'd24 : lut12_out4 = -(coeff27+coeff28);
	6'd25 : lut12_out4 = -(coeff24+coeff27+coeff28);
	6'd26 : lut12_out4 = -(coeff25+coeff27+coeff28);
	6'd27 : lut12_out4 = -(coeff24+coeff25+coeff27+coeff28);
	6'd28 : lut12_out4 = -(coeff26+coeff27+coeff28);
	6'd29 : lut12_out4 = -(coeff24+coeff26+coeff27+coeff28);
	6'd30 : lut12_out4 = -(coeff25+coeff26+coeff27+coeff28);
	6'd31 : lut12_out4 = -(coeff24+coeff25+coeff26+coeff27+coeff28);
	6'd32 : lut12_out4 = -(coeff29);
	6'd33 : lut12_out4 = -(coeff24+coeff29);
	6'd34 : lut12_out4 = -(coeff25+coeff29);
	6'd35 : lut12_out4 = -(coeff24+coeff25+coeff29);
	6'd36 : lut12_out4 = -(coeff26+coeff29);
	6'd37 : lut12_out4 = -(coeff24+coeff26+coeff29);
	6'd38 : lut12_out4 = -(coeff25+coeff26+coeff29);
	6'd39 : lut12_out4 = -(coeff24+coeff25+coeff26+coeff29);
	6'd40 : lut12_out4 = -(coeff27+coeff29);
	6'd41 : lut12_out4 = -(coeff24+coeff27+coeff29);
	6'd42 : lut12_out4 = -(coeff25+coeff27+coeff29);
	6'd43 : lut12_out4 = -(coeff24+coeff25+coeff27+coeff29);
	6'd44 : lut12_out4 = -(coeff26+coeff27+coeff29);
	6'd45 : lut12_out4 = -(coeff24+coeff26+coeff27+coeff29);
	6'd46 : lut12_out4 = -(coeff25+coeff26+coeff27+coeff29);
	6'd47 : lut12_out4 = -(coeff24+coeff25+coeff26+coeff27+coeff29);
	6'd48 : lut12_out4 = -(coeff28+coeff29);
	6'd49 : lut12_out4 = -(coeff24+coeff28+coeff29);
	6'd50 : lut12_out4 = -(coeff25+coeff28+coeff29);
	6'd51 : lut12_out4 = -(coeff24+coeff25+coeff28+coeff29);
	6'd52 : lut12_out4 = -(coeff26+coeff28+coeff29);
	6'd53 : lut12_out4 = -(coeff24+coeff26+coeff28+coeff29);
	6'd54 : lut12_out4 = -(coeff25+coeff26+coeff28+coeff29);
	6'd55 : lut12_out4 = -(coeff24+coeff25+coeff26+coeff28+coeff29);
	6'd56 : lut12_out4 = -(coeff27+coeff28+coeff29);
	6'd57 : lut12_out4 = -(coeff24+coeff27+coeff28+coeff29);
	6'd58 : lut12_out4 = -(coeff25+coeff27+coeff28+coeff29);
	6'd59 : lut12_out4 = -(coeff24+coeff25+coeff27+coeff28+coeff29);
	6'd60 : lut12_out4 = -(coeff26+coeff27+coeff28+coeff29);
	6'd61 : lut12_out4 = -(coeff24+coeff26+coeff27+coeff28+coeff29);
	6'd62 : lut12_out4 = -(coeff25+coeff26+coeff27+coeff28+coeff29);
	6'd63 : lut12_out4 = -(coeff24+coeff25+coeff26+coeff27+coeff28+coeff29);
	default :lut12_out4 = 0;
	endcase
end
always @(lut_addr12_5)
begin
	case(lut_addr12_5)
	1'd0 : lut12_out5 = (0);
	1'd1 : lut12_out5 = -(coeff30);
	default :lut12_out5 = 0;
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
	lut0_3 <= lut0_out3;
end
always @(posedge clk)
begin
	lut0_4 <= lut0_out4;
end
always @(posedge clk)
begin
	lut0_5 <= lut0_out5;
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
	lut1_3 <= lut1_out3;
end
always @(posedge clk)
begin
	lut1_4 <= lut1_out4;
end
always @(posedge clk)
begin
	lut1_5 <= lut1_out5;
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
	lut2_3 <= lut2_out3;
end
always @(posedge clk)
begin
	lut2_4 <= lut2_out4;
end
always @(posedge clk)
begin
	lut2_5 <= lut2_out5;
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
	lut3_3 <= lut3_out3;
end
always @(posedge clk)
begin
	lut3_4 <= lut3_out4;
end
always @(posedge clk)
begin
	lut3_5 <= lut3_out5;
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
	lut4_3 <= lut4_out3;
end
always @(posedge clk)
begin
	lut4_4 <= lut4_out4;
end
always @(posedge clk)
begin
	lut4_5 <= lut4_out5;
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
	lut5_3 <= lut5_out3;
end
always @(posedge clk)
begin
	lut5_4 <= lut5_out4;
end
always @(posedge clk)
begin
	lut5_5 <= lut5_out5;
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
	lut6_3 <= lut6_out3;
end
always @(posedge clk)
begin
	lut6_4 <= lut6_out4;
end
always @(posedge clk)
begin
	lut6_5 <= lut6_out5;
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
	lut7_3 <= lut7_out3;
end
always @(posedge clk)
begin
	lut7_4 <= lut7_out4;
end
always @(posedge clk)
begin
	lut7_5 <= lut7_out5;
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
	lut8_3 <= lut8_out3;
end
always @(posedge clk)
begin
	lut8_4 <= lut8_out4;
end
always @(posedge clk)
begin
	lut8_5 <= lut8_out5;
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
	lut9_3 <= lut9_out3;
end
always @(posedge clk)
begin
	lut9_4 <= lut9_out4;
end
always @(posedge clk)
begin
	lut9_5 <= lut9_out5;
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
	lut10_3 <= lut10_out3;
end
always @(posedge clk)
begin
	lut10_4 <= lut10_out4;
end
always @(posedge clk)
begin
	lut10_5 <= lut10_out5;
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
	lut11_3 <= lut11_out3;
end
always @(posedge clk)
begin
	lut11_4 <= lut11_out4;
end
always @(posedge clk)
begin
	lut11_5 <= lut11_out5;
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
always @(posedge clk)
begin
	lut12_3 <= lut12_out3;
end
always @(posedge clk)
begin
	lut12_4 <= lut12_out4;
end
always @(posedge clk)
begin
	lut12_5 <= lut12_out5;
end


//shift0
wire [15:0]	level0_add0_X =  {{4{lut0_0[11]}}, lut0_0};
wire [15:0]	level0_add0_Y =  {{4{lut0_1[11]}}, lut0_1};
wire [15:0]	level0_add0_Z =  {{3{lut0_2[12]}}, lut0_2};
wire [15:0]	level0_add0_W =  {{2{lut0_3[13]}}, lut0_3};
wire [15:0]	level0_add0_S;
wire [15:0]	level0_add0_C;
Adder_N #(.in_width(16)) Adder_N_inst0(
	.clk(clk),
	.X(level0_add0_X),
	.Y(level0_add0_Y),	
	.Z(level0_add0_Z),
	.W(level0_add0_W),
	.S(level0_add0_S),
	.C(level0_add0_C),
	.COUT()
);
//shift1
wire [15:0]	level0_add1_X =  {{4{lut1_0[11]}}, lut1_0};
wire [15:0]	level0_add1_Y =  {{4{lut1_1[11]}}, lut1_1};
wire [15:0]	level0_add1_Z =  {{3{lut1_2[12]}}, lut1_2};
wire [15:0]	level0_add1_W =  {{2{lut1_3[13]}}, lut1_3};
wire [15:0]	level0_add1_S;
wire [15:0]	level0_add1_C;
Adder_N #(.in_width(16)) Adder_N_inst1(
	.clk(clk),
	.X(level0_add1_X),
	.Y(level0_add1_Y),	
	.Z(level0_add1_Z),
	.W(level0_add1_W),
	.S(level0_add1_S),
	.C(level0_add1_C),
	.COUT()
);
//shift0
wire [19:0]	level0_add2_X =  {{4{lut0_4[15]}}, lut0_4};
wire [19:0]	level0_add2_Y =  {{4{lut0_5[16]}}, lut0_5};
wire [19:0]	level0_add2_Z =  {{3{lut1_4[15]}}, lut1_4, 1'b0};
wire [19:0]	level0_add2_W =  {{2{lut1_5[16]}}, lut1_5, 1'b0};
wire [19:0]	level0_add2_S;
wire [19:0]	level0_add2_C;
Adder_N #(.in_width(20)) Adder_N_inst2(
	.clk(clk),
	.X(level0_add2_X),
	.Y(level0_add2_Y),	
	.Z(level0_add2_Z),
	.W(level0_add2_W),
	.S(level0_add2_S),
	.C(level0_add2_C),
	.COUT()
);
//shift2
wire [15:0]	level0_add3_X =  {{4{lut2_0[11]}}, lut2_0};
wire [15:0]	level0_add3_Y =  {{4{lut2_1[11]}}, lut2_1};
wire [15:0]	level0_add3_Z =  {{3{lut2_2[12]}}, lut2_2};
wire [15:0]	level0_add3_W =  {{2{lut2_3[13]}}, lut2_3};
wire [15:0]	level0_add3_S;
wire [15:0]	level0_add3_C;
Adder_N #(.in_width(16)) Adder_N_inst3(
	.clk(clk),
	.X(level0_add3_X),
	.Y(level0_add3_Y),	
	.Z(level0_add3_Z),
	.W(level0_add3_W),
	.S(level0_add3_S),
	.C(level0_add3_C),
	.COUT()
);
//shift3
wire [15:0]	level0_add4_X =  {{4{lut3_0[11]}}, lut3_0};
wire [15:0]	level0_add4_Y =  {{4{lut3_1[11]}}, lut3_1};
wire [15:0]	level0_add4_Z =  {{3{lut3_2[12]}}, lut3_2};
wire [15:0]	level0_add4_W =  {{2{lut3_3[13]}}, lut3_3};
wire [15:0]	level0_add4_S;
wire [15:0]	level0_add4_C;
Adder_N #(.in_width(16)) Adder_N_inst4(
	.clk(clk),
	.X(level0_add4_X),
	.Y(level0_add4_Y),	
	.Z(level0_add4_Z),
	.W(level0_add4_W),
	.S(level0_add4_S),
	.C(level0_add4_C),
	.COUT()
);
//shift2
wire [19:0]	level0_add5_X =  {{4{lut2_4[15]}}, lut2_4};
wire [19:0]	level0_add5_Y =  {{4{lut2_5[16]}}, lut2_5};
wire [19:0]	level0_add5_Z =  {{3{lut3_4[15]}}, lut3_4, 1'b0};
wire [19:0]	level0_add5_W =  {{2{lut3_5[16]}}, lut3_5, 1'b0};
wire [19:0]	level0_add5_S;
wire [19:0]	level0_add5_C;
Adder_N #(.in_width(20)) Adder_N_inst5(
	.clk(clk),
	.X(level0_add5_X),
	.Y(level0_add5_Y),	
	.Z(level0_add5_Z),
	.W(level0_add5_W),
	.S(level0_add5_S),
	.C(level0_add5_C),
	.COUT()
);
//shift4
wire [15:0]	level0_add6_X =  {{4{lut4_0[11]}}, lut4_0};
wire [15:0]	level0_add6_Y =  {{4{lut4_1[11]}}, lut4_1};
wire [15:0]	level0_add6_Z =  {{3{lut4_2[12]}}, lut4_2};
wire [15:0]	level0_add6_W =  {{2{lut4_3[13]}}, lut4_3};
wire [15:0]	level0_add6_S;
wire [15:0]	level0_add6_C;
Adder_N #(.in_width(16)) Adder_N_inst6(
	.clk(clk),
	.X(level0_add6_X),
	.Y(level0_add6_Y),	
	.Z(level0_add6_Z),
	.W(level0_add6_W),
	.S(level0_add6_S),
	.C(level0_add6_C),
	.COUT()
);
//shift5
wire [15:0]	level0_add7_X =  {{4{lut5_0[11]}}, lut5_0};
wire [15:0]	level0_add7_Y =  {{4{lut5_1[11]}}, lut5_1};
wire [15:0]	level0_add7_Z =  {{3{lut5_2[12]}}, lut5_2};
wire [15:0]	level0_add7_W =  {{2{lut5_3[13]}}, lut5_3};
wire [15:0]	level0_add7_S;
wire [15:0]	level0_add7_C;
Adder_N #(.in_width(16)) Adder_N_inst7(
	.clk(clk),
	.X(level0_add7_X),
	.Y(level0_add7_Y),	
	.Z(level0_add7_Z),
	.W(level0_add7_W),
	.S(level0_add7_S),
	.C(level0_add7_C),
	.COUT()
);
//shift4
wire [19:0]	level0_add8_X =  {{4{lut4_4[15]}}, lut4_4};
wire [19:0]	level0_add8_Y =  {{4{lut4_5[16]}}, lut4_5};
wire [19:0]	level0_add8_Z =  {{3{lut5_4[15]}}, lut5_4, 1'b0};
wire [19:0]	level0_add8_W =  {{2{lut5_5[16]}}, lut5_5, 1'b0};
wire [19:0]	level0_add8_S;
wire [19:0]	level0_add8_C;
Adder_N #(.in_width(20)) Adder_N_inst8(
	.clk(clk),
	.X(level0_add8_X),
	.Y(level0_add8_Y),	
	.Z(level0_add8_Z),
	.W(level0_add8_W),
	.S(level0_add8_S),
	.C(level0_add8_C),
	.COUT()
);
//shift6
wire [15:0]	level0_add9_X =  {{4{lut6_0[11]}}, lut6_0};
wire [15:0]	level0_add9_Y =  {{4{lut6_1[11]}}, lut6_1};
wire [15:0]	level0_add9_Z =  {{3{lut6_2[12]}}, lut6_2};
wire [15:0]	level0_add9_W =  {{2{lut6_3[13]}}, lut6_3};
wire [15:0]	level0_add9_S;
wire [15:0]	level0_add9_C;
Adder_N #(.in_width(16)) Adder_N_inst9(
	.clk(clk),
	.X(level0_add9_X),
	.Y(level0_add9_Y),	
	.Z(level0_add9_Z),
	.W(level0_add9_W),
	.S(level0_add9_S),
	.C(level0_add9_C),
	.COUT()
);
//shift7
wire [15:0]	level0_add10_X =  {{4{lut7_0[11]}}, lut7_0};
wire [15:0]	level0_add10_Y =  {{4{lut7_1[11]}}, lut7_1};
wire [15:0]	level0_add10_Z =  {{3{lut7_2[12]}}, lut7_2};
wire [15:0]	level0_add10_W =  {{2{lut7_3[13]}}, lut7_3};
wire [15:0]	level0_add10_S;
wire [15:0]	level0_add10_C;
Adder_N #(.in_width(16)) Adder_N_inst10(
	.clk(clk),
	.X(level0_add10_X),
	.Y(level0_add10_Y),	
	.Z(level0_add10_Z),
	.W(level0_add10_W),
	.S(level0_add10_S),
	.C(level0_add10_C),
	.COUT()
);
//shift6
wire [19:0]	level0_add11_X =  {{4{lut6_4[15]}}, lut6_4};
wire [19:0]	level0_add11_Y =  {{4{lut6_5[16]}}, lut6_5};
wire [19:0]	level0_add11_Z =  {{3{lut7_4[15]}}, lut7_4, 1'b0};
wire [19:0]	level0_add11_W =  {{2{lut7_5[16]}}, lut7_5, 1'b0};
wire [19:0]	level0_add11_S;
wire [19:0]	level0_add11_C;
Adder_N #(.in_width(20)) Adder_N_inst11(
	.clk(clk),
	.X(level0_add11_X),
	.Y(level0_add11_Y),	
	.Z(level0_add11_Z),
	.W(level0_add11_W),
	.S(level0_add11_S),
	.C(level0_add11_C),
	.COUT()
);
//shift8
wire [15:0]	level0_add12_X =  {{4{lut8_0[11]}}, lut8_0};
wire [15:0]	level0_add12_Y =  {{4{lut8_1[11]}}, lut8_1};
wire [15:0]	level0_add12_Z =  {{3{lut8_2[12]}}, lut8_2};
wire [15:0]	level0_add12_W =  {{2{lut8_3[13]}}, lut8_3};
wire [15:0]	level0_add12_S;
wire [15:0]	level0_add12_C;
Adder_N #(.in_width(16)) Adder_N_inst12(
	.clk(clk),
	.X(level0_add12_X),
	.Y(level0_add12_Y),	
	.Z(level0_add12_Z),
	.W(level0_add12_W),
	.S(level0_add12_S),
	.C(level0_add12_C),
	.COUT()
);
//shift9
wire [15:0]	level0_add13_X =  {{4{lut9_0[11]}}, lut9_0};
wire [15:0]	level0_add13_Y =  {{4{lut9_1[11]}}, lut9_1};
wire [15:0]	level0_add13_Z =  {{3{lut9_2[12]}}, lut9_2};
wire [15:0]	level0_add13_W =  {{2{lut9_3[13]}}, lut9_3};
wire [15:0]	level0_add13_S;
wire [15:0]	level0_add13_C;
Adder_N #(.in_width(16)) Adder_N_inst13(
	.clk(clk),
	.X(level0_add13_X),
	.Y(level0_add13_Y),	
	.Z(level0_add13_Z),
	.W(level0_add13_W),
	.S(level0_add13_S),
	.C(level0_add13_C),
	.COUT()
);
//shift8
wire [19:0]	level0_add14_X =  {{4{lut8_4[15]}}, lut8_4};
wire [19:0]	level0_add14_Y =  {{4{lut8_5[16]}}, lut8_5};
wire [19:0]	level0_add14_Z =  {{3{lut9_4[15]}}, lut9_4, 1'b0};
wire [19:0]	level0_add14_W =  {{2{lut9_5[16]}}, lut9_5, 1'b0};
wire [19:0]	level0_add14_S;
wire [19:0]	level0_add14_C;
Adder_N #(.in_width(20)) Adder_N_inst14(
	.clk(clk),
	.X(level0_add14_X),
	.Y(level0_add14_Y),	
	.Z(level0_add14_Z),
	.W(level0_add14_W),
	.S(level0_add14_S),
	.C(level0_add14_C),
	.COUT()
);
/*
//shift10
wire [15:0]	level0_add15_X =  {{4{lut10_0[11]}}, lut10_0};
wire [15:0]	level0_add15_Y =  {{4{lut10_1[11]}}, lut10_1};
wire [15:0]	level0_add15_Z =  {{3{lut10_2[12]}}, lut10_2};
wire [15:0]	level0_add15_W =  {{2{lut10_3[13]}}, lut10_3};
wire [15:0]	level0_add15_S;
wire [15:0]	level0_add15_C;
Adder_N #(.in_width(16)) Adder_N_inst15(
	.clk(clk),
	.X(level0_add15_X),
	.Y(level0_add15_Y),	
	.Z(level0_add15_Z),
	.W(level0_add15_W),
	.S(level0_add15_S),
	.C(level0_add15_C),
	.COUT()
);
*/

//shift10
wire [15:0]	level0_add15_X =  {{4{lut10_0[11]}}, lut10_0};
wire [15:0]	level0_add15_Y =  {{2{lut10_3[13]}}, lut10_3};
wire [15:0]	level0_add15_Z =  {{3{lut10_2[12]}}, lut10_2};
wire [15:0]	level0_add15_W =  {{4{lut10_1[11]}}, lut10_1};
wire [15:0]	level0_add15_S;
wire [15:0]	level0_add15_C;
Adder_N #(.in_width(16)) Adder_N_inst15(
	.clk(clk),
	.X(level0_add15_X),
	.Y(level0_add15_Y),	
	.Z(level0_add15_Z),
	.W(level0_add15_W),
	.S(level0_add15_S),
	.C(level0_add15_C),
	.COUT()
);

//shift11
wire [15:0]	level0_add16_X =  {{4{lut11_0[11]}}, lut11_0};
wire [15:0]	level0_add16_Y =  {{4{lut11_1[11]}}, lut11_1};
wire [15:0]	level0_add16_Z =  {{3{lut11_2[12]}}, lut11_2};
wire [15:0]	level0_add16_W =  {{2{lut11_3[13]}}, lut11_3};
wire [15:0]	level0_add16_S;
wire [15:0]	level0_add16_C;
Adder_N #(.in_width(16)) Adder_N_inst16(
	.clk(clk),
	.X(level0_add16_X),
	.Y(level0_add16_Y),	
	.Z(level0_add16_Z),
	.W(level0_add16_W),
	.S(level0_add16_S),
	.C(level0_add16_C),
	.COUT()
);
//shift10
wire [19:0]	level0_add17_X =  {{4{lut10_4[15]}}, lut10_4};
wire [19:0]	level0_add17_Y =  {{4{lut10_5[16]}}, lut10_5};
wire [19:0]	level0_add17_Z =  {{3{lut11_4[15]}}, lut11_4, 1'b0};
wire [19:0]	level0_add17_W =  {{2{lut11_5[16]}}, lut11_5, 1'b0};
wire [19:0]	level0_add17_S;
wire [19:0]	level0_add17_C;
Adder_N #(.in_width(20)) Adder_N_inst17(
	.clk(clk),
	.X(level0_add17_X),
	.Y(level0_add17_Y),	
	.Z(level0_add17_Z),
	.W(level0_add17_W),
	.S(level0_add17_S),
	.C(level0_add17_C),
	.COUT()
);
//shift12
wire [15:0]	level0_add18_X =  {{4{lut12_0[11]}}, lut12_0};
wire [15:0]	level0_add18_Y =  {{4{lut12_1[11]}}, lut12_1};
wire [15:0]	level0_add18_Z =  {{3{lut12_2[12]}}, lut12_2};
wire [15:0]	level0_add18_W =  {{2{lut12_3[13]}}, lut12_3};
wire [15:0]	level0_add18_S;
wire [15:0]	level0_add18_C;
Adder_N #(.in_width(16)) Adder_N_inst18(
	.clk(clk),
	.X(level0_add18_X),
	.Y(level0_add18_Y),	
	.Z(level0_add18_Z),
	.W(level0_add18_W),
	.S(level0_add18_S),
	.C(level0_add18_C),
	.COUT()
);
reg	[17:0] level0_add19;
always @(posedge clk)
	level0_add19 <= $signed({lut12_4[15],lut12_4}) + $signed({lut12_5});

//shift0
wire [19:0]	level1_add0_X =  {{4{level0_add0_S[15]}}, level0_add0_S};
wire [19:0]	level1_add0_Y =  {{3{level0_add0_C[15]}}, level0_add0_C, {1{1'b0}}};
wire [19:0]	level1_add0_Z =  {{3{level0_add1_S[15]}}, level0_add1_S, {1{1'b0}}};
wire [19:0]	level1_add0_W =  {{2{level0_add1_C[15]}}, level0_add1_C, {1{1'b0}}, {1{1'b0}}};
wire [19:0]	level1_add0_S;
wire [19:0]	level1_add0_C;
Adder_N #(.in_width(20)) Adder_N_inst19(
	.clk(clk),
	.X(level1_add0_X),
	.Y(level1_add0_Y),	
	.Z(level1_add0_Z),
	.W(level1_add0_W),
	.S(level1_add0_S),
	.C(level1_add0_C),
	.COUT()
);
//shift2
wire [19:0]	level1_add1_X =  {{4{level0_add3_S[15]}}, level0_add3_S};
wire [19:0]	level1_add1_Y =  {{3{level0_add3_C[15]}}, level0_add3_C, {1{1'b0}}};
wire [19:0]	level1_add1_Z =  {{3{level0_add4_S[15]}}, level0_add4_S, {1{1'b0}}};
wire [19:0]	level1_add1_W =  {{2{level0_add4_C[15]}}, level0_add4_C, {1{1'b0}}, {1{1'b0}}};
wire [19:0]	level1_add1_S;
wire [19:0]	level1_add1_C;
Adder_N #(.in_width(20)) Adder_N_inst20(
	.clk(clk),
	.X(level1_add1_X),
	.Y(level1_add1_Y),	
	.Z(level1_add1_Z),
	.W(level1_add1_W),
	.S(level1_add1_S),
	.C(level1_add1_C),
	.COUT()
);
//shift0
wire [24:0]	level1_add2_X =  {{5{level0_add2_S[19]}}, level0_add2_S};
wire [24:0]	level1_add2_Y =  {{4{level0_add2_C[19]}}, level0_add2_C, {1{1'b0}}};
wire [24:0]	level1_add2_Z =  {{3{level0_add5_S[19]}}, level0_add5_S, {2{1'b0}}};
wire [24:0]	level1_add2_W =  {{2{level0_add5_C[19]}}, level0_add5_C, 1'b0, {2{1'b0}}};
wire [24:0]	level1_add2_S;
wire [24:0]	level1_add2_C;
Adder_N #(.in_width(27)) Adder_N_inst21(
	.clk(clk),
	.X(level1_add2_X),
	.Y(level1_add2_Y),	
	.Z(level1_add2_Z),
	.W(level1_add2_W),
	.S(level1_add2_S),
	.C(level1_add2_C),
	.COUT()
);
//shift4
wire [19:0]	level1_add3_X =  {{4{level0_add6_S[15]}}, level0_add6_S};
wire [19:0]	level1_add3_Y =  {{3{level0_add6_C[15]}}, level0_add6_C, {1{1'b0}}};
wire [19:0]	level1_add3_Z =  {{3{level0_add7_S[15]}}, level0_add7_S, {1{1'b0}}};
wire [19:0]	level1_add3_W =  {{2{level0_add7_C[15]}}, level0_add7_C, {1{1'b0}}, {1{1'b0}}};
wire [19:0]	level1_add3_S;
wire [19:0]	level1_add3_C;
Adder_N #(.in_width(20)) Adder_N_inst22(
	.clk(clk),
	.X(level1_add3_X),
	.Y(level1_add3_Y),	
	.Z(level1_add3_Z),
	.W(level1_add3_W),
	.S(level1_add3_S),
	.C(level1_add3_C),
	.COUT()
);
//shift6
wire [19:0]	level1_add4_X =  {{4{level0_add9_S[15]}}, level0_add9_S};
wire [19:0]	level1_add4_Y =  {{3{level0_add9_C[15]}}, level0_add9_C, {1{1'b0}}};
wire [19:0]	level1_add4_Z =  {{3{level0_add10_S[15]}}, level0_add10_S, {1{1'b0}}};
wire [19:0]	level1_add4_W =  {{2{level0_add10_C[15]}}, level0_add10_C, {1{1'b0}}, {1{1'b0}}};
wire [19:0]	level1_add4_S;
wire [19:0]	level1_add4_C;
Adder_N #(.in_width(20)) Adder_N_inst23(
	.clk(clk),
	.X(level1_add4_X),
	.Y(level1_add4_Y),	
	.Z(level1_add4_Z),
	.W(level1_add4_W),
	.S(level1_add4_S),
	.C(level1_add4_C),
	.COUT()
);
//shift4
wire [24:0]	level1_add5_X =  {{5{level0_add8_S[19]}}, level0_add8_S};
wire [24:0]	level1_add5_Y =  {{4{level0_add8_C[19]}}, level0_add8_C, {1{1'b0}}};
wire [24:0]	level1_add5_Z =  {{3{level0_add11_S[19]}}, level0_add11_S, {2{1'b0}}};
wire [24:0]	level1_add5_W =  {{2{level0_add11_C[19]}}, level0_add11_C, 1'b0, {2{1'b0}}};
wire [24:0]	level1_add5_S;
wire [24:0]	level1_add5_C;
Adder_N #(.in_width(27)) Adder_N_inst24(
	.clk(clk),
	.X(level1_add5_X),
	.Y(level1_add5_Y),	
	.Z(level1_add5_Z),
	.W(level1_add5_W),
	.S(level1_add5_S),
	.C(level1_add5_C),
	.COUT()
);

//shift8
wire [19:0]	level1_add6_X =  {{4{level0_add12_S[15]}}, level0_add12_S};
wire [19:0]	level1_add6_Y =  {{3{level0_add12_C[15]}}, level0_add12_C, {1{1'b0}}};
wire [19:0]	level1_add6_Z =  {{3{level0_add13_S[15]}}, level0_add13_S, {1{1'b0}}};
wire [19:0]	level1_add6_W =  {{2{level0_add13_C[15]}}, level0_add13_C, {1{1'b0}}, {1{1'b0}}};
wire [19:0]	level1_add6_S;
wire [19:0]	level1_add6_C;
Adder_N #(.in_width(20)) Adder_N_inst25(
	.clk(clk),
	.X(level1_add6_X),
	.Y(level1_add6_Y),	
	.Z(level1_add6_Z),
	.W(level1_add6_W),
	.S(level1_add6_S),
	.C(level1_add6_C),
	.COUT()
);
//shift10
wire [19:0]	level1_add7_X =  {{4{level0_add15_S[15]}}, level0_add15_S};
wire [19:0]	level1_add7_Y =  {{3{level0_add15_C[15]}}, level0_add15_C, {1{1'b0}}};
wire [19:0]	level1_add7_Z =  {{3{level0_add16_S[15]}}, level0_add16_S, {1{1'b0}}};
wire [19:0]	level1_add7_W =  {{2{level0_add16_C[15]}}, level0_add16_C, {1{1'b0}}, {1{1'b0}}};
wire [19:0]	level1_add7_S;
wire [19:0]	level1_add7_C;
Adder_N #(.in_width(20)) Adder_N_inst26(
	.clk(clk),
	.X(level1_add7_X),
	.Y(level1_add7_Y),	
	.Z(level1_add7_Z),
	.W(level1_add7_W),
	.S(level1_add7_S),
	.C(level1_add7_C),
	.COUT()
);
//shift8
wire [24:0]	level1_add8_X =  {{5{level0_add14_S[19]}}, level0_add14_S};
wire [24:0]	level1_add8_Y =  {{4{level0_add14_C[19]}}, level0_add14_C, {1{1'b0}}};
wire [24:0]	level1_add8_Z =  {{3{level0_add17_S[19]}}, level0_add17_S, {2{1'b0}}};
wire [24:0]	level1_add8_W =  {{2{level0_add17_C[19]}}, level0_add17_C, 1'b0, {2{1'b0}}};
wire [24:0]	level1_add8_S;
wire [24:0]	level1_add8_C;
Adder_N #(.in_width(27)) Adder_N_inst27(
	.clk(clk),
	.X(level1_add8_X),
	.Y(level1_add8_Y),	
	.Z(level1_add8_Z),
	.W(level1_add8_W),
	.S(level1_add8_S),
	.C(level1_add8_C),
	.COUT()
);
//shift12
reg	[17:0] level1_add9;
always @(posedge clk)
	level1_add9 <= $signed({level0_add18_S[15],level0_add18_S}) + $signed({level0_add18_C, 1'b0});
reg	[17:0] level1_add10;
always @(posedge clk)
	level1_add10 <= level0_add19;

	
//shift0
wire [24:0]	level2_add0_X =  {{5{level1_add0_S[19]}}, level1_add0_S};
wire [24:0]	level2_add0_Y =  {{4{level1_add0_C[19]}}, level1_add0_C, {1{1'b0}}};
wire [24:0]	level2_add0_Z =  {{3{level1_add1_S[19]}}, level1_add1_S, {2{1'b0}}};
wire [24:0]	level2_add0_W =  {{2{level1_add1_C[19]}}, level1_add1_C, 1'b0, {2{1'b0}}};
wire [24:0]	level2_add0_S;
wire [24:0]	level2_add0_C;
Adder_N #(.in_width(25)) Adder_N_inst28(
	.clk(clk),
	.X(level2_add0_X),
	.Y(level2_add0_Y),	
	.Z(level2_add0_Z),
	.W(level2_add0_W),
	.S(level2_add0_S),
	.C(level2_add0_C),
	.COUT()
);
//shift4
wire [24:0]	level2_add1_X =  {{5{level1_add3_S[19]}}, level1_add3_S};
wire [24:0]	level2_add1_Y =  {{4{level1_add3_C[19]}}, level1_add3_C, {1{1'b0}}};
wire [24:0]	level2_add1_Z =  {{3{level1_add4_S[19]}}, level1_add4_S, {2{1'b0}}};
wire [24:0]	level2_add1_W =  {{2{level1_add4_C[19]}}, level1_add4_C, 1'b0, {2{1'b0}}};
wire [24:0]	level2_add1_S;
wire [24:0]	level2_add1_C;
Adder_N #(.in_width(25)) Adder_N_inst29(
	.clk(clk),
	.X(level2_add1_X),
	.Y(level2_add1_Y),	
	.Z(level2_add1_Z),
	.W(level2_add1_W),
	.S(level2_add1_S),
	.C(level2_add1_C),
	.COUT()
);
//shift0
wire [29:0]	level2_add2_X =  {{5{level1_add2_S[24]}}, level1_add2_S};
wire [29:0]	level2_add2_Y =  {{4{level1_add2_C[24]}}, level1_add2_C, {1{1'b0}}};
wire [29:0]	level2_add2_Z =  {{1{level1_add5_S[24]}}, level1_add5_S, {4{1'b0}}};
wire [29:0]	level2_add2_W =  {level1_add5_C, 1'b0, {4{1'b0}}};
wire [29:0]	level2_add2_S;
wire [29:0]	level2_add2_C;
Adder_N #(.in_width(30)) Adder_N_inst30(
	.clk(clk),
	.X(level2_add2_X),
	.Y(level2_add2_Y),	
	.Z(level2_add2_Z),
	.W(level2_add2_W),
	.S(level2_add2_S),
	.C(level2_add2_C),
	.COUT()
);

//shift8
wire [24:0]	level2_add3_X =  {{5{level1_add6_S[19]}}, level1_add6_S};
wire [24:0]	level2_add3_Y =  {{4{level1_add6_C[19]}}, level1_add6_C, {1{1'b0}}};
wire [24:0]	level2_add3_Z =  {{3{level1_add7_S[19]}}, level1_add7_S, {2{1'b0}}};
wire [24:0]	level2_add3_W =  {{2{level1_add7_C[19]}}, level1_add7_C, 1'b0, {2{1'b0}}};
wire [24:0]	level2_add3_S;
wire [24:0]	level2_add3_C;
Adder_N #(.in_width(25)) Adder_N_inst31(
	.clk(clk),
	.X(level2_add3_X),
	.Y(level2_add3_Y),	
	.Z(level2_add3_Z),
	.W(level2_add3_W),
	.S(level2_add3_S),
	.C(level2_add3_C),
	.COUT()
);
//shift8
wire [27:0]	level2_add4_X =  {{3{level1_add8_S[24]}}, level1_add8_S};
wire [27:0]	level2_add4_Y =  {{2{level1_add8_C[24]}}, level1_add8_C, {1{1'b0}}};
wire [27:0]	level2_add4_Z =  {{6{level1_add9[17]}}, level1_add9, {4{1'b0}}};
wire [27:0]	level2_add4_W =  {{6{level1_add10[17]}}, level1_add10, {4{1'b0}}};
wire [27:0]	level2_add4_S;
wire [27:0]	level2_add4_C;
Adder_N #(.in_width(28)) Adder_N_inst32(
	.clk(clk),
	.X(level2_add4_X),
	.Y(level2_add4_Y),	
	.Z(level2_add4_Z),
	.W(level2_add4_W),
	.S(level2_add4_S),
	.C(level2_add4_C),
	.COUT()
);

//shift0
wire [29:0]	level3_add0_X =  {{5{level2_add0_S[24]}}, level2_add0_S};
wire [29:0]	level3_add0_Y =  {{4{level2_add0_C[24]}}, level2_add0_C, {1{1'b0}}};
wire [29:0]	level3_add0_Z =  {{1{level2_add1_S[24]}}, level2_add1_S, {4{1'b0}}};
wire [29:0]	level3_add0_W =  {level2_add1_C, 1'b0, {4{1'b0}}};
wire [29:0]	level3_add0_S;
wire [29:0]	level3_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst33(
	.clk(clk),
	.X(level3_add0_X),
	.Y(level3_add0_Y),	
	.Z(level3_add0_Z),
	.W(level3_add0_W),
	.S(level3_add0_S),
	.C(level3_add0_C),
	.COUT()
);
//shift0
wire [29:0]	level3_add1_X =  {level2_add2_S};
wire [29:0]	level3_add1_Y =  {level2_add2_C[28:0], {1{1'b0}}};
wire [29:0]	level3_add1_Z =  {level2_add3_S[21:0], {8{1'b0}}};
wire [29:0]	level3_add1_W =  {level2_add3_C[20:0], 1'b0, {8{1'b0}}};
wire [29:0]	level3_add1_S;
wire [29:0]	level3_add1_C;
Adder_N #(.in_width(30)) Adder_N_inst34(
	.clk(clk),
	.X(level3_add1_X),
	.Y(level3_add1_Y),	
	.Z(level3_add1_Z),
	.W(level3_add1_W),
	.S(level3_add1_S),
	.C(level3_add1_C),
	.COUT()
);
//shift8
reg [29:0] level3_add2;
always @(posedge clk)
	level3_add2 <= $signed({level2_add4_S[27], level2_add4_S}) + $signed({level2_add4_C, 1'b0});

//shift0
wire [29:0]	level4_add0_X =  {level3_add0_S};
wire [29:0]	level4_add0_Y =  {level3_add0_C[28:0], 1'b0};
wire [29:0]	level4_add0_Z =  {level3_add1_S};
wire [29:0]	level4_add0_W =  {level3_add1_C[28:0], 1'b0};
wire [29:0]	level4_add0_S;
wire [29:0]	level4_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst35(
	.clk(clk),
	.X(level4_add0_X),
	.Y(level4_add0_Y),	
	.Z(level4_add0_Z),
	.W(level4_add0_W),
	.S(level4_add0_S),
	.C(level4_add0_C),
	.COUT()
);
//shift8
reg [29:0]	level4_add1;
always @(posedge clk)
	level4_add1 <= level3_add2;

//shift0
wire [29:0]	level5_add0_X =  level4_add0_S;
wire [29:0]	level5_add0_Y =  {level4_add0_C[28:0], {1{1'b0}}};
wire [29:0]	level5_add0_Z =  {level4_add1[21:0], {8{1'b0}}};
wire [29:0]	level5_add0_W =  30'd0;
wire [29:0]	level5_add0_S;
wire [29:0]	level5_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst36(
	.clk(clk),
	.X(level5_add0_X),
	.Y(level5_add0_Y),	
	.Z(level5_add0_Z),
	.W(level5_add0_W),
	.S(level5_add0_S),
	.C(level5_add0_C),
	.COUT()
);
/*
reg	[31:0]	out_tmp;
always @(posedge clk)
	out_tmp <= $signed(level5_add0_S) +$signed({level5_add0_C, 1'b0});
*/
wire	[31:0]	out_tmp = $signed(level5_add0_S) +$signed({level5_add0_C, 1'b0});;
assign filter_out = out_tmp[29:0];
endmodule
