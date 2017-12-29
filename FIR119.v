module FIR119(
input					clk,
input  signed [11:0]	filter_in,
output signed [29:0]	filter_out
);

parameter signed [16:0] coeff0 = -17'd542;
parameter signed [16:0] coeff1 = -17'd1589;
parameter signed [16:0] coeff2 = -17'd1577;
parameter signed [16:0] coeff3 = -17'd244;
parameter signed [16:0] coeff4 = 17'd763;
parameter signed [16:0] coeff5 = 17'd148;
parameter signed [16:0] coeff6 = -17'd530;
parameter signed [16:0] coeff7 = -17'd31;
parameter signed [16:0] coeff8 = 17'd436;
parameter signed [16:0] coeff9 = -17'd95;
parameter signed [16:0] coeff10 = -17'd354;
parameter signed [16:0] coeff11 = 17'd198;
parameter signed [16:0] coeff12 = 17'd265;
parameter signed [16:0] coeff13 = -17'd287;
parameter signed [16:0] coeff14 = -17'd156;
parameter signed [16:0] coeff15 = 17'd342;
parameter signed [16:0] coeff16 = 17'd28;
parameter signed [16:0] coeff17 = -17'd363;
parameter signed [16:0] coeff18 = 17'd108;
parameter signed [16:0] coeff19 = 17'd337;
parameter signed [16:0] coeff20 = -17'd244;
parameter signed [16:0] coeff21 = -17'd265;
parameter signed [16:0] coeff22 = 17'd359;
parameter signed [16:0] coeff23 = 17'd144;
parameter signed [16:0] coeff24 = -17'd440;
parameter signed [16:0] coeff25 = 17'd12;
parameter signed [16:0] coeff26 = 17'd467;
parameter signed [16:0] coeff27 = -17'd192;
parameter signed [16:0] coeff28 = -17'd432;
parameter signed [16:0] coeff29 = 17'd372;
parameter signed [16:0] coeff30 = 17'd326;
parameter signed [16:0] coeff31 = -17'd532;
parameter signed [16:0] coeff32 = -17'd154;
parameter signed [16:0] coeff33 = 17'd640;
parameter signed [16:0] coeff34 = -17'd77;
parameter signed [16:0] coeff35 = -17'd675;
parameter signed [16:0] coeff36 = 17'd344;
parameter signed [16:0] coeff37 = 17'd613;
parameter signed [16:0] coeff38 = -17'd621;
parameter signed [16:0] coeff39 = -17'd446;
parameter signed [16:0] coeff40 = 17'd867;
parameter signed [16:0] coeff41 = 17'd165;
parameter signed [16:0] coeff42 = -17'd1045;
parameter signed [16:0] coeff43 = 17'd219;
parameter signed [16:0] coeff44 = 17'd1109;
parameter signed [16:0] coeff45 = -17'd693;
parameter signed [16:0] coeff46 = -17'd1021;
parameter signed [16:0] coeff47 = 17'd1220;
parameter signed [16:0] coeff48 = 17'd728;
parameter signed [16:0] coeff49 = -17'd1768;
parameter signed [16:0] coeff50 = -17'd173;
parameter signed [16:0] coeff51 = 17'd2297;
parameter signed [16:0] coeff52 = -17'd738;
parameter signed [16:0] coeff53 = -17'd2761;
parameter signed [16:0] coeff54 = 17'd2253;
parameter signed [16:0] coeff55 = 17'd3125;
parameter signed [16:0] coeff56 = -17'd5292;
parameter signed [16:0] coeff57 = -17'd3357;
parameter signed [16:0] coeff58 = 17'd18355;
parameter signed [16:0] coeff59 = 17'd32768;

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
reg signed [11:0] delay61;
reg signed [11:0] delay62;
reg signed [11:0] delay63;
reg signed [11:0] delay64;
reg signed [11:0] delay65;
reg signed [11:0] delay66;
reg signed [11:0] delay67;
reg signed [11:0] delay68;
reg signed [11:0] delay69;
reg signed [11:0] delay70;
reg signed [11:0] delay71;
reg signed [11:0] delay72;
reg signed [11:0] delay73;
reg signed [11:0] delay74;
reg signed [11:0] delay75;
reg signed [11:0] delay76;
reg signed [11:0] delay77;
reg signed [11:0] delay78;
reg signed [11:0] delay79;
reg signed [11:0] delay80;
reg signed [11:0] delay81;
reg signed [11:0] delay82;
reg signed [11:0] delay83;
reg signed [11:0] delay84;
reg signed [11:0] delay85;
reg signed [11:0] delay86;
reg signed [11:0] delay87;
reg signed [11:0] delay88;
reg signed [11:0] delay89;
reg signed [11:0] delay90;
reg signed [11:0] delay91;
reg signed [11:0] delay92;
reg signed [11:0] delay93;
reg signed [11:0] delay94;
reg signed [11:0] delay95;
reg signed [11:0] delay96;
reg signed [11:0] delay97;
reg signed [11:0] delay98;
reg signed [11:0] delay99;
reg signed [11:0] delay100;
reg signed [11:0] delay101;
reg signed [11:0] delay102;
reg signed [11:0] delay103;
reg signed [11:0] delay104;
reg signed [11:0] delay105;
reg signed [11:0] delay106;
reg signed [11:0] delay107;
reg signed [11:0] delay108;
reg signed [11:0] delay109;
reg signed [11:0] delay110;
reg signed [11:0] delay111;
reg signed [11:0] delay112;
reg signed [11:0] delay113;
reg signed [11:0] delay114;
reg signed [11:0] delay115;
reg signed [11:0] delay116;
reg signed [11:0] delay117;
reg signed [11:0] delay118;
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
	delay61 <= delay60;
	delay62 <= delay61;
	delay63 <= delay62;
	delay64 <= delay63;
	delay65 <= delay64;
	delay66 <= delay65;
	delay67 <= delay66;
	delay68 <= delay67;
	delay69 <= delay68;
	delay70 <= delay69;
	delay71 <= delay70;
	delay72 <= delay71;
	delay73 <= delay72;
	delay74 <= delay73;
	delay75 <= delay74;
	delay76 <= delay75;
	delay77 <= delay76;
	delay78 <= delay77;
	delay79 <= delay78;
	delay80 <= delay79;
	delay81 <= delay80;
	delay82 <= delay81;
	delay83 <= delay82;
	delay84 <= delay83;
	delay85 <= delay84;
	delay86 <= delay85;
	delay87 <= delay86;
	delay88 <= delay87;
	delay89 <= delay88;
	delay90 <= delay89;
	delay91 <= delay90;
	delay92 <= delay91;
	delay93 <= delay92;
	delay94 <= delay93;
	delay95 <= delay94;
	delay96 <= delay95;
	delay97 <= delay96;
	delay98 <= delay97;
	delay99 <= delay98;
	delay100 <= delay99;
	delay101 <= delay100;
	delay102 <= delay101;
	delay103 <= delay102;
	delay104 <= delay103;
	delay105 <= delay104;
	delay106 <= delay105;
	delay107 <= delay106;
	delay108 <= delay107;
	delay109 <= delay108;
	delay110 <= delay109;
	delay111 <= delay110;
	delay112 <= delay111;
	delay113 <= delay112;
	delay114 <= delay113;
	delay115 <= delay114;
	delay116 <= delay115;
	delay117 <= delay116;
	delay118 <= delay117;
end

//wire signed [12:0] add0 = delay0 + delay118;
//wire signed [12:0] add1 = delay1 + delay117;
//wire signed [12:0] add2 = delay2 + delay116;
//wire signed [12:0] add3 = delay3 + delay115;
//wire signed [12:0] add4 = delay4 + delay114;
//wire signed [12:0] add5 = delay5 + delay113;
//wire signed [12:0] add6 = delay6 + delay112;
//wire signed [12:0] add7 = delay7 + delay111;
//wire signed [12:0] add8 = delay8 + delay110;
//wire signed [12:0] add9 = delay9 + delay109;
//wire signed [12:0] add10 = delay10 + delay108;
//wire signed [12:0] add11 = delay11 + delay107;
//wire signed [12:0] add12 = delay12 + delay106;
//wire signed [12:0] add13 = delay13 + delay105;
//wire signed [12:0] add14 = delay14 + delay104;
//wire signed [12:0] add15 = delay15 + delay103;
//wire signed [12:0] add16 = delay16 + delay102;
//wire signed [12:0] add17 = delay17 + delay101;
//wire signed [12:0] add18 = delay18 + delay100;
//wire signed [12:0] add19 = delay19 + delay99;
//wire signed [12:0] add20 = delay20 + delay98;
//wire signed [12:0] add21 = delay21 + delay97;
//wire signed [12:0] add22 = delay22 + delay96;
//wire signed [12:0] add23 = delay23 + delay95;
//wire signed [12:0] add24 = delay24 + delay94;
//wire signed [12:0] add25 = delay25 + delay93;
//wire signed [12:0] add26 = delay26 + delay92;
//wire signed [12:0] add27 = delay27 + delay91;
//wire signed [12:0] add28 = delay28 + delay90;
//wire signed [12:0] add29 = delay29 + delay89;
//wire signed [12:0] add30 = delay30 + delay88;
//wire signed [12:0] add31 = delay31 + delay87;
//wire signed [12:0] add32 = delay32 + delay86;
//wire signed [12:0] add33 = delay33 + delay85;
//wire signed [12:0] add34 = delay34 + delay84;
//wire signed [12:0] add35 = delay35 + delay83;
//wire signed [12:0] add36 = delay36 + delay82;
//wire signed [12:0] add37 = delay37 + delay81;
//wire signed [12:0] add38 = delay38 + delay80;
//wire signed [12:0] add39 = delay39 + delay79;
//wire signed [12:0] add40 = delay40 + delay78;
//wire signed [12:0] add41 = delay41 + delay77;
//wire signed [12:0] add42 = delay42 + delay76;
//wire signed [12:0] add43 = delay43 + delay75;
//wire signed [12:0] add44 = delay44 + delay74;
//wire signed [12:0] add45 = delay45 + delay73;
//wire signed [12:0] add46 = delay46 + delay72;
//wire signed [12:0] add47 = delay47 + delay71;
//wire signed [12:0] add48 = delay48 + delay70;
//wire signed [12:0] add49 = delay49 + delay69;
//wire signed [12:0] add50 = delay50 + delay68;
//wire signed [12:0] add51 = delay51 + delay67;
//wire signed [12:0] add52 = delay52 + delay66;
//wire signed [12:0] add53 = delay53 + delay65;
//wire signed [12:0] add54 = delay54 + delay64;
//wire signed [12:0] add55 = delay55 + delay63;
//wire signed [12:0] add56 = delay56 + delay62;
//wire signed [12:0] add57 = delay57 + delay61;
//wire signed [12:0] add58 = delay58 + delay60;
//wire signed [12:0] add59 = {delay59[11], delay59};
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
reg signed [12:0] add31;
reg signed [12:0] add32;
reg signed [12:0] add33;
reg signed [12:0] add34;
reg signed [12:0] add35;
reg signed [12:0] add36;
reg signed [12:0] add37;
reg signed [12:0] add38;
reg signed [12:0] add39;
reg signed [12:0] add40;
reg signed [12:0] add41;
reg signed [12:0] add42;
reg signed [12:0] add43;
reg signed [12:0] add44;
reg signed [12:0] add45;
reg signed [12:0] add46;
reg signed [12:0] add47;
reg signed [12:0] add48;
reg signed [12:0] add49;
reg signed [12:0] add50;
reg signed [12:0] add51;
reg signed [12:0] add52;
reg signed [12:0] add53;
reg signed [12:0] add54;
reg signed [12:0] add55;
reg signed [12:0] add56;
reg signed [12:0] add57;
reg signed [12:0] add58;
reg signed [12:0] add59;
always @(posedge clk)
begin
	add0 <= delay0 + delay118;
end
always @(posedge clk)
begin
	add1 <= delay1 + delay117;
end
always @(posedge clk)
begin
	add2 <= delay2 + delay116;
end
always @(posedge clk)
begin
	add3 <= delay3 + delay115;
end
always @(posedge clk)
begin
	add4 <= delay4 + delay114;
end
always @(posedge clk)
begin
	add5 <= delay5 + delay113;
end
always @(posedge clk)
begin
	add6 <= delay6 + delay112;
end
always @(posedge clk)
begin
	add7 <= delay7 + delay111;
end
always @(posedge clk)
begin
	add8 <= delay8 + delay110;
end
always @(posedge clk)
begin
	add9 <= delay9 + delay109;
end
always @(posedge clk)
begin
	add10 <= delay10 + delay108;
end
always @(posedge clk)
begin
	add11 <= delay11 + delay107;
end
always @(posedge clk)
begin
	add12 <= delay12 + delay106;
end
always @(posedge clk)
begin
	add13 <= delay13 + delay105;
end
always @(posedge clk)
begin
	add14 <= delay14 + delay104;
end
always @(posedge clk)
begin
	add15 <= delay15 + delay103;
end
always @(posedge clk)
begin
	add16 <= delay16 + delay102;
end
always @(posedge clk)
begin
	add17 <= delay17 + delay101;
end
always @(posedge clk)
begin
	add18 <= delay18 + delay100;
end
always @(posedge clk)
begin
	add19 <= delay19 + delay99;
end
always @(posedge clk)
begin
	add20 <= delay20 + delay98;
end
always @(posedge clk)
begin
	add21 <= delay21 + delay97;
end
always @(posedge clk)
begin
	add22 <= delay22 + delay96;
end
always @(posedge clk)
begin
	add23 <= delay23 + delay95;
end
always @(posedge clk)
begin
	add24 <= delay24 + delay94;
end
always @(posedge clk)
begin
	add25 <= delay25 + delay93;
end
always @(posedge clk)
begin
	add26 <= delay26 + delay92;
end
always @(posedge clk)
begin
	add27 <= delay27 + delay91;
end
always @(posedge clk)
begin
	add28 <= delay28 + delay90;
end
always @(posedge clk)
begin
	add29 <= delay29 + delay89;
end
always @(posedge clk)
begin
	add30 <= delay30 + delay88;
end
always @(posedge clk)
begin
	add31 <= delay31 + delay87;
end
always @(posedge clk)
begin
	add32 <= delay32 + delay86;
end
always @(posedge clk)
begin
	add33 <= delay33 + delay85;
end
always @(posedge clk)
begin
	add34 <= delay34 + delay84;
end
always @(posedge clk)
begin
	add35 <= delay35 + delay83;
end
always @(posedge clk)
begin
	add36 <= delay36 + delay82;
end
always @(posedge clk)
begin
	add37 <= delay37 + delay81;
end
always @(posedge clk)
begin
	add38 <= delay38 + delay80;
end
always @(posedge clk)
begin
	add39 <= delay39 + delay79;
end
always @(posedge clk)
begin
	add40 <= delay40 + delay78;
end
always @(posedge clk)
begin
	add41 <= delay41 + delay77;
end
always @(posedge clk)
begin
	add42 <= delay42 + delay76;
end
always @(posedge clk)
begin
	add43 <= delay43 + delay75;
end
always @(posedge clk)
begin
	add44 <= delay44 + delay74;
end
always @(posedge clk)
begin
	add45 <= delay45 + delay73;
end
always @(posedge clk)
begin
	add46 <= delay46 + delay72;
end
always @(posedge clk)
begin
	add47 <= delay47 + delay71;
end
always @(posedge clk)
begin
	add48 <= delay48 + delay70;
end
always @(posedge clk)
begin
	add49 <= delay49 + delay69;
end
always @(posedge clk)
begin
	add50 <= delay50 + delay68;
end
always @(posedge clk)
begin
	add51 <= delay51 + delay67;
end
always @(posedge clk)
begin
	add52 <= delay52 + delay66;
end
always @(posedge clk)
begin
	add53 <= delay53 + delay65;
end
always @(posedge clk)
begin
	add54 <= delay54 + delay64;
end
always @(posedge clk)
begin
	add55 <= delay55 + delay63;
end
always @(posedge clk)
begin
	add56 <= delay56 + delay62;
end
always @(posedge clk)
begin
	add57 <= delay57 + delay61;
end
always @(posedge clk)
begin
	add58 <= delay58 + delay60;
end
always @(posedge clk)
begin
	add59 <= {delay59[11], delay59};
end



//-----------------------------------begin lut table-----------------------------------//
wire [5:0] lut_addr0_0 = {add5[0],add4[0],add3[0],add2[0],add1[0],add0[0]};
reg  [12:0] lut0_out0, lut0_0;
wire [5:0] lut_addr0_1 = {add11[0],add10[0],add9[0],add8[0],add7[0],add6[0]};
reg  [10:0] lut0_out1, lut0_1;
wire [5:0] lut_addr0_2 = {add17[0],add16[0],add15[0],add14[0],add13[0],add12[0]};
reg  [10:0] lut0_out2, lut0_2;
wire [5:0] lut_addr0_3 = {add23[0],add22[0],add21[0],add20[0],add19[0],add18[0]};
reg  [10:0] lut0_out3, lut0_3;
wire [5:0] lut_addr0_4 = {add29[0],add28[0],add27[0],add26[0],add25[0],add24[0]};
reg  [11:0] lut0_out4, lut0_4;
wire [5:0] lut_addr0_5 = {add35[0],add34[0],add33[0],add32[0],add31[0],add30[0]};
reg  [11:0] lut0_out5, lut0_5;
wire [5:0] lut_addr0_6 = {add41[0],add40[0],add39[0],add38[0],add37[0],add36[0]};
reg  [11:0] lut0_out6, lut0_6;
wire [5:0] lut_addr0_7 = {add47[0],add46[0],add45[0],add44[0],add43[0],add42[0]};
reg  [12:0] lut0_out7, lut0_7;
wire [5:0] lut_addr0_8 = {add53[0],add52[0],add51[0],add50[0],add49[0],add48[0]};
reg  [13:0] lut0_out8, lut0_8;
wire [5:0] lut_addr0_9 = {add59[0],add58[0],add57[0],add56[0],add55[0],add54[0]};
reg  [16:0] lut0_out9, lut0_9;
wire [5:0] lut_addr1_0 = {add5[1],add4[1],add3[1],add2[1],add1[1],add0[1]};
reg  [12:0] lut1_out0, lut1_0;
wire [5:0] lut_addr1_1 = {add11[1],add10[1],add9[1],add8[1],add7[1],add6[1]};
reg  [10:0] lut1_out1, lut1_1;
wire [5:0] lut_addr1_2 = {add17[1],add16[1],add15[1],add14[1],add13[1],add12[1]};
reg  [10:0] lut1_out2, lut1_2;
wire [5:0] lut_addr1_3 = {add23[1],add22[1],add21[1],add20[1],add19[1],add18[1]};
reg  [10:0] lut1_out3, lut1_3;
wire [5:0] lut_addr1_4 = {add29[1],add28[1],add27[1],add26[1],add25[1],add24[1]};
reg  [11:0] lut1_out4, lut1_4;
wire [5:0] lut_addr1_5 = {add35[1],add34[1],add33[1],add32[1],add31[1],add30[1]};
reg  [11:0] lut1_out5, lut1_5;
wire [5:0] lut_addr1_6 = {add41[1],add40[1],add39[1],add38[1],add37[1],add36[1]};
reg  [11:0] lut1_out6, lut1_6;
wire [5:0] lut_addr1_7 = {add47[1],add46[1],add45[1],add44[1],add43[1],add42[1]};
reg  [12:0] lut1_out7, lut1_7;
wire [5:0] lut_addr1_8 = {add53[1],add52[1],add51[1],add50[1],add49[1],add48[1]};
reg  [13:0] lut1_out8, lut1_8;
wire [5:0] lut_addr1_9 = {add59[1],add58[1],add57[1],add56[1],add55[1],add54[1]};
reg  [16:0] lut1_out9, lut1_9;
wire [5:0] lut_addr2_0 = {add5[2],add4[2],add3[2],add2[2],add1[2],add0[2]};
reg  [12:0] lut2_out0, lut2_0;
wire [5:0] lut_addr2_1 = {add11[2],add10[2],add9[2],add8[2],add7[2],add6[2]};
reg  [10:0] lut2_out1, lut2_1;
wire [5:0] lut_addr2_2 = {add17[2],add16[2],add15[2],add14[2],add13[2],add12[2]};
reg  [10:0] lut2_out2, lut2_2;
wire [5:0] lut_addr2_3 = {add23[2],add22[2],add21[2],add20[2],add19[2],add18[2]};
reg  [10:0] lut2_out3, lut2_3;
wire [5:0] lut_addr2_4 = {add29[2],add28[2],add27[2],add26[2],add25[2],add24[2]};
reg  [11:0] lut2_out4, lut2_4;
wire [5:0] lut_addr2_5 = {add35[2],add34[2],add33[2],add32[2],add31[2],add30[2]};
reg  [11:0] lut2_out5, lut2_5;
wire [5:0] lut_addr2_6 = {add41[2],add40[2],add39[2],add38[2],add37[2],add36[2]};
reg  [11:0] lut2_out6, lut2_6;
wire [5:0] lut_addr2_7 = {add47[2],add46[2],add45[2],add44[2],add43[2],add42[2]};
reg  [12:0] lut2_out7, lut2_7;
wire [5:0] lut_addr2_8 = {add53[2],add52[2],add51[2],add50[2],add49[2],add48[2]};
reg  [13:0] lut2_out8, lut2_8;
wire [5:0] lut_addr2_9 = {add59[2],add58[2],add57[2],add56[2],add55[2],add54[2]};
reg  [16:0] lut2_out9, lut2_9;
wire [5:0] lut_addr3_0 = {add5[3],add4[3],add3[3],add2[3],add1[3],add0[3]};
reg  [12:0] lut3_out0, lut3_0;
wire [5:0] lut_addr3_1 = {add11[3],add10[3],add9[3],add8[3],add7[3],add6[3]};
reg  [10:0] lut3_out1, lut3_1;
wire [5:0] lut_addr3_2 = {add17[3],add16[3],add15[3],add14[3],add13[3],add12[3]};
reg  [10:0] lut3_out2, lut3_2;
wire [5:0] lut_addr3_3 = {add23[3],add22[3],add21[3],add20[3],add19[3],add18[3]};
reg  [10:0] lut3_out3, lut3_3;
wire [5:0] lut_addr3_4 = {add29[3],add28[3],add27[3],add26[3],add25[3],add24[3]};
reg  [11:0] lut3_out4, lut3_4;
wire [5:0] lut_addr3_5 = {add35[3],add34[3],add33[3],add32[3],add31[3],add30[3]};
reg  [11:0] lut3_out5, lut3_5;
wire [5:0] lut_addr3_6 = {add41[3],add40[3],add39[3],add38[3],add37[3],add36[3]};
reg  [11:0] lut3_out6, lut3_6;
wire [5:0] lut_addr3_7 = {add47[3],add46[3],add45[3],add44[3],add43[3],add42[3]};
reg  [12:0] lut3_out7, lut3_7;
wire [5:0] lut_addr3_8 = {add53[3],add52[3],add51[3],add50[3],add49[3],add48[3]};
reg  [13:0] lut3_out8, lut3_8;
wire [5:0] lut_addr3_9 = {add59[3],add58[3],add57[3],add56[3],add55[3],add54[3]};
reg  [16:0] lut3_out9, lut3_9;
wire [5:0] lut_addr4_0 = {add5[4],add4[4],add3[4],add2[4],add1[4],add0[4]};
reg  [12:0] lut4_out0, lut4_0;
wire [5:0] lut_addr4_1 = {add11[4],add10[4],add9[4],add8[4],add7[4],add6[4]};
reg  [10:0] lut4_out1, lut4_1;
wire [5:0] lut_addr4_2 = {add17[4],add16[4],add15[4],add14[4],add13[4],add12[4]};
reg  [10:0] lut4_out2, lut4_2;
wire [5:0] lut_addr4_3 = {add23[4],add22[4],add21[4],add20[4],add19[4],add18[4]};
reg  [10:0] lut4_out3, lut4_3;
wire [5:0] lut_addr4_4 = {add29[4],add28[4],add27[4],add26[4],add25[4],add24[4]};
reg  [11:0] lut4_out4, lut4_4;
wire [5:0] lut_addr4_5 = {add35[4],add34[4],add33[4],add32[4],add31[4],add30[4]};
reg  [11:0] lut4_out5, lut4_5;
wire [5:0] lut_addr4_6 = {add41[4],add40[4],add39[4],add38[4],add37[4],add36[4]};
reg  [11:0] lut4_out6, lut4_6;
wire [5:0] lut_addr4_7 = {add47[4],add46[4],add45[4],add44[4],add43[4],add42[4]};
reg  [12:0] lut4_out7, lut4_7;
wire [5:0] lut_addr4_8 = {add53[4],add52[4],add51[4],add50[4],add49[4],add48[4]};
reg  [13:0] lut4_out8, lut4_8;
wire [5:0] lut_addr4_9 = {add59[4],add58[4],add57[4],add56[4],add55[4],add54[4]};
reg  [16:0] lut4_out9, lut4_9;
wire [5:0] lut_addr5_0 = {add5[5],add4[5],add3[5],add2[5],add1[5],add0[5]};
reg  [12:0] lut5_out0, lut5_0;
wire [5:0] lut_addr5_1 = {add11[5],add10[5],add9[5],add8[5],add7[5],add6[5]};
reg  [10:0] lut5_out1, lut5_1;
wire [5:0] lut_addr5_2 = {add17[5],add16[5],add15[5],add14[5],add13[5],add12[5]};
reg  [10:0] lut5_out2, lut5_2;
wire [5:0] lut_addr5_3 = {add23[5],add22[5],add21[5],add20[5],add19[5],add18[5]};
reg  [10:0] lut5_out3, lut5_3;
wire [5:0] lut_addr5_4 = {add29[5],add28[5],add27[5],add26[5],add25[5],add24[5]};
reg  [11:0] lut5_out4, lut5_4;
wire [5:0] lut_addr5_5 = {add35[5],add34[5],add33[5],add32[5],add31[5],add30[5]};
reg  [11:0] lut5_out5, lut5_5;
wire [5:0] lut_addr5_6 = {add41[5],add40[5],add39[5],add38[5],add37[5],add36[5]};
reg  [11:0] lut5_out6, lut5_6;
wire [5:0] lut_addr5_7 = {add47[5],add46[5],add45[5],add44[5],add43[5],add42[5]};
reg  [12:0] lut5_out7, lut5_7;
wire [5:0] lut_addr5_8 = {add53[5],add52[5],add51[5],add50[5],add49[5],add48[5]};
reg  [13:0] lut5_out8, lut5_8;
wire [5:0] lut_addr5_9 = {add59[5],add58[5],add57[5],add56[5],add55[5],add54[5]};
reg  [16:0] lut5_out9, lut5_9;
wire [5:0] lut_addr6_0 = {add5[6],add4[6],add3[6],add2[6],add1[6],add0[6]};
reg  [12:0] lut6_out0, lut6_0;
wire [5:0] lut_addr6_1 = {add11[6],add10[6],add9[6],add8[6],add7[6],add6[6]};
reg  [10:0] lut6_out1, lut6_1;
wire [5:0] lut_addr6_2 = {add17[6],add16[6],add15[6],add14[6],add13[6],add12[6]};
reg  [10:0] lut6_out2, lut6_2;
wire [5:0] lut_addr6_3 = {add23[6],add22[6],add21[6],add20[6],add19[6],add18[6]};
reg  [10:0] lut6_out3, lut6_3;
wire [5:0] lut_addr6_4 = {add29[6],add28[6],add27[6],add26[6],add25[6],add24[6]};
reg  [11:0] lut6_out4, lut6_4;
wire [5:0] lut_addr6_5 = {add35[6],add34[6],add33[6],add32[6],add31[6],add30[6]};
reg  [11:0] lut6_out5, lut6_5;
wire [5:0] lut_addr6_6 = {add41[6],add40[6],add39[6],add38[6],add37[6],add36[6]};
reg  [11:0] lut6_out6, lut6_6;
wire [5:0] lut_addr6_7 = {add47[6],add46[6],add45[6],add44[6],add43[6],add42[6]};
reg  [12:0] lut6_out7, lut6_7;
wire [5:0] lut_addr6_8 = {add53[6],add52[6],add51[6],add50[6],add49[6],add48[6]};
reg  [13:0] lut6_out8, lut6_8;
wire [5:0] lut_addr6_9 = {add59[6],add58[6],add57[6],add56[6],add55[6],add54[6]};
reg  [16:0] lut6_out9, lut6_9;
wire [5:0] lut_addr7_0 = {add5[7],add4[7],add3[7],add2[7],add1[7],add0[7]};
reg  [12:0] lut7_out0, lut7_0;
wire [5:0] lut_addr7_1 = {add11[7],add10[7],add9[7],add8[7],add7[7],add6[7]};
reg  [10:0] lut7_out1, lut7_1;
wire [5:0] lut_addr7_2 = {add17[7],add16[7],add15[7],add14[7],add13[7],add12[7]};
reg  [10:0] lut7_out2, lut7_2;
wire [5:0] lut_addr7_3 = {add23[7],add22[7],add21[7],add20[7],add19[7],add18[7]};
reg  [10:0] lut7_out3, lut7_3;
wire [5:0] lut_addr7_4 = {add29[7],add28[7],add27[7],add26[7],add25[7],add24[7]};
reg  [11:0] lut7_out4, lut7_4;
wire [5:0] lut_addr7_5 = {add35[7],add34[7],add33[7],add32[7],add31[7],add30[7]};
reg  [11:0] lut7_out5, lut7_5;
wire [5:0] lut_addr7_6 = {add41[7],add40[7],add39[7],add38[7],add37[7],add36[7]};
reg  [11:0] lut7_out6, lut7_6;
wire [5:0] lut_addr7_7 = {add47[7],add46[7],add45[7],add44[7],add43[7],add42[7]};
reg  [12:0] lut7_out7, lut7_7;
wire [5:0] lut_addr7_8 = {add53[7],add52[7],add51[7],add50[7],add49[7],add48[7]};
reg  [13:0] lut7_out8, lut7_8;
wire [5:0] lut_addr7_9 = {add59[7],add58[7],add57[7],add56[7],add55[7],add54[7]};
reg  [16:0] lut7_out9, lut7_9;
wire [5:0] lut_addr8_0 = {add5[8],add4[8],add3[8],add2[8],add1[8],add0[8]};
reg  [12:0] lut8_out0, lut8_0;
wire [5:0] lut_addr8_1 = {add11[8],add10[8],add9[8],add8[8],add7[8],add6[8]};
reg  [10:0] lut8_out1, lut8_1;
wire [5:0] lut_addr8_2 = {add17[8],add16[8],add15[8],add14[8],add13[8],add12[8]};
reg  [10:0] lut8_out2, lut8_2;
wire [5:0] lut_addr8_3 = {add23[8],add22[8],add21[8],add20[8],add19[8],add18[8]};
reg  [10:0] lut8_out3, lut8_3;
wire [5:0] lut_addr8_4 = {add29[8],add28[8],add27[8],add26[8],add25[8],add24[8]};
reg  [11:0] lut8_out4, lut8_4;
wire [5:0] lut_addr8_5 = {add35[8],add34[8],add33[8],add32[8],add31[8],add30[8]};
reg  [11:0] lut8_out5, lut8_5;
wire [5:0] lut_addr8_6 = {add41[8],add40[8],add39[8],add38[8],add37[8],add36[8]};
reg  [11:0] lut8_out6, lut8_6;
wire [5:0] lut_addr8_7 = {add47[8],add46[8],add45[8],add44[8],add43[8],add42[8]};
reg  [12:0] lut8_out7, lut8_7;
wire [5:0] lut_addr8_8 = {add53[8],add52[8],add51[8],add50[8],add49[8],add48[8]};
reg  [13:0] lut8_out8, lut8_8;
wire [5:0] lut_addr8_9 = {add59[8],add58[8],add57[8],add56[8],add55[8],add54[8]};
reg  [16:0] lut8_out9, lut8_9;
wire [5:0] lut_addr9_0 = {add5[9],add4[9],add3[9],add2[9],add1[9],add0[9]};
reg  [12:0] lut9_out0, lut9_0;
wire [5:0] lut_addr9_1 = {add11[9],add10[9],add9[9],add8[9],add7[9],add6[9]};
reg  [10:0] lut9_out1, lut9_1;
wire [5:0] lut_addr9_2 = {add17[9],add16[9],add15[9],add14[9],add13[9],add12[9]};
reg  [10:0] lut9_out2, lut9_2;
wire [5:0] lut_addr9_3 = {add23[9],add22[9],add21[9],add20[9],add19[9],add18[9]};
reg  [10:0] lut9_out3, lut9_3;
wire [5:0] lut_addr9_4 = {add29[9],add28[9],add27[9],add26[9],add25[9],add24[9]};
reg  [11:0] lut9_out4, lut9_4;
wire [5:0] lut_addr9_5 = {add35[9],add34[9],add33[9],add32[9],add31[9],add30[9]};
reg  [11:0] lut9_out5, lut9_5;
wire [5:0] lut_addr9_6 = {add41[9],add40[9],add39[9],add38[9],add37[9],add36[9]};
reg  [11:0] lut9_out6, lut9_6;
wire [5:0] lut_addr9_7 = {add47[9],add46[9],add45[9],add44[9],add43[9],add42[9]};
reg  [12:0] lut9_out7, lut9_7;
wire [5:0] lut_addr9_8 = {add53[9],add52[9],add51[9],add50[9],add49[9],add48[9]};
reg  [13:0] lut9_out8, lut9_8;
wire [5:0] lut_addr9_9 = {add59[9],add58[9],add57[9],add56[9],add55[9],add54[9]};
reg  [16:0] lut9_out9, lut9_9;
wire [5:0] lut_addr10_0 = {add5[10],add4[10],add3[10],add2[10],add1[10],add0[10]};
reg  [12:0] lut10_out0, lut10_0;
wire [5:0] lut_addr10_1 = {add11[10],add10[10],add9[10],add8[10],add7[10],add6[10]};
reg  [10:0] lut10_out1, lut10_1;
wire [5:0] lut_addr10_2 = {add17[10],add16[10],add15[10],add14[10],add13[10],add12[10]};
reg  [10:0] lut10_out2, lut10_2;
wire [5:0] lut_addr10_3 = {add23[10],add22[10],add21[10],add20[10],add19[10],add18[10]};
reg  [10:0] lut10_out3, lut10_3;
wire [5:0] lut_addr10_4 = {add29[10],add28[10],add27[10],add26[10],add25[10],add24[10]};
reg  [11:0] lut10_out4, lut10_4;
wire [5:0] lut_addr10_5 = {add35[10],add34[10],add33[10],add32[10],add31[10],add30[10]};
reg  [11:0] lut10_out5, lut10_5;
wire [5:0] lut_addr10_6 = {add41[10],add40[10],add39[10],add38[10],add37[10],add36[10]};
reg  [11:0] lut10_out6, lut10_6;
wire [5:0] lut_addr10_7 = {add47[10],add46[10],add45[10],add44[10],add43[10],add42[10]};
reg  [12:0] lut10_out7, lut10_7;
wire [5:0] lut_addr10_8 = {add53[10],add52[10],add51[10],add50[10],add49[10],add48[10]};
reg  [13:0] lut10_out8, lut10_8;
wire [5:0] lut_addr10_9 = {add59[10],add58[10],add57[10],add56[10],add55[10],add54[10]};
reg  [16:0] lut10_out9, lut10_9;
wire [5:0] lut_addr11_0 = {add5[11],add4[11],add3[11],add2[11],add1[11],add0[11]};
reg  [12:0] lut11_out0, lut11_0;
wire [5:0] lut_addr11_1 = {add11[11],add10[11],add9[11],add8[11],add7[11],add6[11]};
reg  [10:0] lut11_out1, lut11_1;
wire [5:0] lut_addr11_2 = {add17[11],add16[11],add15[11],add14[11],add13[11],add12[11]};
reg  [10:0] lut11_out2, lut11_2;
wire [5:0] lut_addr11_3 = {add23[11],add22[11],add21[11],add20[11],add19[11],add18[11]};
reg  [10:0] lut11_out3, lut11_3;
wire [5:0] lut_addr11_4 = {add29[11],add28[11],add27[11],add26[11],add25[11],add24[11]};
reg  [11:0] lut11_out4, lut11_4;
wire [5:0] lut_addr11_5 = {add35[11],add34[11],add33[11],add32[11],add31[11],add30[11]};
reg  [11:0] lut11_out5, lut11_5;
wire [5:0] lut_addr11_6 = {add41[11],add40[11],add39[11],add38[11],add37[11],add36[11]};
reg  [11:0] lut11_out6, lut11_6;
wire [5:0] lut_addr11_7 = {add47[11],add46[11],add45[11],add44[11],add43[11],add42[11]};
reg  [12:0] lut11_out7, lut11_7;
wire [5:0] lut_addr11_8 = {add53[11],add52[11],add51[11],add50[11],add49[11],add48[11]};
reg  [13:0] lut11_out8, lut11_8;
wire [5:0] lut_addr11_9 = {add59[11],add58[11],add57[11],add56[11],add55[11],add54[11]};
reg  [16:0] lut11_out9, lut11_9;
wire [5:0] lut_addr12_0 = {add5[12],add4[12],add3[12],add2[12],add1[12],add0[12]};
reg  [12:0] lut12_out0, lut12_0;
wire [5:0] lut_addr12_1 = {add11[12],add10[12],add9[12],add8[12],add7[12],add6[12]};
reg  [10:0] lut12_out1, lut12_1;
wire [5:0] lut_addr12_2 = {add17[12],add16[12],add15[12],add14[12],add13[12],add12[12]};
reg  [10:0] lut12_out2, lut12_2;
wire [5:0] lut_addr12_3 = {add23[12],add22[12],add21[12],add20[12],add19[12],add18[12]};
reg  [10:0] lut12_out3, lut12_3;
wire [5:0] lut_addr12_4 = {add29[12],add28[12],add27[12],add26[12],add25[12],add24[12]};
reg  [11:0] lut12_out4, lut12_4;
wire [5:0] lut_addr12_5 = {add35[12],add34[12],add33[12],add32[12],add31[12],add30[12]};
reg  [11:0] lut12_out5, lut12_5;
wire [5:0] lut_addr12_6 = {add41[12],add40[12],add39[12],add38[12],add37[12],add36[12]};
reg  [11:0] lut12_out6, lut12_6;
wire [5:0] lut_addr12_7 = {add47[12],add46[12],add45[12],add44[12],add43[12],add42[12]};
reg  [12:0] lut12_out7, lut12_7;
wire [5:0] lut_addr12_8 = {add53[12],add52[12],add51[12],add50[12],add49[12],add48[12]};
reg  [13:0] lut12_out8, lut12_8;
wire [5:0] lut_addr12_9 = {add59[12],add58[12],add57[12],add56[12],add55[12],add54[12]};
reg  [16:0] lut12_out9, lut12_9;
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
	6'd0 : lut0_out5 = (0);
	6'd1 : lut0_out5 = (coeff30);
	6'd2 : lut0_out5 = (coeff31);
	6'd3 : lut0_out5 = (coeff30+coeff31);
	6'd4 : lut0_out5 = (coeff32);
	6'd5 : lut0_out5 = (coeff30+coeff32);
	6'd6 : lut0_out5 = (coeff31+coeff32);
	6'd7 : lut0_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut0_out5 = (coeff33);
	6'd9 : lut0_out5 = (coeff30+coeff33);
	6'd10 : lut0_out5 = (coeff31+coeff33);
	6'd11 : lut0_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut0_out5 = (coeff32+coeff33);
	6'd13 : lut0_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut0_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut0_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut0_out5 = (coeff34);
	6'd17 : lut0_out5 = (coeff30+coeff34);
	6'd18 : lut0_out5 = (coeff31+coeff34);
	6'd19 : lut0_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut0_out5 = (coeff32+coeff34);
	6'd21 : lut0_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut0_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut0_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut0_out5 = (coeff33+coeff34);
	6'd25 : lut0_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut0_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut0_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut0_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut0_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut0_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut0_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut0_out5 = (coeff35);
	6'd33 : lut0_out5 = (coeff30+coeff35);
	6'd34 : lut0_out5 = (coeff31+coeff35);
	6'd35 : lut0_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut0_out5 = (coeff32+coeff35);
	6'd37 : lut0_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut0_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut0_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut0_out5 = (coeff33+coeff35);
	6'd41 : lut0_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut0_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut0_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut0_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut0_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut0_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut0_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut0_out5 = (coeff34+coeff35);
	6'd49 : lut0_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut0_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut0_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut0_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut0_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut0_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut0_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut0_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut0_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut0_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut0_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut0_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut0_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut0_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut0_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut0_out5 = 0;
	endcase
end
always @(lut_addr0_6)
begin
	case(lut_addr0_6)
	6'd0 : lut0_out6 = (0);
	6'd1 : lut0_out6 = (coeff36);
	6'd2 : lut0_out6 = (coeff37);
	6'd3 : lut0_out6 = (coeff36+coeff37);
	6'd4 : lut0_out6 = (coeff38);
	6'd5 : lut0_out6 = (coeff36+coeff38);
	6'd6 : lut0_out6 = (coeff37+coeff38);
	6'd7 : lut0_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut0_out6 = (coeff39);
	6'd9 : lut0_out6 = (coeff36+coeff39);
	6'd10 : lut0_out6 = (coeff37+coeff39);
	6'd11 : lut0_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut0_out6 = (coeff38+coeff39);
	6'd13 : lut0_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut0_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut0_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut0_out6 = (coeff40);
	6'd17 : lut0_out6 = (coeff36+coeff40);
	6'd18 : lut0_out6 = (coeff37+coeff40);
	6'd19 : lut0_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut0_out6 = (coeff38+coeff40);
	6'd21 : lut0_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut0_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut0_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut0_out6 = (coeff39+coeff40);
	6'd25 : lut0_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut0_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut0_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut0_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut0_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut0_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut0_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut0_out6 = (coeff41);
	6'd33 : lut0_out6 = (coeff36+coeff41);
	6'd34 : lut0_out6 = (coeff37+coeff41);
	6'd35 : lut0_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut0_out6 = (coeff38+coeff41);
	6'd37 : lut0_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut0_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut0_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut0_out6 = (coeff39+coeff41);
	6'd41 : lut0_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut0_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut0_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut0_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut0_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut0_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut0_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut0_out6 = (coeff40+coeff41);
	6'd49 : lut0_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut0_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut0_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut0_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut0_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut0_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut0_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut0_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut0_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut0_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut0_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut0_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut0_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut0_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut0_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut0_out6 = 0;
	endcase
end
always @(lut_addr0_7)
begin
	case(lut_addr0_7)
	6'd0 : lut0_out7 = (0);
	6'd1 : lut0_out7 = (coeff42);
	6'd2 : lut0_out7 = (coeff43);
	6'd3 : lut0_out7 = (coeff42+coeff43);
	6'd4 : lut0_out7 = (coeff44);
	6'd5 : lut0_out7 = (coeff42+coeff44);
	6'd6 : lut0_out7 = (coeff43+coeff44);
	6'd7 : lut0_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut0_out7 = (coeff45);
	6'd9 : lut0_out7 = (coeff42+coeff45);
	6'd10 : lut0_out7 = (coeff43+coeff45);
	6'd11 : lut0_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut0_out7 = (coeff44+coeff45);
	6'd13 : lut0_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut0_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut0_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut0_out7 = (coeff46);
	6'd17 : lut0_out7 = (coeff42+coeff46);
	6'd18 : lut0_out7 = (coeff43+coeff46);
	6'd19 : lut0_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut0_out7 = (coeff44+coeff46);
	6'd21 : lut0_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut0_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut0_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut0_out7 = (coeff45+coeff46);
	6'd25 : lut0_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut0_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut0_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut0_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut0_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut0_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut0_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut0_out7 = (coeff47);
	6'd33 : lut0_out7 = (coeff42+coeff47);
	6'd34 : lut0_out7 = (coeff43+coeff47);
	6'd35 : lut0_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut0_out7 = (coeff44+coeff47);
	6'd37 : lut0_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut0_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut0_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut0_out7 = (coeff45+coeff47);
	6'd41 : lut0_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut0_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut0_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut0_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut0_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut0_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut0_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut0_out7 = (coeff46+coeff47);
	6'd49 : lut0_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut0_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut0_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut0_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut0_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut0_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut0_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut0_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut0_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut0_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut0_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut0_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut0_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut0_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut0_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut0_out7 = 0;
	endcase
end
always @(lut_addr0_8)
begin
	case(lut_addr0_8)
	6'd0 : lut0_out8 = (0);
	6'd1 : lut0_out8 = (coeff48);
	6'd2 : lut0_out8 = (coeff49);
	6'd3 : lut0_out8 = (coeff48+coeff49);
	6'd4 : lut0_out8 = (coeff50);
	6'd5 : lut0_out8 = (coeff48+coeff50);
	6'd6 : lut0_out8 = (coeff49+coeff50);
	6'd7 : lut0_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut0_out8 = (coeff51);
	6'd9 : lut0_out8 = (coeff48+coeff51);
	6'd10 : lut0_out8 = (coeff49+coeff51);
	6'd11 : lut0_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut0_out8 = (coeff50+coeff51);
	6'd13 : lut0_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut0_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut0_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut0_out8 = (coeff52);
	6'd17 : lut0_out8 = (coeff48+coeff52);
	6'd18 : lut0_out8 = (coeff49+coeff52);
	6'd19 : lut0_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut0_out8 = (coeff50+coeff52);
	6'd21 : lut0_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut0_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut0_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut0_out8 = (coeff51+coeff52);
	6'd25 : lut0_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut0_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut0_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut0_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut0_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut0_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut0_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut0_out8 = (coeff53);
	6'd33 : lut0_out8 = (coeff48+coeff53);
	6'd34 : lut0_out8 = (coeff49+coeff53);
	6'd35 : lut0_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut0_out8 = (coeff50+coeff53);
	6'd37 : lut0_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut0_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut0_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut0_out8 = (coeff51+coeff53);
	6'd41 : lut0_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut0_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut0_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut0_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut0_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut0_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut0_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut0_out8 = (coeff52+coeff53);
	6'd49 : lut0_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut0_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut0_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut0_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut0_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut0_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut0_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut0_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut0_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut0_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut0_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut0_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut0_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut0_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut0_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut0_out8 = 0;
	endcase
end
always @(lut_addr0_9)
begin
	case(lut_addr0_9)
	6'd0 : lut0_out9 = (0);
	6'd1 : lut0_out9 = (coeff54);
	6'd2 : lut0_out9 = (coeff55);
	6'd3 : lut0_out9 = (coeff54+coeff55);
	6'd4 : lut0_out9 = (coeff56);
	6'd5 : lut0_out9 = (coeff54+coeff56);
	6'd6 : lut0_out9 = (coeff55+coeff56);
	6'd7 : lut0_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut0_out9 = (coeff57);
	6'd9 : lut0_out9 = (coeff54+coeff57);
	6'd10 : lut0_out9 = (coeff55+coeff57);
	6'd11 : lut0_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut0_out9 = (coeff56+coeff57);
	6'd13 : lut0_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut0_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut0_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut0_out9 = (coeff58);
	6'd17 : lut0_out9 = (coeff54+coeff58);
	6'd18 : lut0_out9 = (coeff55+coeff58);
	6'd19 : lut0_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut0_out9 = (coeff56+coeff58);
	6'd21 : lut0_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut0_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut0_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut0_out9 = (coeff57+coeff58);
	6'd25 : lut0_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut0_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut0_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut0_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut0_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut0_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut0_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut0_out9 = (coeff59);
	6'd33 : lut0_out9 = (coeff54+coeff59);
	6'd34 : lut0_out9 = (coeff55+coeff59);
	6'd35 : lut0_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut0_out9 = (coeff56+coeff59);
	6'd37 : lut0_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut0_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut0_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut0_out9 = (coeff57+coeff59);
	6'd41 : lut0_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut0_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut0_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut0_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut0_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut0_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut0_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut0_out9 = (coeff58+coeff59);
	6'd49 : lut0_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut0_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut0_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut0_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut0_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut0_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut0_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut0_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut0_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut0_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut0_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut0_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut0_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut0_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut0_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut0_out9 = 0;
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
	6'd0 : lut1_out5 = (0);
	6'd1 : lut1_out5 = (coeff30);
	6'd2 : lut1_out5 = (coeff31);
	6'd3 : lut1_out5 = (coeff30+coeff31);
	6'd4 : lut1_out5 = (coeff32);
	6'd5 : lut1_out5 = (coeff30+coeff32);
	6'd6 : lut1_out5 = (coeff31+coeff32);
	6'd7 : lut1_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut1_out5 = (coeff33);
	6'd9 : lut1_out5 = (coeff30+coeff33);
	6'd10 : lut1_out5 = (coeff31+coeff33);
	6'd11 : lut1_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut1_out5 = (coeff32+coeff33);
	6'd13 : lut1_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut1_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut1_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut1_out5 = (coeff34);
	6'd17 : lut1_out5 = (coeff30+coeff34);
	6'd18 : lut1_out5 = (coeff31+coeff34);
	6'd19 : lut1_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut1_out5 = (coeff32+coeff34);
	6'd21 : lut1_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut1_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut1_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut1_out5 = (coeff33+coeff34);
	6'd25 : lut1_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut1_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut1_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut1_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut1_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut1_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut1_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut1_out5 = (coeff35);
	6'd33 : lut1_out5 = (coeff30+coeff35);
	6'd34 : lut1_out5 = (coeff31+coeff35);
	6'd35 : lut1_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut1_out5 = (coeff32+coeff35);
	6'd37 : lut1_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut1_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut1_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut1_out5 = (coeff33+coeff35);
	6'd41 : lut1_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut1_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut1_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut1_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut1_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut1_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut1_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut1_out5 = (coeff34+coeff35);
	6'd49 : lut1_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut1_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut1_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut1_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut1_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut1_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut1_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut1_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut1_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut1_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut1_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut1_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut1_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut1_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut1_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut1_out5 = 0;
	endcase
end
always @(lut_addr1_6)
begin
	case(lut_addr1_6)
	6'd0 : lut1_out6 = (0);
	6'd1 : lut1_out6 = (coeff36);
	6'd2 : lut1_out6 = (coeff37);
	6'd3 : lut1_out6 = (coeff36+coeff37);
	6'd4 : lut1_out6 = (coeff38);
	6'd5 : lut1_out6 = (coeff36+coeff38);
	6'd6 : lut1_out6 = (coeff37+coeff38);
	6'd7 : lut1_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut1_out6 = (coeff39);
	6'd9 : lut1_out6 = (coeff36+coeff39);
	6'd10 : lut1_out6 = (coeff37+coeff39);
	6'd11 : lut1_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut1_out6 = (coeff38+coeff39);
	6'd13 : lut1_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut1_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut1_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut1_out6 = (coeff40);
	6'd17 : lut1_out6 = (coeff36+coeff40);
	6'd18 : lut1_out6 = (coeff37+coeff40);
	6'd19 : lut1_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut1_out6 = (coeff38+coeff40);
	6'd21 : lut1_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut1_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut1_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut1_out6 = (coeff39+coeff40);
	6'd25 : lut1_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut1_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut1_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut1_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut1_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut1_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut1_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut1_out6 = (coeff41);
	6'd33 : lut1_out6 = (coeff36+coeff41);
	6'd34 : lut1_out6 = (coeff37+coeff41);
	6'd35 : lut1_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut1_out6 = (coeff38+coeff41);
	6'd37 : lut1_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut1_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut1_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut1_out6 = (coeff39+coeff41);
	6'd41 : lut1_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut1_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut1_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut1_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut1_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut1_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut1_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut1_out6 = (coeff40+coeff41);
	6'd49 : lut1_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut1_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut1_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut1_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut1_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut1_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut1_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut1_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut1_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut1_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut1_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut1_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut1_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut1_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut1_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut1_out6 = 0;
	endcase
end
always @(lut_addr1_7)
begin
	case(lut_addr1_7)
	6'd0 : lut1_out7 = (0);
	6'd1 : lut1_out7 = (coeff42);
	6'd2 : lut1_out7 = (coeff43);
	6'd3 : lut1_out7 = (coeff42+coeff43);
	6'd4 : lut1_out7 = (coeff44);
	6'd5 : lut1_out7 = (coeff42+coeff44);
	6'd6 : lut1_out7 = (coeff43+coeff44);
	6'd7 : lut1_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut1_out7 = (coeff45);
	6'd9 : lut1_out7 = (coeff42+coeff45);
	6'd10 : lut1_out7 = (coeff43+coeff45);
	6'd11 : lut1_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut1_out7 = (coeff44+coeff45);
	6'd13 : lut1_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut1_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut1_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut1_out7 = (coeff46);
	6'd17 : lut1_out7 = (coeff42+coeff46);
	6'd18 : lut1_out7 = (coeff43+coeff46);
	6'd19 : lut1_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut1_out7 = (coeff44+coeff46);
	6'd21 : lut1_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut1_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut1_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut1_out7 = (coeff45+coeff46);
	6'd25 : lut1_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut1_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut1_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut1_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut1_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut1_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut1_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut1_out7 = (coeff47);
	6'd33 : lut1_out7 = (coeff42+coeff47);
	6'd34 : lut1_out7 = (coeff43+coeff47);
	6'd35 : lut1_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut1_out7 = (coeff44+coeff47);
	6'd37 : lut1_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut1_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut1_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut1_out7 = (coeff45+coeff47);
	6'd41 : lut1_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut1_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut1_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut1_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut1_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut1_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut1_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut1_out7 = (coeff46+coeff47);
	6'd49 : lut1_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut1_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut1_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut1_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut1_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut1_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut1_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut1_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut1_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut1_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut1_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut1_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut1_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut1_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut1_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut1_out7 = 0;
	endcase
end
always @(lut_addr1_8)
begin
	case(lut_addr1_8)
	6'd0 : lut1_out8 = (0);
	6'd1 : lut1_out8 = (coeff48);
	6'd2 : lut1_out8 = (coeff49);
	6'd3 : lut1_out8 = (coeff48+coeff49);
	6'd4 : lut1_out8 = (coeff50);
	6'd5 : lut1_out8 = (coeff48+coeff50);
	6'd6 : lut1_out8 = (coeff49+coeff50);
	6'd7 : lut1_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut1_out8 = (coeff51);
	6'd9 : lut1_out8 = (coeff48+coeff51);
	6'd10 : lut1_out8 = (coeff49+coeff51);
	6'd11 : lut1_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut1_out8 = (coeff50+coeff51);
	6'd13 : lut1_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut1_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut1_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut1_out8 = (coeff52);
	6'd17 : lut1_out8 = (coeff48+coeff52);
	6'd18 : lut1_out8 = (coeff49+coeff52);
	6'd19 : lut1_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut1_out8 = (coeff50+coeff52);
	6'd21 : lut1_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut1_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut1_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut1_out8 = (coeff51+coeff52);
	6'd25 : lut1_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut1_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut1_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut1_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut1_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut1_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut1_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut1_out8 = (coeff53);
	6'd33 : lut1_out8 = (coeff48+coeff53);
	6'd34 : lut1_out8 = (coeff49+coeff53);
	6'd35 : lut1_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut1_out8 = (coeff50+coeff53);
	6'd37 : lut1_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut1_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut1_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut1_out8 = (coeff51+coeff53);
	6'd41 : lut1_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut1_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut1_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut1_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut1_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut1_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut1_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut1_out8 = (coeff52+coeff53);
	6'd49 : lut1_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut1_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut1_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut1_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut1_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut1_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut1_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut1_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut1_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut1_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut1_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut1_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut1_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut1_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut1_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut1_out8 = 0;
	endcase
end
always @(lut_addr1_9)
begin
	case(lut_addr1_9)
	6'd0 : lut1_out9 = (0);
	6'd1 : lut1_out9 = (coeff54);
	6'd2 : lut1_out9 = (coeff55);
	6'd3 : lut1_out9 = (coeff54+coeff55);
	6'd4 : lut1_out9 = (coeff56);
	6'd5 : lut1_out9 = (coeff54+coeff56);
	6'd6 : lut1_out9 = (coeff55+coeff56);
	6'd7 : lut1_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut1_out9 = (coeff57);
	6'd9 : lut1_out9 = (coeff54+coeff57);
	6'd10 : lut1_out9 = (coeff55+coeff57);
	6'd11 : lut1_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut1_out9 = (coeff56+coeff57);
	6'd13 : lut1_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut1_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut1_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut1_out9 = (coeff58);
	6'd17 : lut1_out9 = (coeff54+coeff58);
	6'd18 : lut1_out9 = (coeff55+coeff58);
	6'd19 : lut1_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut1_out9 = (coeff56+coeff58);
	6'd21 : lut1_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut1_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut1_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut1_out9 = (coeff57+coeff58);
	6'd25 : lut1_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut1_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut1_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut1_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut1_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut1_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut1_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut1_out9 = (coeff59);
	6'd33 : lut1_out9 = (coeff54+coeff59);
	6'd34 : lut1_out9 = (coeff55+coeff59);
	6'd35 : lut1_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut1_out9 = (coeff56+coeff59);
	6'd37 : lut1_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut1_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut1_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut1_out9 = (coeff57+coeff59);
	6'd41 : lut1_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut1_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut1_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut1_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut1_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut1_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut1_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut1_out9 = (coeff58+coeff59);
	6'd49 : lut1_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut1_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut1_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut1_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut1_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut1_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut1_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut1_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut1_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut1_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut1_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut1_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut1_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut1_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut1_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut1_out9 = 0;
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
	6'd0 : lut2_out5 = (0);
	6'd1 : lut2_out5 = (coeff30);
	6'd2 : lut2_out5 = (coeff31);
	6'd3 : lut2_out5 = (coeff30+coeff31);
	6'd4 : lut2_out5 = (coeff32);
	6'd5 : lut2_out5 = (coeff30+coeff32);
	6'd6 : lut2_out5 = (coeff31+coeff32);
	6'd7 : lut2_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut2_out5 = (coeff33);
	6'd9 : lut2_out5 = (coeff30+coeff33);
	6'd10 : lut2_out5 = (coeff31+coeff33);
	6'd11 : lut2_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut2_out5 = (coeff32+coeff33);
	6'd13 : lut2_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut2_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut2_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut2_out5 = (coeff34);
	6'd17 : lut2_out5 = (coeff30+coeff34);
	6'd18 : lut2_out5 = (coeff31+coeff34);
	6'd19 : lut2_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut2_out5 = (coeff32+coeff34);
	6'd21 : lut2_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut2_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut2_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut2_out5 = (coeff33+coeff34);
	6'd25 : lut2_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut2_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut2_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut2_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut2_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut2_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut2_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut2_out5 = (coeff35);
	6'd33 : lut2_out5 = (coeff30+coeff35);
	6'd34 : lut2_out5 = (coeff31+coeff35);
	6'd35 : lut2_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut2_out5 = (coeff32+coeff35);
	6'd37 : lut2_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut2_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut2_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut2_out5 = (coeff33+coeff35);
	6'd41 : lut2_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut2_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut2_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut2_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut2_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut2_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut2_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut2_out5 = (coeff34+coeff35);
	6'd49 : lut2_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut2_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut2_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut2_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut2_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut2_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut2_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut2_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut2_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut2_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut2_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut2_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut2_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut2_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut2_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut2_out5 = 0;
	endcase
end
always @(lut_addr2_6)
begin
	case(lut_addr2_6)
	6'd0 : lut2_out6 = (0);
	6'd1 : lut2_out6 = (coeff36);
	6'd2 : lut2_out6 = (coeff37);
	6'd3 : lut2_out6 = (coeff36+coeff37);
	6'd4 : lut2_out6 = (coeff38);
	6'd5 : lut2_out6 = (coeff36+coeff38);
	6'd6 : lut2_out6 = (coeff37+coeff38);
	6'd7 : lut2_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut2_out6 = (coeff39);
	6'd9 : lut2_out6 = (coeff36+coeff39);
	6'd10 : lut2_out6 = (coeff37+coeff39);
	6'd11 : lut2_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut2_out6 = (coeff38+coeff39);
	6'd13 : lut2_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut2_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut2_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut2_out6 = (coeff40);
	6'd17 : lut2_out6 = (coeff36+coeff40);
	6'd18 : lut2_out6 = (coeff37+coeff40);
	6'd19 : lut2_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut2_out6 = (coeff38+coeff40);
	6'd21 : lut2_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut2_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut2_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut2_out6 = (coeff39+coeff40);
	6'd25 : lut2_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut2_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut2_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut2_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut2_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut2_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut2_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut2_out6 = (coeff41);
	6'd33 : lut2_out6 = (coeff36+coeff41);
	6'd34 : lut2_out6 = (coeff37+coeff41);
	6'd35 : lut2_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut2_out6 = (coeff38+coeff41);
	6'd37 : lut2_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut2_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut2_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut2_out6 = (coeff39+coeff41);
	6'd41 : lut2_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut2_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut2_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut2_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut2_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut2_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut2_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut2_out6 = (coeff40+coeff41);
	6'd49 : lut2_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut2_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut2_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut2_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut2_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut2_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut2_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut2_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut2_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut2_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut2_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut2_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut2_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut2_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut2_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut2_out6 = 0;
	endcase
end
always @(lut_addr2_7)
begin
	case(lut_addr2_7)
	6'd0 : lut2_out7 = (0);
	6'd1 : lut2_out7 = (coeff42);
	6'd2 : lut2_out7 = (coeff43);
	6'd3 : lut2_out7 = (coeff42+coeff43);
	6'd4 : lut2_out7 = (coeff44);
	6'd5 : lut2_out7 = (coeff42+coeff44);
	6'd6 : lut2_out7 = (coeff43+coeff44);
	6'd7 : lut2_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut2_out7 = (coeff45);
	6'd9 : lut2_out7 = (coeff42+coeff45);
	6'd10 : lut2_out7 = (coeff43+coeff45);
	6'd11 : lut2_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut2_out7 = (coeff44+coeff45);
	6'd13 : lut2_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut2_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut2_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut2_out7 = (coeff46);
	6'd17 : lut2_out7 = (coeff42+coeff46);
	6'd18 : lut2_out7 = (coeff43+coeff46);
	6'd19 : lut2_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut2_out7 = (coeff44+coeff46);
	6'd21 : lut2_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut2_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut2_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut2_out7 = (coeff45+coeff46);
	6'd25 : lut2_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut2_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut2_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut2_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut2_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut2_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut2_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut2_out7 = (coeff47);
	6'd33 : lut2_out7 = (coeff42+coeff47);
	6'd34 : lut2_out7 = (coeff43+coeff47);
	6'd35 : lut2_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut2_out7 = (coeff44+coeff47);
	6'd37 : lut2_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut2_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut2_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut2_out7 = (coeff45+coeff47);
	6'd41 : lut2_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut2_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut2_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut2_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut2_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut2_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut2_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut2_out7 = (coeff46+coeff47);
	6'd49 : lut2_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut2_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut2_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut2_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut2_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut2_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut2_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut2_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut2_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut2_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut2_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut2_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut2_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut2_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut2_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut2_out7 = 0;
	endcase
end
always @(lut_addr2_8)
begin
	case(lut_addr2_8)
	6'd0 : lut2_out8 = (0);
	6'd1 : lut2_out8 = (coeff48);
	6'd2 : lut2_out8 = (coeff49);
	6'd3 : lut2_out8 = (coeff48+coeff49);
	6'd4 : lut2_out8 = (coeff50);
	6'd5 : lut2_out8 = (coeff48+coeff50);
	6'd6 : lut2_out8 = (coeff49+coeff50);
	6'd7 : lut2_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut2_out8 = (coeff51);
	6'd9 : lut2_out8 = (coeff48+coeff51);
	6'd10 : lut2_out8 = (coeff49+coeff51);
	6'd11 : lut2_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut2_out8 = (coeff50+coeff51);
	6'd13 : lut2_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut2_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut2_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut2_out8 = (coeff52);
	6'd17 : lut2_out8 = (coeff48+coeff52);
	6'd18 : lut2_out8 = (coeff49+coeff52);
	6'd19 : lut2_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut2_out8 = (coeff50+coeff52);
	6'd21 : lut2_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut2_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut2_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut2_out8 = (coeff51+coeff52);
	6'd25 : lut2_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut2_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut2_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut2_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut2_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut2_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut2_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut2_out8 = (coeff53);
	6'd33 : lut2_out8 = (coeff48+coeff53);
	6'd34 : lut2_out8 = (coeff49+coeff53);
	6'd35 : lut2_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut2_out8 = (coeff50+coeff53);
	6'd37 : lut2_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut2_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut2_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut2_out8 = (coeff51+coeff53);
	6'd41 : lut2_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut2_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut2_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut2_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut2_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut2_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut2_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut2_out8 = (coeff52+coeff53);
	6'd49 : lut2_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut2_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut2_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut2_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut2_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut2_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut2_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut2_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut2_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut2_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut2_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut2_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut2_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut2_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut2_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut2_out8 = 0;
	endcase
end
always @(lut_addr2_9)
begin
	case(lut_addr2_9)
	6'd0 : lut2_out9 = (0);
	6'd1 : lut2_out9 = (coeff54);
	6'd2 : lut2_out9 = (coeff55);
	6'd3 : lut2_out9 = (coeff54+coeff55);
	6'd4 : lut2_out9 = (coeff56);
	6'd5 : lut2_out9 = (coeff54+coeff56);
	6'd6 : lut2_out9 = (coeff55+coeff56);
	6'd7 : lut2_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut2_out9 = (coeff57);
	6'd9 : lut2_out9 = (coeff54+coeff57);
	6'd10 : lut2_out9 = (coeff55+coeff57);
	6'd11 : lut2_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut2_out9 = (coeff56+coeff57);
	6'd13 : lut2_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut2_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut2_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut2_out9 = (coeff58);
	6'd17 : lut2_out9 = (coeff54+coeff58);
	6'd18 : lut2_out9 = (coeff55+coeff58);
	6'd19 : lut2_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut2_out9 = (coeff56+coeff58);
	6'd21 : lut2_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut2_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut2_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut2_out9 = (coeff57+coeff58);
	6'd25 : lut2_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut2_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut2_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut2_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut2_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut2_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut2_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut2_out9 = (coeff59);
	6'd33 : lut2_out9 = (coeff54+coeff59);
	6'd34 : lut2_out9 = (coeff55+coeff59);
	6'd35 : lut2_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut2_out9 = (coeff56+coeff59);
	6'd37 : lut2_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut2_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut2_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut2_out9 = (coeff57+coeff59);
	6'd41 : lut2_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut2_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut2_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut2_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut2_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut2_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut2_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut2_out9 = (coeff58+coeff59);
	6'd49 : lut2_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut2_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut2_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut2_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut2_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut2_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut2_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut2_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut2_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut2_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut2_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut2_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut2_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut2_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut2_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut2_out9 = 0;
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
	6'd0 : lut3_out5 = (0);
	6'd1 : lut3_out5 = (coeff30);
	6'd2 : lut3_out5 = (coeff31);
	6'd3 : lut3_out5 = (coeff30+coeff31);
	6'd4 : lut3_out5 = (coeff32);
	6'd5 : lut3_out5 = (coeff30+coeff32);
	6'd6 : lut3_out5 = (coeff31+coeff32);
	6'd7 : lut3_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut3_out5 = (coeff33);
	6'd9 : lut3_out5 = (coeff30+coeff33);
	6'd10 : lut3_out5 = (coeff31+coeff33);
	6'd11 : lut3_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut3_out5 = (coeff32+coeff33);
	6'd13 : lut3_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut3_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut3_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut3_out5 = (coeff34);
	6'd17 : lut3_out5 = (coeff30+coeff34);
	6'd18 : lut3_out5 = (coeff31+coeff34);
	6'd19 : lut3_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut3_out5 = (coeff32+coeff34);
	6'd21 : lut3_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut3_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut3_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut3_out5 = (coeff33+coeff34);
	6'd25 : lut3_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut3_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut3_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut3_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut3_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut3_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut3_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut3_out5 = (coeff35);
	6'd33 : lut3_out5 = (coeff30+coeff35);
	6'd34 : lut3_out5 = (coeff31+coeff35);
	6'd35 : lut3_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut3_out5 = (coeff32+coeff35);
	6'd37 : lut3_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut3_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut3_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut3_out5 = (coeff33+coeff35);
	6'd41 : lut3_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut3_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut3_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut3_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut3_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut3_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut3_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut3_out5 = (coeff34+coeff35);
	6'd49 : lut3_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut3_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut3_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut3_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut3_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut3_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut3_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut3_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut3_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut3_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut3_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut3_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut3_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut3_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut3_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut3_out5 = 0;
	endcase
end
always @(lut_addr3_6)
begin
	case(lut_addr3_6)
	6'd0 : lut3_out6 = (0);
	6'd1 : lut3_out6 = (coeff36);
	6'd2 : lut3_out6 = (coeff37);
	6'd3 : lut3_out6 = (coeff36+coeff37);
	6'd4 : lut3_out6 = (coeff38);
	6'd5 : lut3_out6 = (coeff36+coeff38);
	6'd6 : lut3_out6 = (coeff37+coeff38);
	6'd7 : lut3_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut3_out6 = (coeff39);
	6'd9 : lut3_out6 = (coeff36+coeff39);
	6'd10 : lut3_out6 = (coeff37+coeff39);
	6'd11 : lut3_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut3_out6 = (coeff38+coeff39);
	6'd13 : lut3_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut3_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut3_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut3_out6 = (coeff40);
	6'd17 : lut3_out6 = (coeff36+coeff40);
	6'd18 : lut3_out6 = (coeff37+coeff40);
	6'd19 : lut3_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut3_out6 = (coeff38+coeff40);
	6'd21 : lut3_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut3_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut3_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut3_out6 = (coeff39+coeff40);
	6'd25 : lut3_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut3_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut3_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut3_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut3_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut3_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut3_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut3_out6 = (coeff41);
	6'd33 : lut3_out6 = (coeff36+coeff41);
	6'd34 : lut3_out6 = (coeff37+coeff41);
	6'd35 : lut3_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut3_out6 = (coeff38+coeff41);
	6'd37 : lut3_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut3_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut3_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut3_out6 = (coeff39+coeff41);
	6'd41 : lut3_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut3_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut3_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut3_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut3_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut3_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut3_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut3_out6 = (coeff40+coeff41);
	6'd49 : lut3_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut3_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut3_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut3_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut3_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut3_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut3_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut3_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut3_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut3_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut3_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut3_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut3_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut3_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut3_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut3_out6 = 0;
	endcase
end
always @(lut_addr3_7)
begin
	case(lut_addr3_7)
	6'd0 : lut3_out7 = (0);
	6'd1 : lut3_out7 = (coeff42);
	6'd2 : lut3_out7 = (coeff43);
	6'd3 : lut3_out7 = (coeff42+coeff43);
	6'd4 : lut3_out7 = (coeff44);
	6'd5 : lut3_out7 = (coeff42+coeff44);
	6'd6 : lut3_out7 = (coeff43+coeff44);
	6'd7 : lut3_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut3_out7 = (coeff45);
	6'd9 : lut3_out7 = (coeff42+coeff45);
	6'd10 : lut3_out7 = (coeff43+coeff45);
	6'd11 : lut3_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut3_out7 = (coeff44+coeff45);
	6'd13 : lut3_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut3_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut3_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut3_out7 = (coeff46);
	6'd17 : lut3_out7 = (coeff42+coeff46);
	6'd18 : lut3_out7 = (coeff43+coeff46);
	6'd19 : lut3_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut3_out7 = (coeff44+coeff46);
	6'd21 : lut3_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut3_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut3_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut3_out7 = (coeff45+coeff46);
	6'd25 : lut3_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut3_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut3_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut3_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut3_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut3_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut3_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut3_out7 = (coeff47);
	6'd33 : lut3_out7 = (coeff42+coeff47);
	6'd34 : lut3_out7 = (coeff43+coeff47);
	6'd35 : lut3_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut3_out7 = (coeff44+coeff47);
	6'd37 : lut3_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut3_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut3_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut3_out7 = (coeff45+coeff47);
	6'd41 : lut3_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut3_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut3_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut3_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut3_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut3_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut3_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut3_out7 = (coeff46+coeff47);
	6'd49 : lut3_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut3_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut3_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut3_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut3_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut3_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut3_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut3_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut3_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut3_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut3_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut3_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut3_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut3_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut3_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut3_out7 = 0;
	endcase
end
always @(lut_addr3_8)
begin
	case(lut_addr3_8)
	6'd0 : lut3_out8 = (0);
	6'd1 : lut3_out8 = (coeff48);
	6'd2 : lut3_out8 = (coeff49);
	6'd3 : lut3_out8 = (coeff48+coeff49);
	6'd4 : lut3_out8 = (coeff50);
	6'd5 : lut3_out8 = (coeff48+coeff50);
	6'd6 : lut3_out8 = (coeff49+coeff50);
	6'd7 : lut3_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut3_out8 = (coeff51);
	6'd9 : lut3_out8 = (coeff48+coeff51);
	6'd10 : lut3_out8 = (coeff49+coeff51);
	6'd11 : lut3_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut3_out8 = (coeff50+coeff51);
	6'd13 : lut3_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut3_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut3_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut3_out8 = (coeff52);
	6'd17 : lut3_out8 = (coeff48+coeff52);
	6'd18 : lut3_out8 = (coeff49+coeff52);
	6'd19 : lut3_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut3_out8 = (coeff50+coeff52);
	6'd21 : lut3_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut3_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut3_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut3_out8 = (coeff51+coeff52);
	6'd25 : lut3_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut3_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut3_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut3_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut3_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut3_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut3_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut3_out8 = (coeff53);
	6'd33 : lut3_out8 = (coeff48+coeff53);
	6'd34 : lut3_out8 = (coeff49+coeff53);
	6'd35 : lut3_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut3_out8 = (coeff50+coeff53);
	6'd37 : lut3_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut3_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut3_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut3_out8 = (coeff51+coeff53);
	6'd41 : lut3_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut3_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut3_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut3_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut3_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut3_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut3_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut3_out8 = (coeff52+coeff53);
	6'd49 : lut3_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut3_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut3_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut3_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut3_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut3_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut3_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut3_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut3_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut3_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut3_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut3_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut3_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut3_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut3_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut3_out8 = 0;
	endcase
end
always @(lut_addr3_9)
begin
	case(lut_addr3_9)
	6'd0 : lut3_out9 = (0);
	6'd1 : lut3_out9 = (coeff54);
	6'd2 : lut3_out9 = (coeff55);
	6'd3 : lut3_out9 = (coeff54+coeff55);
	6'd4 : lut3_out9 = (coeff56);
	6'd5 : lut3_out9 = (coeff54+coeff56);
	6'd6 : lut3_out9 = (coeff55+coeff56);
	6'd7 : lut3_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut3_out9 = (coeff57);
	6'd9 : lut3_out9 = (coeff54+coeff57);
	6'd10 : lut3_out9 = (coeff55+coeff57);
	6'd11 : lut3_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut3_out9 = (coeff56+coeff57);
	6'd13 : lut3_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut3_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut3_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut3_out9 = (coeff58);
	6'd17 : lut3_out9 = (coeff54+coeff58);
	6'd18 : lut3_out9 = (coeff55+coeff58);
	6'd19 : lut3_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut3_out9 = (coeff56+coeff58);
	6'd21 : lut3_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut3_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut3_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut3_out9 = (coeff57+coeff58);
	6'd25 : lut3_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut3_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut3_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut3_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut3_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut3_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut3_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut3_out9 = (coeff59);
	6'd33 : lut3_out9 = (coeff54+coeff59);
	6'd34 : lut3_out9 = (coeff55+coeff59);
	6'd35 : lut3_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut3_out9 = (coeff56+coeff59);
	6'd37 : lut3_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut3_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut3_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut3_out9 = (coeff57+coeff59);
	6'd41 : lut3_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut3_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut3_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut3_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut3_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut3_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut3_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut3_out9 = (coeff58+coeff59);
	6'd49 : lut3_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut3_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut3_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut3_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut3_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut3_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut3_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut3_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut3_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut3_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut3_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut3_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut3_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut3_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut3_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut3_out9 = 0;
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
	6'd0 : lut4_out5 = (0);
	6'd1 : lut4_out5 = (coeff30);
	6'd2 : lut4_out5 = (coeff31);
	6'd3 : lut4_out5 = (coeff30+coeff31);
	6'd4 : lut4_out5 = (coeff32);
	6'd5 : lut4_out5 = (coeff30+coeff32);
	6'd6 : lut4_out5 = (coeff31+coeff32);
	6'd7 : lut4_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut4_out5 = (coeff33);
	6'd9 : lut4_out5 = (coeff30+coeff33);
	6'd10 : lut4_out5 = (coeff31+coeff33);
	6'd11 : lut4_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut4_out5 = (coeff32+coeff33);
	6'd13 : lut4_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut4_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut4_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut4_out5 = (coeff34);
	6'd17 : lut4_out5 = (coeff30+coeff34);
	6'd18 : lut4_out5 = (coeff31+coeff34);
	6'd19 : lut4_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut4_out5 = (coeff32+coeff34);
	6'd21 : lut4_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut4_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut4_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut4_out5 = (coeff33+coeff34);
	6'd25 : lut4_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut4_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut4_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut4_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut4_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut4_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut4_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut4_out5 = (coeff35);
	6'd33 : lut4_out5 = (coeff30+coeff35);
	6'd34 : lut4_out5 = (coeff31+coeff35);
	6'd35 : lut4_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut4_out5 = (coeff32+coeff35);
	6'd37 : lut4_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut4_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut4_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut4_out5 = (coeff33+coeff35);
	6'd41 : lut4_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut4_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut4_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut4_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut4_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut4_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut4_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut4_out5 = (coeff34+coeff35);
	6'd49 : lut4_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut4_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut4_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut4_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut4_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut4_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut4_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut4_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut4_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut4_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut4_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut4_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut4_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut4_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut4_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut4_out5 = 0;
	endcase
end
always @(lut_addr4_6)
begin
	case(lut_addr4_6)
	6'd0 : lut4_out6 = (0);
	6'd1 : lut4_out6 = (coeff36);
	6'd2 : lut4_out6 = (coeff37);
	6'd3 : lut4_out6 = (coeff36+coeff37);
	6'd4 : lut4_out6 = (coeff38);
	6'd5 : lut4_out6 = (coeff36+coeff38);
	6'd6 : lut4_out6 = (coeff37+coeff38);
	6'd7 : lut4_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut4_out6 = (coeff39);
	6'd9 : lut4_out6 = (coeff36+coeff39);
	6'd10 : lut4_out6 = (coeff37+coeff39);
	6'd11 : lut4_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut4_out6 = (coeff38+coeff39);
	6'd13 : lut4_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut4_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut4_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut4_out6 = (coeff40);
	6'd17 : lut4_out6 = (coeff36+coeff40);
	6'd18 : lut4_out6 = (coeff37+coeff40);
	6'd19 : lut4_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut4_out6 = (coeff38+coeff40);
	6'd21 : lut4_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut4_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut4_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut4_out6 = (coeff39+coeff40);
	6'd25 : lut4_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut4_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut4_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut4_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut4_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut4_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut4_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut4_out6 = (coeff41);
	6'd33 : lut4_out6 = (coeff36+coeff41);
	6'd34 : lut4_out6 = (coeff37+coeff41);
	6'd35 : lut4_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut4_out6 = (coeff38+coeff41);
	6'd37 : lut4_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut4_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut4_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut4_out6 = (coeff39+coeff41);
	6'd41 : lut4_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut4_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut4_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut4_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut4_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut4_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut4_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut4_out6 = (coeff40+coeff41);
	6'd49 : lut4_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut4_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut4_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut4_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut4_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut4_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut4_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut4_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut4_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut4_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut4_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut4_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut4_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut4_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut4_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut4_out6 = 0;
	endcase
end
always @(lut_addr4_7)
begin
	case(lut_addr4_7)
	6'd0 : lut4_out7 = (0);
	6'd1 : lut4_out7 = (coeff42);
	6'd2 : lut4_out7 = (coeff43);
	6'd3 : lut4_out7 = (coeff42+coeff43);
	6'd4 : lut4_out7 = (coeff44);
	6'd5 : lut4_out7 = (coeff42+coeff44);
	6'd6 : lut4_out7 = (coeff43+coeff44);
	6'd7 : lut4_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut4_out7 = (coeff45);
	6'd9 : lut4_out7 = (coeff42+coeff45);
	6'd10 : lut4_out7 = (coeff43+coeff45);
	6'd11 : lut4_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut4_out7 = (coeff44+coeff45);
	6'd13 : lut4_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut4_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut4_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut4_out7 = (coeff46);
	6'd17 : lut4_out7 = (coeff42+coeff46);
	6'd18 : lut4_out7 = (coeff43+coeff46);
	6'd19 : lut4_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut4_out7 = (coeff44+coeff46);
	6'd21 : lut4_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut4_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut4_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut4_out7 = (coeff45+coeff46);
	6'd25 : lut4_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut4_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut4_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut4_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut4_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut4_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut4_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut4_out7 = (coeff47);
	6'd33 : lut4_out7 = (coeff42+coeff47);
	6'd34 : lut4_out7 = (coeff43+coeff47);
	6'd35 : lut4_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut4_out7 = (coeff44+coeff47);
	6'd37 : lut4_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut4_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut4_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut4_out7 = (coeff45+coeff47);
	6'd41 : lut4_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut4_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut4_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut4_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut4_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut4_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut4_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut4_out7 = (coeff46+coeff47);
	6'd49 : lut4_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut4_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut4_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut4_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut4_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut4_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut4_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut4_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut4_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut4_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut4_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut4_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut4_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut4_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut4_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut4_out7 = 0;
	endcase
end
always @(lut_addr4_8)
begin
	case(lut_addr4_8)
	6'd0 : lut4_out8 = (0);
	6'd1 : lut4_out8 = (coeff48);
	6'd2 : lut4_out8 = (coeff49);
	6'd3 : lut4_out8 = (coeff48+coeff49);
	6'd4 : lut4_out8 = (coeff50);
	6'd5 : lut4_out8 = (coeff48+coeff50);
	6'd6 : lut4_out8 = (coeff49+coeff50);
	6'd7 : lut4_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut4_out8 = (coeff51);
	6'd9 : lut4_out8 = (coeff48+coeff51);
	6'd10 : lut4_out8 = (coeff49+coeff51);
	6'd11 : lut4_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut4_out8 = (coeff50+coeff51);
	6'd13 : lut4_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut4_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut4_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut4_out8 = (coeff52);
	6'd17 : lut4_out8 = (coeff48+coeff52);
	6'd18 : lut4_out8 = (coeff49+coeff52);
	6'd19 : lut4_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut4_out8 = (coeff50+coeff52);
	6'd21 : lut4_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut4_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut4_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut4_out8 = (coeff51+coeff52);
	6'd25 : lut4_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut4_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut4_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut4_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut4_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut4_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut4_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut4_out8 = (coeff53);
	6'd33 : lut4_out8 = (coeff48+coeff53);
	6'd34 : lut4_out8 = (coeff49+coeff53);
	6'd35 : lut4_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut4_out8 = (coeff50+coeff53);
	6'd37 : lut4_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut4_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut4_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut4_out8 = (coeff51+coeff53);
	6'd41 : lut4_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut4_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut4_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut4_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut4_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut4_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut4_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut4_out8 = (coeff52+coeff53);
	6'd49 : lut4_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut4_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut4_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut4_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut4_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut4_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut4_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut4_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut4_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut4_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut4_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut4_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut4_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut4_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut4_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut4_out8 = 0;
	endcase
end
always @(lut_addr4_9)
begin
	case(lut_addr4_9)
	6'd0 : lut4_out9 = (0);
	6'd1 : lut4_out9 = (coeff54);
	6'd2 : lut4_out9 = (coeff55);
	6'd3 : lut4_out9 = (coeff54+coeff55);
	6'd4 : lut4_out9 = (coeff56);
	6'd5 : lut4_out9 = (coeff54+coeff56);
	6'd6 : lut4_out9 = (coeff55+coeff56);
	6'd7 : lut4_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut4_out9 = (coeff57);
	6'd9 : lut4_out9 = (coeff54+coeff57);
	6'd10 : lut4_out9 = (coeff55+coeff57);
	6'd11 : lut4_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut4_out9 = (coeff56+coeff57);
	6'd13 : lut4_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut4_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut4_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut4_out9 = (coeff58);
	6'd17 : lut4_out9 = (coeff54+coeff58);
	6'd18 : lut4_out9 = (coeff55+coeff58);
	6'd19 : lut4_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut4_out9 = (coeff56+coeff58);
	6'd21 : lut4_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut4_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut4_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut4_out9 = (coeff57+coeff58);
	6'd25 : lut4_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut4_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut4_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut4_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut4_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut4_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut4_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut4_out9 = (coeff59);
	6'd33 : lut4_out9 = (coeff54+coeff59);
	6'd34 : lut4_out9 = (coeff55+coeff59);
	6'd35 : lut4_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut4_out9 = (coeff56+coeff59);
	6'd37 : lut4_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut4_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut4_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut4_out9 = (coeff57+coeff59);
	6'd41 : lut4_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut4_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut4_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut4_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut4_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut4_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut4_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut4_out9 = (coeff58+coeff59);
	6'd49 : lut4_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut4_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut4_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut4_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut4_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut4_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut4_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut4_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut4_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut4_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut4_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut4_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut4_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut4_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut4_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut4_out9 = 0;
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
	6'd0 : lut5_out5 = (0);
	6'd1 : lut5_out5 = (coeff30);
	6'd2 : lut5_out5 = (coeff31);
	6'd3 : lut5_out5 = (coeff30+coeff31);
	6'd4 : lut5_out5 = (coeff32);
	6'd5 : lut5_out5 = (coeff30+coeff32);
	6'd6 : lut5_out5 = (coeff31+coeff32);
	6'd7 : lut5_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut5_out5 = (coeff33);
	6'd9 : lut5_out5 = (coeff30+coeff33);
	6'd10 : lut5_out5 = (coeff31+coeff33);
	6'd11 : lut5_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut5_out5 = (coeff32+coeff33);
	6'd13 : lut5_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut5_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut5_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut5_out5 = (coeff34);
	6'd17 : lut5_out5 = (coeff30+coeff34);
	6'd18 : lut5_out5 = (coeff31+coeff34);
	6'd19 : lut5_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut5_out5 = (coeff32+coeff34);
	6'd21 : lut5_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut5_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut5_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut5_out5 = (coeff33+coeff34);
	6'd25 : lut5_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut5_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut5_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut5_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut5_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut5_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut5_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut5_out5 = (coeff35);
	6'd33 : lut5_out5 = (coeff30+coeff35);
	6'd34 : lut5_out5 = (coeff31+coeff35);
	6'd35 : lut5_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut5_out5 = (coeff32+coeff35);
	6'd37 : lut5_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut5_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut5_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut5_out5 = (coeff33+coeff35);
	6'd41 : lut5_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut5_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut5_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut5_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut5_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut5_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut5_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut5_out5 = (coeff34+coeff35);
	6'd49 : lut5_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut5_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut5_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut5_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut5_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut5_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut5_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut5_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut5_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut5_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut5_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut5_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut5_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut5_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut5_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut5_out5 = 0;
	endcase
end
always @(lut_addr5_6)
begin
	case(lut_addr5_6)
	6'd0 : lut5_out6 = (0);
	6'd1 : lut5_out6 = (coeff36);
	6'd2 : lut5_out6 = (coeff37);
	6'd3 : lut5_out6 = (coeff36+coeff37);
	6'd4 : lut5_out6 = (coeff38);
	6'd5 : lut5_out6 = (coeff36+coeff38);
	6'd6 : lut5_out6 = (coeff37+coeff38);
	6'd7 : lut5_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut5_out6 = (coeff39);
	6'd9 : lut5_out6 = (coeff36+coeff39);
	6'd10 : lut5_out6 = (coeff37+coeff39);
	6'd11 : lut5_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut5_out6 = (coeff38+coeff39);
	6'd13 : lut5_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut5_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut5_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut5_out6 = (coeff40);
	6'd17 : lut5_out6 = (coeff36+coeff40);
	6'd18 : lut5_out6 = (coeff37+coeff40);
	6'd19 : lut5_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut5_out6 = (coeff38+coeff40);
	6'd21 : lut5_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut5_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut5_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut5_out6 = (coeff39+coeff40);
	6'd25 : lut5_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut5_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut5_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut5_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut5_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut5_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut5_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut5_out6 = (coeff41);
	6'd33 : lut5_out6 = (coeff36+coeff41);
	6'd34 : lut5_out6 = (coeff37+coeff41);
	6'd35 : lut5_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut5_out6 = (coeff38+coeff41);
	6'd37 : lut5_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut5_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut5_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut5_out6 = (coeff39+coeff41);
	6'd41 : lut5_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut5_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut5_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut5_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut5_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut5_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut5_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut5_out6 = (coeff40+coeff41);
	6'd49 : lut5_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut5_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut5_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut5_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut5_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut5_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut5_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut5_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut5_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut5_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut5_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut5_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut5_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut5_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut5_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut5_out6 = 0;
	endcase
end
always @(lut_addr5_7)
begin
	case(lut_addr5_7)
	6'd0 : lut5_out7 = (0);
	6'd1 : lut5_out7 = (coeff42);
	6'd2 : lut5_out7 = (coeff43);
	6'd3 : lut5_out7 = (coeff42+coeff43);
	6'd4 : lut5_out7 = (coeff44);
	6'd5 : lut5_out7 = (coeff42+coeff44);
	6'd6 : lut5_out7 = (coeff43+coeff44);
	6'd7 : lut5_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut5_out7 = (coeff45);
	6'd9 : lut5_out7 = (coeff42+coeff45);
	6'd10 : lut5_out7 = (coeff43+coeff45);
	6'd11 : lut5_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut5_out7 = (coeff44+coeff45);
	6'd13 : lut5_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut5_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut5_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut5_out7 = (coeff46);
	6'd17 : lut5_out7 = (coeff42+coeff46);
	6'd18 : lut5_out7 = (coeff43+coeff46);
	6'd19 : lut5_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut5_out7 = (coeff44+coeff46);
	6'd21 : lut5_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut5_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut5_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut5_out7 = (coeff45+coeff46);
	6'd25 : lut5_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut5_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut5_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut5_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut5_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut5_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut5_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut5_out7 = (coeff47);
	6'd33 : lut5_out7 = (coeff42+coeff47);
	6'd34 : lut5_out7 = (coeff43+coeff47);
	6'd35 : lut5_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut5_out7 = (coeff44+coeff47);
	6'd37 : lut5_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut5_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut5_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut5_out7 = (coeff45+coeff47);
	6'd41 : lut5_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut5_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut5_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut5_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut5_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut5_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut5_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut5_out7 = (coeff46+coeff47);
	6'd49 : lut5_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut5_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut5_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut5_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut5_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut5_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut5_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut5_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut5_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut5_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut5_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut5_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut5_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut5_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut5_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut5_out7 = 0;
	endcase
end
always @(lut_addr5_8)
begin
	case(lut_addr5_8)
	6'd0 : lut5_out8 = (0);
	6'd1 : lut5_out8 = (coeff48);
	6'd2 : lut5_out8 = (coeff49);
	6'd3 : lut5_out8 = (coeff48+coeff49);
	6'd4 : lut5_out8 = (coeff50);
	6'd5 : lut5_out8 = (coeff48+coeff50);
	6'd6 : lut5_out8 = (coeff49+coeff50);
	6'd7 : lut5_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut5_out8 = (coeff51);
	6'd9 : lut5_out8 = (coeff48+coeff51);
	6'd10 : lut5_out8 = (coeff49+coeff51);
	6'd11 : lut5_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut5_out8 = (coeff50+coeff51);
	6'd13 : lut5_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut5_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut5_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut5_out8 = (coeff52);
	6'd17 : lut5_out8 = (coeff48+coeff52);
	6'd18 : lut5_out8 = (coeff49+coeff52);
	6'd19 : lut5_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut5_out8 = (coeff50+coeff52);
	6'd21 : lut5_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut5_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut5_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut5_out8 = (coeff51+coeff52);
	6'd25 : lut5_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut5_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut5_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut5_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut5_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut5_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut5_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut5_out8 = (coeff53);
	6'd33 : lut5_out8 = (coeff48+coeff53);
	6'd34 : lut5_out8 = (coeff49+coeff53);
	6'd35 : lut5_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut5_out8 = (coeff50+coeff53);
	6'd37 : lut5_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut5_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut5_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut5_out8 = (coeff51+coeff53);
	6'd41 : lut5_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut5_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut5_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut5_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut5_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut5_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut5_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut5_out8 = (coeff52+coeff53);
	6'd49 : lut5_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut5_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut5_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut5_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut5_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut5_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut5_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut5_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut5_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut5_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut5_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut5_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut5_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut5_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut5_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut5_out8 = 0;
	endcase
end
always @(lut_addr5_9)
begin
	case(lut_addr5_9)
	6'd0 : lut5_out9 = (0);
	6'd1 : lut5_out9 = (coeff54);
	6'd2 : lut5_out9 = (coeff55);
	6'd3 : lut5_out9 = (coeff54+coeff55);
	6'd4 : lut5_out9 = (coeff56);
	6'd5 : lut5_out9 = (coeff54+coeff56);
	6'd6 : lut5_out9 = (coeff55+coeff56);
	6'd7 : lut5_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut5_out9 = (coeff57);
	6'd9 : lut5_out9 = (coeff54+coeff57);
	6'd10 : lut5_out9 = (coeff55+coeff57);
	6'd11 : lut5_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut5_out9 = (coeff56+coeff57);
	6'd13 : lut5_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut5_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut5_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut5_out9 = (coeff58);
	6'd17 : lut5_out9 = (coeff54+coeff58);
	6'd18 : lut5_out9 = (coeff55+coeff58);
	6'd19 : lut5_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut5_out9 = (coeff56+coeff58);
	6'd21 : lut5_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut5_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut5_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut5_out9 = (coeff57+coeff58);
	6'd25 : lut5_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut5_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut5_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut5_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut5_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut5_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut5_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut5_out9 = (coeff59);
	6'd33 : lut5_out9 = (coeff54+coeff59);
	6'd34 : lut5_out9 = (coeff55+coeff59);
	6'd35 : lut5_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut5_out9 = (coeff56+coeff59);
	6'd37 : lut5_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut5_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut5_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut5_out9 = (coeff57+coeff59);
	6'd41 : lut5_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut5_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut5_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut5_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut5_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut5_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut5_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut5_out9 = (coeff58+coeff59);
	6'd49 : lut5_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut5_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut5_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut5_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut5_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut5_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut5_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut5_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut5_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut5_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut5_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut5_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut5_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut5_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut5_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut5_out9 = 0;
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
	6'd0 : lut6_out5 = (0);
	6'd1 : lut6_out5 = (coeff30);
	6'd2 : lut6_out5 = (coeff31);
	6'd3 : lut6_out5 = (coeff30+coeff31);
	6'd4 : lut6_out5 = (coeff32);
	6'd5 : lut6_out5 = (coeff30+coeff32);
	6'd6 : lut6_out5 = (coeff31+coeff32);
	6'd7 : lut6_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut6_out5 = (coeff33);
	6'd9 : lut6_out5 = (coeff30+coeff33);
	6'd10 : lut6_out5 = (coeff31+coeff33);
	6'd11 : lut6_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut6_out5 = (coeff32+coeff33);
	6'd13 : lut6_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut6_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut6_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut6_out5 = (coeff34);
	6'd17 : lut6_out5 = (coeff30+coeff34);
	6'd18 : lut6_out5 = (coeff31+coeff34);
	6'd19 : lut6_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut6_out5 = (coeff32+coeff34);
	6'd21 : lut6_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut6_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut6_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut6_out5 = (coeff33+coeff34);
	6'd25 : lut6_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut6_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut6_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut6_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut6_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut6_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut6_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut6_out5 = (coeff35);
	6'd33 : lut6_out5 = (coeff30+coeff35);
	6'd34 : lut6_out5 = (coeff31+coeff35);
	6'd35 : lut6_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut6_out5 = (coeff32+coeff35);
	6'd37 : lut6_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut6_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut6_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut6_out5 = (coeff33+coeff35);
	6'd41 : lut6_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut6_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut6_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut6_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut6_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut6_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut6_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut6_out5 = (coeff34+coeff35);
	6'd49 : lut6_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut6_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut6_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut6_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut6_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut6_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut6_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut6_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut6_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut6_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut6_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut6_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut6_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut6_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut6_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut6_out5 = 0;
	endcase
end
always @(lut_addr6_6)
begin
	case(lut_addr6_6)
	6'd0 : lut6_out6 = (0);
	6'd1 : lut6_out6 = (coeff36);
	6'd2 : lut6_out6 = (coeff37);
	6'd3 : lut6_out6 = (coeff36+coeff37);
	6'd4 : lut6_out6 = (coeff38);
	6'd5 : lut6_out6 = (coeff36+coeff38);
	6'd6 : lut6_out6 = (coeff37+coeff38);
	6'd7 : lut6_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut6_out6 = (coeff39);
	6'd9 : lut6_out6 = (coeff36+coeff39);
	6'd10 : lut6_out6 = (coeff37+coeff39);
	6'd11 : lut6_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut6_out6 = (coeff38+coeff39);
	6'd13 : lut6_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut6_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut6_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut6_out6 = (coeff40);
	6'd17 : lut6_out6 = (coeff36+coeff40);
	6'd18 : lut6_out6 = (coeff37+coeff40);
	6'd19 : lut6_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut6_out6 = (coeff38+coeff40);
	6'd21 : lut6_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut6_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut6_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut6_out6 = (coeff39+coeff40);
	6'd25 : lut6_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut6_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut6_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut6_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut6_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut6_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut6_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut6_out6 = (coeff41);
	6'd33 : lut6_out6 = (coeff36+coeff41);
	6'd34 : lut6_out6 = (coeff37+coeff41);
	6'd35 : lut6_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut6_out6 = (coeff38+coeff41);
	6'd37 : lut6_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut6_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut6_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut6_out6 = (coeff39+coeff41);
	6'd41 : lut6_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut6_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut6_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut6_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut6_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut6_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut6_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut6_out6 = (coeff40+coeff41);
	6'd49 : lut6_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut6_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut6_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut6_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut6_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut6_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut6_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut6_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut6_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut6_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut6_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut6_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut6_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut6_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut6_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut6_out6 = 0;
	endcase
end
always @(lut_addr6_7)
begin
	case(lut_addr6_7)
	6'd0 : lut6_out7 = (0);
	6'd1 : lut6_out7 = (coeff42);
	6'd2 : lut6_out7 = (coeff43);
	6'd3 : lut6_out7 = (coeff42+coeff43);
	6'd4 : lut6_out7 = (coeff44);
	6'd5 : lut6_out7 = (coeff42+coeff44);
	6'd6 : lut6_out7 = (coeff43+coeff44);
	6'd7 : lut6_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut6_out7 = (coeff45);
	6'd9 : lut6_out7 = (coeff42+coeff45);
	6'd10 : lut6_out7 = (coeff43+coeff45);
	6'd11 : lut6_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut6_out7 = (coeff44+coeff45);
	6'd13 : lut6_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut6_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut6_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut6_out7 = (coeff46);
	6'd17 : lut6_out7 = (coeff42+coeff46);
	6'd18 : lut6_out7 = (coeff43+coeff46);
	6'd19 : lut6_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut6_out7 = (coeff44+coeff46);
	6'd21 : lut6_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut6_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut6_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut6_out7 = (coeff45+coeff46);
	6'd25 : lut6_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut6_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut6_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut6_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut6_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut6_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut6_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut6_out7 = (coeff47);
	6'd33 : lut6_out7 = (coeff42+coeff47);
	6'd34 : lut6_out7 = (coeff43+coeff47);
	6'd35 : lut6_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut6_out7 = (coeff44+coeff47);
	6'd37 : lut6_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut6_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut6_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut6_out7 = (coeff45+coeff47);
	6'd41 : lut6_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut6_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut6_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut6_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut6_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut6_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut6_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut6_out7 = (coeff46+coeff47);
	6'd49 : lut6_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut6_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut6_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut6_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut6_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut6_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut6_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut6_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut6_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut6_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut6_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut6_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut6_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut6_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut6_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut6_out7 = 0;
	endcase
end
always @(lut_addr6_8)
begin
	case(lut_addr6_8)
	6'd0 : lut6_out8 = (0);
	6'd1 : lut6_out8 = (coeff48);
	6'd2 : lut6_out8 = (coeff49);
	6'd3 : lut6_out8 = (coeff48+coeff49);
	6'd4 : lut6_out8 = (coeff50);
	6'd5 : lut6_out8 = (coeff48+coeff50);
	6'd6 : lut6_out8 = (coeff49+coeff50);
	6'd7 : lut6_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut6_out8 = (coeff51);
	6'd9 : lut6_out8 = (coeff48+coeff51);
	6'd10 : lut6_out8 = (coeff49+coeff51);
	6'd11 : lut6_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut6_out8 = (coeff50+coeff51);
	6'd13 : lut6_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut6_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut6_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut6_out8 = (coeff52);
	6'd17 : lut6_out8 = (coeff48+coeff52);
	6'd18 : lut6_out8 = (coeff49+coeff52);
	6'd19 : lut6_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut6_out8 = (coeff50+coeff52);
	6'd21 : lut6_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut6_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut6_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut6_out8 = (coeff51+coeff52);
	6'd25 : lut6_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut6_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut6_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut6_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut6_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut6_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut6_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut6_out8 = (coeff53);
	6'd33 : lut6_out8 = (coeff48+coeff53);
	6'd34 : lut6_out8 = (coeff49+coeff53);
	6'd35 : lut6_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut6_out8 = (coeff50+coeff53);
	6'd37 : lut6_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut6_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut6_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut6_out8 = (coeff51+coeff53);
	6'd41 : lut6_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut6_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut6_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut6_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut6_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut6_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut6_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut6_out8 = (coeff52+coeff53);
	6'd49 : lut6_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut6_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut6_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut6_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut6_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut6_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut6_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut6_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut6_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut6_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut6_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut6_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut6_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut6_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut6_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut6_out8 = 0;
	endcase
end
always @(lut_addr6_9)
begin
	case(lut_addr6_9)
	6'd0 : lut6_out9 = (0);
	6'd1 : lut6_out9 = (coeff54);
	6'd2 : lut6_out9 = (coeff55);
	6'd3 : lut6_out9 = (coeff54+coeff55);
	6'd4 : lut6_out9 = (coeff56);
	6'd5 : lut6_out9 = (coeff54+coeff56);
	6'd6 : lut6_out9 = (coeff55+coeff56);
	6'd7 : lut6_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut6_out9 = (coeff57);
	6'd9 : lut6_out9 = (coeff54+coeff57);
	6'd10 : lut6_out9 = (coeff55+coeff57);
	6'd11 : lut6_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut6_out9 = (coeff56+coeff57);
	6'd13 : lut6_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut6_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut6_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut6_out9 = (coeff58);
	6'd17 : lut6_out9 = (coeff54+coeff58);
	6'd18 : lut6_out9 = (coeff55+coeff58);
	6'd19 : lut6_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut6_out9 = (coeff56+coeff58);
	6'd21 : lut6_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut6_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut6_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut6_out9 = (coeff57+coeff58);
	6'd25 : lut6_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut6_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut6_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut6_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut6_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut6_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut6_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut6_out9 = (coeff59);
	6'd33 : lut6_out9 = (coeff54+coeff59);
	6'd34 : lut6_out9 = (coeff55+coeff59);
	6'd35 : lut6_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut6_out9 = (coeff56+coeff59);
	6'd37 : lut6_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut6_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut6_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut6_out9 = (coeff57+coeff59);
	6'd41 : lut6_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut6_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut6_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut6_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut6_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut6_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut6_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut6_out9 = (coeff58+coeff59);
	6'd49 : lut6_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut6_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut6_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut6_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut6_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut6_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut6_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut6_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut6_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut6_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut6_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut6_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut6_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut6_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut6_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut6_out9 = 0;
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
	6'd0 : lut7_out5 = (0);
	6'd1 : lut7_out5 = (coeff30);
	6'd2 : lut7_out5 = (coeff31);
	6'd3 : lut7_out5 = (coeff30+coeff31);
	6'd4 : lut7_out5 = (coeff32);
	6'd5 : lut7_out5 = (coeff30+coeff32);
	6'd6 : lut7_out5 = (coeff31+coeff32);
	6'd7 : lut7_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut7_out5 = (coeff33);
	6'd9 : lut7_out5 = (coeff30+coeff33);
	6'd10 : lut7_out5 = (coeff31+coeff33);
	6'd11 : lut7_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut7_out5 = (coeff32+coeff33);
	6'd13 : lut7_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut7_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut7_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut7_out5 = (coeff34);
	6'd17 : lut7_out5 = (coeff30+coeff34);
	6'd18 : lut7_out5 = (coeff31+coeff34);
	6'd19 : lut7_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut7_out5 = (coeff32+coeff34);
	6'd21 : lut7_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut7_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut7_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut7_out5 = (coeff33+coeff34);
	6'd25 : lut7_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut7_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut7_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut7_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut7_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut7_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut7_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut7_out5 = (coeff35);
	6'd33 : lut7_out5 = (coeff30+coeff35);
	6'd34 : lut7_out5 = (coeff31+coeff35);
	6'd35 : lut7_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut7_out5 = (coeff32+coeff35);
	6'd37 : lut7_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut7_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut7_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut7_out5 = (coeff33+coeff35);
	6'd41 : lut7_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut7_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut7_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut7_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut7_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut7_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut7_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut7_out5 = (coeff34+coeff35);
	6'd49 : lut7_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut7_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut7_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut7_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut7_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut7_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut7_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut7_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut7_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut7_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut7_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut7_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut7_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut7_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut7_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut7_out5 = 0;
	endcase
end
always @(lut_addr7_6)
begin
	case(lut_addr7_6)
	6'd0 : lut7_out6 = (0);
	6'd1 : lut7_out6 = (coeff36);
	6'd2 : lut7_out6 = (coeff37);
	6'd3 : lut7_out6 = (coeff36+coeff37);
	6'd4 : lut7_out6 = (coeff38);
	6'd5 : lut7_out6 = (coeff36+coeff38);
	6'd6 : lut7_out6 = (coeff37+coeff38);
	6'd7 : lut7_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut7_out6 = (coeff39);
	6'd9 : lut7_out6 = (coeff36+coeff39);
	6'd10 : lut7_out6 = (coeff37+coeff39);
	6'd11 : lut7_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut7_out6 = (coeff38+coeff39);
	6'd13 : lut7_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut7_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut7_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut7_out6 = (coeff40);
	6'd17 : lut7_out6 = (coeff36+coeff40);
	6'd18 : lut7_out6 = (coeff37+coeff40);
	6'd19 : lut7_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut7_out6 = (coeff38+coeff40);
	6'd21 : lut7_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut7_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut7_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut7_out6 = (coeff39+coeff40);
	6'd25 : lut7_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut7_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut7_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut7_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut7_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut7_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut7_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut7_out6 = (coeff41);
	6'd33 : lut7_out6 = (coeff36+coeff41);
	6'd34 : lut7_out6 = (coeff37+coeff41);
	6'd35 : lut7_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut7_out6 = (coeff38+coeff41);
	6'd37 : lut7_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut7_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut7_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut7_out6 = (coeff39+coeff41);
	6'd41 : lut7_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut7_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut7_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut7_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut7_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut7_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut7_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut7_out6 = (coeff40+coeff41);
	6'd49 : lut7_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut7_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut7_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut7_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut7_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut7_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut7_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut7_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut7_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut7_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut7_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut7_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut7_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut7_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut7_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut7_out6 = 0;
	endcase
end
always @(lut_addr7_7)
begin
	case(lut_addr7_7)
	6'd0 : lut7_out7 = (0);
	6'd1 : lut7_out7 = (coeff42);
	6'd2 : lut7_out7 = (coeff43);
	6'd3 : lut7_out7 = (coeff42+coeff43);
	6'd4 : lut7_out7 = (coeff44);
	6'd5 : lut7_out7 = (coeff42+coeff44);
	6'd6 : lut7_out7 = (coeff43+coeff44);
	6'd7 : lut7_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut7_out7 = (coeff45);
	6'd9 : lut7_out7 = (coeff42+coeff45);
	6'd10 : lut7_out7 = (coeff43+coeff45);
	6'd11 : lut7_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut7_out7 = (coeff44+coeff45);
	6'd13 : lut7_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut7_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut7_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut7_out7 = (coeff46);
	6'd17 : lut7_out7 = (coeff42+coeff46);
	6'd18 : lut7_out7 = (coeff43+coeff46);
	6'd19 : lut7_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut7_out7 = (coeff44+coeff46);
	6'd21 : lut7_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut7_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut7_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut7_out7 = (coeff45+coeff46);
	6'd25 : lut7_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut7_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut7_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut7_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut7_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut7_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut7_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut7_out7 = (coeff47);
	6'd33 : lut7_out7 = (coeff42+coeff47);
	6'd34 : lut7_out7 = (coeff43+coeff47);
	6'd35 : lut7_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut7_out7 = (coeff44+coeff47);
	6'd37 : lut7_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut7_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut7_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut7_out7 = (coeff45+coeff47);
	6'd41 : lut7_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut7_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut7_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut7_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut7_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut7_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut7_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut7_out7 = (coeff46+coeff47);
	6'd49 : lut7_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut7_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut7_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut7_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut7_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut7_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut7_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut7_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut7_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut7_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut7_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut7_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut7_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut7_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut7_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut7_out7 = 0;
	endcase
end
always @(lut_addr7_8)
begin
	case(lut_addr7_8)
	6'd0 : lut7_out8 = (0);
	6'd1 : lut7_out8 = (coeff48);
	6'd2 : lut7_out8 = (coeff49);
	6'd3 : lut7_out8 = (coeff48+coeff49);
	6'd4 : lut7_out8 = (coeff50);
	6'd5 : lut7_out8 = (coeff48+coeff50);
	6'd6 : lut7_out8 = (coeff49+coeff50);
	6'd7 : lut7_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut7_out8 = (coeff51);
	6'd9 : lut7_out8 = (coeff48+coeff51);
	6'd10 : lut7_out8 = (coeff49+coeff51);
	6'd11 : lut7_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut7_out8 = (coeff50+coeff51);
	6'd13 : lut7_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut7_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut7_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut7_out8 = (coeff52);
	6'd17 : lut7_out8 = (coeff48+coeff52);
	6'd18 : lut7_out8 = (coeff49+coeff52);
	6'd19 : lut7_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut7_out8 = (coeff50+coeff52);
	6'd21 : lut7_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut7_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut7_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut7_out8 = (coeff51+coeff52);
	6'd25 : lut7_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut7_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut7_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut7_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut7_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut7_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut7_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut7_out8 = (coeff53);
	6'd33 : lut7_out8 = (coeff48+coeff53);
	6'd34 : lut7_out8 = (coeff49+coeff53);
	6'd35 : lut7_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut7_out8 = (coeff50+coeff53);
	6'd37 : lut7_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut7_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut7_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut7_out8 = (coeff51+coeff53);
	6'd41 : lut7_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut7_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut7_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut7_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut7_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut7_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut7_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut7_out8 = (coeff52+coeff53);
	6'd49 : lut7_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut7_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut7_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut7_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut7_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut7_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut7_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut7_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut7_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut7_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut7_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut7_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut7_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut7_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut7_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut7_out8 = 0;
	endcase
end
always @(lut_addr7_9)
begin
	case(lut_addr7_9)
	6'd0 : lut7_out9 = (0);
	6'd1 : lut7_out9 = (coeff54);
	6'd2 : lut7_out9 = (coeff55);
	6'd3 : lut7_out9 = (coeff54+coeff55);
	6'd4 : lut7_out9 = (coeff56);
	6'd5 : lut7_out9 = (coeff54+coeff56);
	6'd6 : lut7_out9 = (coeff55+coeff56);
	6'd7 : lut7_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut7_out9 = (coeff57);
	6'd9 : lut7_out9 = (coeff54+coeff57);
	6'd10 : lut7_out9 = (coeff55+coeff57);
	6'd11 : lut7_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut7_out9 = (coeff56+coeff57);
	6'd13 : lut7_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut7_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut7_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut7_out9 = (coeff58);
	6'd17 : lut7_out9 = (coeff54+coeff58);
	6'd18 : lut7_out9 = (coeff55+coeff58);
	6'd19 : lut7_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut7_out9 = (coeff56+coeff58);
	6'd21 : lut7_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut7_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut7_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut7_out9 = (coeff57+coeff58);
	6'd25 : lut7_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut7_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut7_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut7_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut7_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut7_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut7_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut7_out9 = (coeff59);
	6'd33 : lut7_out9 = (coeff54+coeff59);
	6'd34 : lut7_out9 = (coeff55+coeff59);
	6'd35 : lut7_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut7_out9 = (coeff56+coeff59);
	6'd37 : lut7_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut7_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut7_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut7_out9 = (coeff57+coeff59);
	6'd41 : lut7_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut7_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut7_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut7_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut7_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut7_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut7_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut7_out9 = (coeff58+coeff59);
	6'd49 : lut7_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut7_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut7_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut7_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut7_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut7_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut7_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut7_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut7_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut7_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut7_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut7_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut7_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut7_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut7_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut7_out9 = 0;
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
	6'd0 : lut8_out5 = (0);
	6'd1 : lut8_out5 = (coeff30);
	6'd2 : lut8_out5 = (coeff31);
	6'd3 : lut8_out5 = (coeff30+coeff31);
	6'd4 : lut8_out5 = (coeff32);
	6'd5 : lut8_out5 = (coeff30+coeff32);
	6'd6 : lut8_out5 = (coeff31+coeff32);
	6'd7 : lut8_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut8_out5 = (coeff33);
	6'd9 : lut8_out5 = (coeff30+coeff33);
	6'd10 : lut8_out5 = (coeff31+coeff33);
	6'd11 : lut8_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut8_out5 = (coeff32+coeff33);
	6'd13 : lut8_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut8_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut8_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut8_out5 = (coeff34);
	6'd17 : lut8_out5 = (coeff30+coeff34);
	6'd18 : lut8_out5 = (coeff31+coeff34);
	6'd19 : lut8_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut8_out5 = (coeff32+coeff34);
	6'd21 : lut8_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut8_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut8_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut8_out5 = (coeff33+coeff34);
	6'd25 : lut8_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut8_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut8_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut8_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut8_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut8_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut8_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut8_out5 = (coeff35);
	6'd33 : lut8_out5 = (coeff30+coeff35);
	6'd34 : lut8_out5 = (coeff31+coeff35);
	6'd35 : lut8_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut8_out5 = (coeff32+coeff35);
	6'd37 : lut8_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut8_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut8_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut8_out5 = (coeff33+coeff35);
	6'd41 : lut8_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut8_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut8_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut8_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut8_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut8_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut8_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut8_out5 = (coeff34+coeff35);
	6'd49 : lut8_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut8_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut8_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut8_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut8_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut8_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut8_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut8_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut8_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut8_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut8_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut8_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut8_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut8_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut8_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut8_out5 = 0;
	endcase
end
always @(lut_addr8_6)
begin
	case(lut_addr8_6)
	6'd0 : lut8_out6 = (0);
	6'd1 : lut8_out6 = (coeff36);
	6'd2 : lut8_out6 = (coeff37);
	6'd3 : lut8_out6 = (coeff36+coeff37);
	6'd4 : lut8_out6 = (coeff38);
	6'd5 : lut8_out6 = (coeff36+coeff38);
	6'd6 : lut8_out6 = (coeff37+coeff38);
	6'd7 : lut8_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut8_out6 = (coeff39);
	6'd9 : lut8_out6 = (coeff36+coeff39);
	6'd10 : lut8_out6 = (coeff37+coeff39);
	6'd11 : lut8_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut8_out6 = (coeff38+coeff39);
	6'd13 : lut8_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut8_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut8_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut8_out6 = (coeff40);
	6'd17 : lut8_out6 = (coeff36+coeff40);
	6'd18 : lut8_out6 = (coeff37+coeff40);
	6'd19 : lut8_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut8_out6 = (coeff38+coeff40);
	6'd21 : lut8_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut8_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut8_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut8_out6 = (coeff39+coeff40);
	6'd25 : lut8_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut8_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut8_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut8_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut8_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut8_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut8_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut8_out6 = (coeff41);
	6'd33 : lut8_out6 = (coeff36+coeff41);
	6'd34 : lut8_out6 = (coeff37+coeff41);
	6'd35 : lut8_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut8_out6 = (coeff38+coeff41);
	6'd37 : lut8_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut8_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut8_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut8_out6 = (coeff39+coeff41);
	6'd41 : lut8_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut8_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut8_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut8_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut8_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut8_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut8_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut8_out6 = (coeff40+coeff41);
	6'd49 : lut8_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut8_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut8_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut8_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut8_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut8_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut8_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut8_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut8_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut8_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut8_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut8_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut8_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut8_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut8_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut8_out6 = 0;
	endcase
end
always @(lut_addr8_7)
begin
	case(lut_addr8_7)
	6'd0 : lut8_out7 = (0);
	6'd1 : lut8_out7 = (coeff42);
	6'd2 : lut8_out7 = (coeff43);
	6'd3 : lut8_out7 = (coeff42+coeff43);
	6'd4 : lut8_out7 = (coeff44);
	6'd5 : lut8_out7 = (coeff42+coeff44);
	6'd6 : lut8_out7 = (coeff43+coeff44);
	6'd7 : lut8_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut8_out7 = (coeff45);
	6'd9 : lut8_out7 = (coeff42+coeff45);
	6'd10 : lut8_out7 = (coeff43+coeff45);
	6'd11 : lut8_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut8_out7 = (coeff44+coeff45);
	6'd13 : lut8_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut8_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut8_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut8_out7 = (coeff46);
	6'd17 : lut8_out7 = (coeff42+coeff46);
	6'd18 : lut8_out7 = (coeff43+coeff46);
	6'd19 : lut8_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut8_out7 = (coeff44+coeff46);
	6'd21 : lut8_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut8_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut8_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut8_out7 = (coeff45+coeff46);
	6'd25 : lut8_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut8_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut8_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut8_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut8_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut8_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut8_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut8_out7 = (coeff47);
	6'd33 : lut8_out7 = (coeff42+coeff47);
	6'd34 : lut8_out7 = (coeff43+coeff47);
	6'd35 : lut8_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut8_out7 = (coeff44+coeff47);
	6'd37 : lut8_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut8_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut8_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut8_out7 = (coeff45+coeff47);
	6'd41 : lut8_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut8_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut8_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut8_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut8_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut8_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut8_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut8_out7 = (coeff46+coeff47);
	6'd49 : lut8_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut8_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut8_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut8_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut8_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut8_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut8_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut8_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut8_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut8_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut8_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut8_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut8_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut8_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut8_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut8_out7 = 0;
	endcase
end
always @(lut_addr8_8)
begin
	case(lut_addr8_8)
	6'd0 : lut8_out8 = (0);
	6'd1 : lut8_out8 = (coeff48);
	6'd2 : lut8_out8 = (coeff49);
	6'd3 : lut8_out8 = (coeff48+coeff49);
	6'd4 : lut8_out8 = (coeff50);
	6'd5 : lut8_out8 = (coeff48+coeff50);
	6'd6 : lut8_out8 = (coeff49+coeff50);
	6'd7 : lut8_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut8_out8 = (coeff51);
	6'd9 : lut8_out8 = (coeff48+coeff51);
	6'd10 : lut8_out8 = (coeff49+coeff51);
	6'd11 : lut8_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut8_out8 = (coeff50+coeff51);
	6'd13 : lut8_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut8_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut8_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut8_out8 = (coeff52);
	6'd17 : lut8_out8 = (coeff48+coeff52);
	6'd18 : lut8_out8 = (coeff49+coeff52);
	6'd19 : lut8_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut8_out8 = (coeff50+coeff52);
	6'd21 : lut8_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut8_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut8_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut8_out8 = (coeff51+coeff52);
	6'd25 : lut8_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut8_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut8_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut8_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut8_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut8_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut8_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut8_out8 = (coeff53);
	6'd33 : lut8_out8 = (coeff48+coeff53);
	6'd34 : lut8_out8 = (coeff49+coeff53);
	6'd35 : lut8_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut8_out8 = (coeff50+coeff53);
	6'd37 : lut8_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut8_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut8_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut8_out8 = (coeff51+coeff53);
	6'd41 : lut8_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut8_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut8_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut8_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut8_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut8_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut8_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut8_out8 = (coeff52+coeff53);
	6'd49 : lut8_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut8_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut8_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut8_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut8_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut8_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut8_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut8_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut8_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut8_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut8_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut8_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut8_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut8_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut8_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut8_out8 = 0;
	endcase
end
always @(lut_addr8_9)
begin
	case(lut_addr8_9)
	6'd0 : lut8_out9 = (0);
	6'd1 : lut8_out9 = (coeff54);
	6'd2 : lut8_out9 = (coeff55);
	6'd3 : lut8_out9 = (coeff54+coeff55);
	6'd4 : lut8_out9 = (coeff56);
	6'd5 : lut8_out9 = (coeff54+coeff56);
	6'd6 : lut8_out9 = (coeff55+coeff56);
	6'd7 : lut8_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut8_out9 = (coeff57);
	6'd9 : lut8_out9 = (coeff54+coeff57);
	6'd10 : lut8_out9 = (coeff55+coeff57);
	6'd11 : lut8_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut8_out9 = (coeff56+coeff57);
	6'd13 : lut8_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut8_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut8_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut8_out9 = (coeff58);
	6'd17 : lut8_out9 = (coeff54+coeff58);
	6'd18 : lut8_out9 = (coeff55+coeff58);
	6'd19 : lut8_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut8_out9 = (coeff56+coeff58);
	6'd21 : lut8_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut8_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut8_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut8_out9 = (coeff57+coeff58);
	6'd25 : lut8_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut8_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut8_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut8_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut8_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut8_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut8_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut8_out9 = (coeff59);
	6'd33 : lut8_out9 = (coeff54+coeff59);
	6'd34 : lut8_out9 = (coeff55+coeff59);
	6'd35 : lut8_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut8_out9 = (coeff56+coeff59);
	6'd37 : lut8_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut8_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut8_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut8_out9 = (coeff57+coeff59);
	6'd41 : lut8_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut8_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut8_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut8_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut8_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut8_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut8_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut8_out9 = (coeff58+coeff59);
	6'd49 : lut8_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut8_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut8_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut8_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut8_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut8_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut8_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut8_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut8_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut8_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut8_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut8_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut8_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut8_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut8_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut8_out9 = 0;
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
	6'd0 : lut9_out5 = (0);
	6'd1 : lut9_out5 = (coeff30);
	6'd2 : lut9_out5 = (coeff31);
	6'd3 : lut9_out5 = (coeff30+coeff31);
	6'd4 : lut9_out5 = (coeff32);
	6'd5 : lut9_out5 = (coeff30+coeff32);
	6'd6 : lut9_out5 = (coeff31+coeff32);
	6'd7 : lut9_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut9_out5 = (coeff33);
	6'd9 : lut9_out5 = (coeff30+coeff33);
	6'd10 : lut9_out5 = (coeff31+coeff33);
	6'd11 : lut9_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut9_out5 = (coeff32+coeff33);
	6'd13 : lut9_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut9_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut9_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut9_out5 = (coeff34);
	6'd17 : lut9_out5 = (coeff30+coeff34);
	6'd18 : lut9_out5 = (coeff31+coeff34);
	6'd19 : lut9_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut9_out5 = (coeff32+coeff34);
	6'd21 : lut9_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut9_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut9_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut9_out5 = (coeff33+coeff34);
	6'd25 : lut9_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut9_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut9_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut9_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut9_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut9_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut9_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut9_out5 = (coeff35);
	6'd33 : lut9_out5 = (coeff30+coeff35);
	6'd34 : lut9_out5 = (coeff31+coeff35);
	6'd35 : lut9_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut9_out5 = (coeff32+coeff35);
	6'd37 : lut9_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut9_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut9_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut9_out5 = (coeff33+coeff35);
	6'd41 : lut9_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut9_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut9_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut9_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut9_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut9_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut9_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut9_out5 = (coeff34+coeff35);
	6'd49 : lut9_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut9_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut9_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut9_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut9_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut9_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut9_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut9_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut9_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut9_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut9_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut9_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut9_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut9_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut9_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut9_out5 = 0;
	endcase
end
always @(lut_addr9_6)
begin
	case(lut_addr9_6)
	6'd0 : lut9_out6 = (0);
	6'd1 : lut9_out6 = (coeff36);
	6'd2 : lut9_out6 = (coeff37);
	6'd3 : lut9_out6 = (coeff36+coeff37);
	6'd4 : lut9_out6 = (coeff38);
	6'd5 : lut9_out6 = (coeff36+coeff38);
	6'd6 : lut9_out6 = (coeff37+coeff38);
	6'd7 : lut9_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut9_out6 = (coeff39);
	6'd9 : lut9_out6 = (coeff36+coeff39);
	6'd10 : lut9_out6 = (coeff37+coeff39);
	6'd11 : lut9_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut9_out6 = (coeff38+coeff39);
	6'd13 : lut9_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut9_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut9_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut9_out6 = (coeff40);
	6'd17 : lut9_out6 = (coeff36+coeff40);
	6'd18 : lut9_out6 = (coeff37+coeff40);
	6'd19 : lut9_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut9_out6 = (coeff38+coeff40);
	6'd21 : lut9_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut9_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut9_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut9_out6 = (coeff39+coeff40);
	6'd25 : lut9_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut9_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut9_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut9_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut9_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut9_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut9_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut9_out6 = (coeff41);
	6'd33 : lut9_out6 = (coeff36+coeff41);
	6'd34 : lut9_out6 = (coeff37+coeff41);
	6'd35 : lut9_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut9_out6 = (coeff38+coeff41);
	6'd37 : lut9_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut9_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut9_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut9_out6 = (coeff39+coeff41);
	6'd41 : lut9_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut9_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut9_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut9_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut9_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut9_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut9_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut9_out6 = (coeff40+coeff41);
	6'd49 : lut9_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut9_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut9_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut9_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut9_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut9_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut9_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut9_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut9_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut9_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut9_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut9_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut9_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut9_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut9_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut9_out6 = 0;
	endcase
end
always @(lut_addr9_7)
begin
	case(lut_addr9_7)
	6'd0 : lut9_out7 = (0);
	6'd1 : lut9_out7 = (coeff42);
	6'd2 : lut9_out7 = (coeff43);
	6'd3 : lut9_out7 = (coeff42+coeff43);
	6'd4 : lut9_out7 = (coeff44);
	6'd5 : lut9_out7 = (coeff42+coeff44);
	6'd6 : lut9_out7 = (coeff43+coeff44);
	6'd7 : lut9_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut9_out7 = (coeff45);
	6'd9 : lut9_out7 = (coeff42+coeff45);
	6'd10 : lut9_out7 = (coeff43+coeff45);
	6'd11 : lut9_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut9_out7 = (coeff44+coeff45);
	6'd13 : lut9_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut9_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut9_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut9_out7 = (coeff46);
	6'd17 : lut9_out7 = (coeff42+coeff46);
	6'd18 : lut9_out7 = (coeff43+coeff46);
	6'd19 : lut9_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut9_out7 = (coeff44+coeff46);
	6'd21 : lut9_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut9_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut9_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut9_out7 = (coeff45+coeff46);
	6'd25 : lut9_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut9_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut9_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut9_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut9_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut9_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut9_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut9_out7 = (coeff47);
	6'd33 : lut9_out7 = (coeff42+coeff47);
	6'd34 : lut9_out7 = (coeff43+coeff47);
	6'd35 : lut9_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut9_out7 = (coeff44+coeff47);
	6'd37 : lut9_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut9_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut9_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut9_out7 = (coeff45+coeff47);
	6'd41 : lut9_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut9_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut9_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut9_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut9_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut9_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut9_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut9_out7 = (coeff46+coeff47);
	6'd49 : lut9_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut9_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut9_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut9_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut9_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut9_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut9_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut9_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut9_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut9_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut9_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut9_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut9_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut9_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut9_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut9_out7 = 0;
	endcase
end
always @(lut_addr9_8)
begin
	case(lut_addr9_8)
	6'd0 : lut9_out8 = (0);
	6'd1 : lut9_out8 = (coeff48);
	6'd2 : lut9_out8 = (coeff49);
	6'd3 : lut9_out8 = (coeff48+coeff49);
	6'd4 : lut9_out8 = (coeff50);
	6'd5 : lut9_out8 = (coeff48+coeff50);
	6'd6 : lut9_out8 = (coeff49+coeff50);
	6'd7 : lut9_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut9_out8 = (coeff51);
	6'd9 : lut9_out8 = (coeff48+coeff51);
	6'd10 : lut9_out8 = (coeff49+coeff51);
	6'd11 : lut9_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut9_out8 = (coeff50+coeff51);
	6'd13 : lut9_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut9_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut9_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut9_out8 = (coeff52);
	6'd17 : lut9_out8 = (coeff48+coeff52);
	6'd18 : lut9_out8 = (coeff49+coeff52);
	6'd19 : lut9_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut9_out8 = (coeff50+coeff52);
	6'd21 : lut9_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut9_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut9_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut9_out8 = (coeff51+coeff52);
	6'd25 : lut9_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut9_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut9_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut9_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut9_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut9_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut9_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut9_out8 = (coeff53);
	6'd33 : lut9_out8 = (coeff48+coeff53);
	6'd34 : lut9_out8 = (coeff49+coeff53);
	6'd35 : lut9_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut9_out8 = (coeff50+coeff53);
	6'd37 : lut9_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut9_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut9_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut9_out8 = (coeff51+coeff53);
	6'd41 : lut9_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut9_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut9_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut9_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut9_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut9_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut9_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut9_out8 = (coeff52+coeff53);
	6'd49 : lut9_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut9_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut9_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut9_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut9_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut9_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut9_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut9_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut9_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut9_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut9_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut9_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut9_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut9_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut9_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut9_out8 = 0;
	endcase
end
always @(lut_addr9_9)
begin
	case(lut_addr9_9)
	6'd0 : lut9_out9 = (0);
	6'd1 : lut9_out9 = (coeff54);
	6'd2 : lut9_out9 = (coeff55);
	6'd3 : lut9_out9 = (coeff54+coeff55);
	6'd4 : lut9_out9 = (coeff56);
	6'd5 : lut9_out9 = (coeff54+coeff56);
	6'd6 : lut9_out9 = (coeff55+coeff56);
	6'd7 : lut9_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut9_out9 = (coeff57);
	6'd9 : lut9_out9 = (coeff54+coeff57);
	6'd10 : lut9_out9 = (coeff55+coeff57);
	6'd11 : lut9_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut9_out9 = (coeff56+coeff57);
	6'd13 : lut9_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut9_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut9_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut9_out9 = (coeff58);
	6'd17 : lut9_out9 = (coeff54+coeff58);
	6'd18 : lut9_out9 = (coeff55+coeff58);
	6'd19 : lut9_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut9_out9 = (coeff56+coeff58);
	6'd21 : lut9_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut9_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut9_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut9_out9 = (coeff57+coeff58);
	6'd25 : lut9_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut9_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut9_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut9_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut9_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut9_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut9_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut9_out9 = (coeff59);
	6'd33 : lut9_out9 = (coeff54+coeff59);
	6'd34 : lut9_out9 = (coeff55+coeff59);
	6'd35 : lut9_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut9_out9 = (coeff56+coeff59);
	6'd37 : lut9_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut9_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut9_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut9_out9 = (coeff57+coeff59);
	6'd41 : lut9_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut9_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut9_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut9_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut9_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut9_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut9_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut9_out9 = (coeff58+coeff59);
	6'd49 : lut9_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut9_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut9_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut9_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut9_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut9_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut9_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut9_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut9_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut9_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut9_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut9_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut9_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut9_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut9_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut9_out9 = 0;
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
	6'd0 : lut10_out5 = (0);
	6'd1 : lut10_out5 = (coeff30);
	6'd2 : lut10_out5 = (coeff31);
	6'd3 : lut10_out5 = (coeff30+coeff31);
	6'd4 : lut10_out5 = (coeff32);
	6'd5 : lut10_out5 = (coeff30+coeff32);
	6'd6 : lut10_out5 = (coeff31+coeff32);
	6'd7 : lut10_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut10_out5 = (coeff33);
	6'd9 : lut10_out5 = (coeff30+coeff33);
	6'd10 : lut10_out5 = (coeff31+coeff33);
	6'd11 : lut10_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut10_out5 = (coeff32+coeff33);
	6'd13 : lut10_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut10_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut10_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut10_out5 = (coeff34);
	6'd17 : lut10_out5 = (coeff30+coeff34);
	6'd18 : lut10_out5 = (coeff31+coeff34);
	6'd19 : lut10_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut10_out5 = (coeff32+coeff34);
	6'd21 : lut10_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut10_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut10_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut10_out5 = (coeff33+coeff34);
	6'd25 : lut10_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut10_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut10_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut10_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut10_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut10_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut10_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut10_out5 = (coeff35);
	6'd33 : lut10_out5 = (coeff30+coeff35);
	6'd34 : lut10_out5 = (coeff31+coeff35);
	6'd35 : lut10_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut10_out5 = (coeff32+coeff35);
	6'd37 : lut10_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut10_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut10_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut10_out5 = (coeff33+coeff35);
	6'd41 : lut10_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut10_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut10_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut10_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut10_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut10_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut10_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut10_out5 = (coeff34+coeff35);
	6'd49 : lut10_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut10_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut10_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut10_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut10_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut10_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut10_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut10_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut10_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut10_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut10_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut10_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut10_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut10_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut10_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut10_out5 = 0;
	endcase
end
always @(lut_addr10_6)
begin
	case(lut_addr10_6)
	6'd0 : lut10_out6 = (0);
	6'd1 : lut10_out6 = (coeff36);
	6'd2 : lut10_out6 = (coeff37);
	6'd3 : lut10_out6 = (coeff36+coeff37);
	6'd4 : lut10_out6 = (coeff38);
	6'd5 : lut10_out6 = (coeff36+coeff38);
	6'd6 : lut10_out6 = (coeff37+coeff38);
	6'd7 : lut10_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut10_out6 = (coeff39);
	6'd9 : lut10_out6 = (coeff36+coeff39);
	6'd10 : lut10_out6 = (coeff37+coeff39);
	6'd11 : lut10_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut10_out6 = (coeff38+coeff39);
	6'd13 : lut10_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut10_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut10_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut10_out6 = (coeff40);
	6'd17 : lut10_out6 = (coeff36+coeff40);
	6'd18 : lut10_out6 = (coeff37+coeff40);
	6'd19 : lut10_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut10_out6 = (coeff38+coeff40);
	6'd21 : lut10_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut10_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut10_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut10_out6 = (coeff39+coeff40);
	6'd25 : lut10_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut10_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut10_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut10_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut10_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut10_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut10_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut10_out6 = (coeff41);
	6'd33 : lut10_out6 = (coeff36+coeff41);
	6'd34 : lut10_out6 = (coeff37+coeff41);
	6'd35 : lut10_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut10_out6 = (coeff38+coeff41);
	6'd37 : lut10_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut10_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut10_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut10_out6 = (coeff39+coeff41);
	6'd41 : lut10_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut10_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut10_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut10_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut10_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut10_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut10_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut10_out6 = (coeff40+coeff41);
	6'd49 : lut10_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut10_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut10_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut10_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut10_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut10_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut10_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut10_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut10_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut10_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut10_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut10_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut10_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut10_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut10_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut10_out6 = 0;
	endcase
end
always @(lut_addr10_7)
begin
	case(lut_addr10_7)
	6'd0 : lut10_out7 = (0);
	6'd1 : lut10_out7 = (coeff42);
	6'd2 : lut10_out7 = (coeff43);
	6'd3 : lut10_out7 = (coeff42+coeff43);
	6'd4 : lut10_out7 = (coeff44);
	6'd5 : lut10_out7 = (coeff42+coeff44);
	6'd6 : lut10_out7 = (coeff43+coeff44);
	6'd7 : lut10_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut10_out7 = (coeff45);
	6'd9 : lut10_out7 = (coeff42+coeff45);
	6'd10 : lut10_out7 = (coeff43+coeff45);
	6'd11 : lut10_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut10_out7 = (coeff44+coeff45);
	6'd13 : lut10_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut10_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut10_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut10_out7 = (coeff46);
	6'd17 : lut10_out7 = (coeff42+coeff46);
	6'd18 : lut10_out7 = (coeff43+coeff46);
	6'd19 : lut10_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut10_out7 = (coeff44+coeff46);
	6'd21 : lut10_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut10_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut10_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut10_out7 = (coeff45+coeff46);
	6'd25 : lut10_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut10_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut10_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut10_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut10_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut10_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut10_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut10_out7 = (coeff47);
	6'd33 : lut10_out7 = (coeff42+coeff47);
	6'd34 : lut10_out7 = (coeff43+coeff47);
	6'd35 : lut10_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut10_out7 = (coeff44+coeff47);
	6'd37 : lut10_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut10_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut10_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut10_out7 = (coeff45+coeff47);
	6'd41 : lut10_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut10_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut10_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut10_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut10_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut10_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut10_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut10_out7 = (coeff46+coeff47);
	6'd49 : lut10_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut10_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut10_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut10_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut10_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut10_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut10_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut10_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut10_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut10_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut10_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut10_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut10_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut10_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut10_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut10_out7 = 0;
	endcase
end
always @(lut_addr10_8)
begin
	case(lut_addr10_8)
	6'd0 : lut10_out8 = (0);
	6'd1 : lut10_out8 = (coeff48);
	6'd2 : lut10_out8 = (coeff49);
	6'd3 : lut10_out8 = (coeff48+coeff49);
	6'd4 : lut10_out8 = (coeff50);
	6'd5 : lut10_out8 = (coeff48+coeff50);
	6'd6 : lut10_out8 = (coeff49+coeff50);
	6'd7 : lut10_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut10_out8 = (coeff51);
	6'd9 : lut10_out8 = (coeff48+coeff51);
	6'd10 : lut10_out8 = (coeff49+coeff51);
	6'd11 : lut10_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut10_out8 = (coeff50+coeff51);
	6'd13 : lut10_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut10_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut10_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut10_out8 = (coeff52);
	6'd17 : lut10_out8 = (coeff48+coeff52);
	6'd18 : lut10_out8 = (coeff49+coeff52);
	6'd19 : lut10_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut10_out8 = (coeff50+coeff52);
	6'd21 : lut10_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut10_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut10_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut10_out8 = (coeff51+coeff52);
	6'd25 : lut10_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut10_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut10_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut10_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut10_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut10_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut10_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut10_out8 = (coeff53);
	6'd33 : lut10_out8 = (coeff48+coeff53);
	6'd34 : lut10_out8 = (coeff49+coeff53);
	6'd35 : lut10_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut10_out8 = (coeff50+coeff53);
	6'd37 : lut10_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut10_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut10_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut10_out8 = (coeff51+coeff53);
	6'd41 : lut10_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut10_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut10_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut10_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut10_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut10_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut10_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut10_out8 = (coeff52+coeff53);
	6'd49 : lut10_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut10_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut10_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut10_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut10_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut10_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut10_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut10_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut10_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut10_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut10_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut10_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut10_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut10_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut10_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut10_out8 = 0;
	endcase
end
always @(lut_addr10_9)
begin
	case(lut_addr10_9)
	6'd0 : lut10_out9 = (0);
	6'd1 : lut10_out9 = (coeff54);
	6'd2 : lut10_out9 = (coeff55);
	6'd3 : lut10_out9 = (coeff54+coeff55);
	6'd4 : lut10_out9 = (coeff56);
	6'd5 : lut10_out9 = (coeff54+coeff56);
	6'd6 : lut10_out9 = (coeff55+coeff56);
	6'd7 : lut10_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut10_out9 = (coeff57);
	6'd9 : lut10_out9 = (coeff54+coeff57);
	6'd10 : lut10_out9 = (coeff55+coeff57);
	6'd11 : lut10_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut10_out9 = (coeff56+coeff57);
	6'd13 : lut10_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut10_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut10_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut10_out9 = (coeff58);
	6'd17 : lut10_out9 = (coeff54+coeff58);
	6'd18 : lut10_out9 = (coeff55+coeff58);
	6'd19 : lut10_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut10_out9 = (coeff56+coeff58);
	6'd21 : lut10_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut10_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut10_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut10_out9 = (coeff57+coeff58);
	6'd25 : lut10_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut10_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut10_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut10_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut10_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut10_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut10_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut10_out9 = (coeff59);
	6'd33 : lut10_out9 = (coeff54+coeff59);
	6'd34 : lut10_out9 = (coeff55+coeff59);
	6'd35 : lut10_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut10_out9 = (coeff56+coeff59);
	6'd37 : lut10_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut10_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut10_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut10_out9 = (coeff57+coeff59);
	6'd41 : lut10_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut10_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut10_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut10_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut10_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut10_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut10_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut10_out9 = (coeff58+coeff59);
	6'd49 : lut10_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut10_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut10_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut10_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut10_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut10_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut10_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut10_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut10_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut10_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut10_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut10_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut10_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut10_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut10_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut10_out9 = 0;
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
	6'd0 : lut11_out5 = (0);
	6'd1 : lut11_out5 = (coeff30);
	6'd2 : lut11_out5 = (coeff31);
	6'd3 : lut11_out5 = (coeff30+coeff31);
	6'd4 : lut11_out5 = (coeff32);
	6'd5 : lut11_out5 = (coeff30+coeff32);
	6'd6 : lut11_out5 = (coeff31+coeff32);
	6'd7 : lut11_out5 = (coeff30+coeff31+coeff32);
	6'd8 : lut11_out5 = (coeff33);
	6'd9 : lut11_out5 = (coeff30+coeff33);
	6'd10 : lut11_out5 = (coeff31+coeff33);
	6'd11 : lut11_out5 = (coeff30+coeff31+coeff33);
	6'd12 : lut11_out5 = (coeff32+coeff33);
	6'd13 : lut11_out5 = (coeff30+coeff32+coeff33);
	6'd14 : lut11_out5 = (coeff31+coeff32+coeff33);
	6'd15 : lut11_out5 = (coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut11_out5 = (coeff34);
	6'd17 : lut11_out5 = (coeff30+coeff34);
	6'd18 : lut11_out5 = (coeff31+coeff34);
	6'd19 : lut11_out5 = (coeff30+coeff31+coeff34);
	6'd20 : lut11_out5 = (coeff32+coeff34);
	6'd21 : lut11_out5 = (coeff30+coeff32+coeff34);
	6'd22 : lut11_out5 = (coeff31+coeff32+coeff34);
	6'd23 : lut11_out5 = (coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut11_out5 = (coeff33+coeff34);
	6'd25 : lut11_out5 = (coeff30+coeff33+coeff34);
	6'd26 : lut11_out5 = (coeff31+coeff33+coeff34);
	6'd27 : lut11_out5 = (coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut11_out5 = (coeff32+coeff33+coeff34);
	6'd29 : lut11_out5 = (coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut11_out5 = (coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut11_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut11_out5 = (coeff35);
	6'd33 : lut11_out5 = (coeff30+coeff35);
	6'd34 : lut11_out5 = (coeff31+coeff35);
	6'd35 : lut11_out5 = (coeff30+coeff31+coeff35);
	6'd36 : lut11_out5 = (coeff32+coeff35);
	6'd37 : lut11_out5 = (coeff30+coeff32+coeff35);
	6'd38 : lut11_out5 = (coeff31+coeff32+coeff35);
	6'd39 : lut11_out5 = (coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut11_out5 = (coeff33+coeff35);
	6'd41 : lut11_out5 = (coeff30+coeff33+coeff35);
	6'd42 : lut11_out5 = (coeff31+coeff33+coeff35);
	6'd43 : lut11_out5 = (coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut11_out5 = (coeff32+coeff33+coeff35);
	6'd45 : lut11_out5 = (coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut11_out5 = (coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut11_out5 = (coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut11_out5 = (coeff34+coeff35);
	6'd49 : lut11_out5 = (coeff30+coeff34+coeff35);
	6'd50 : lut11_out5 = (coeff31+coeff34+coeff35);
	6'd51 : lut11_out5 = (coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut11_out5 = (coeff32+coeff34+coeff35);
	6'd53 : lut11_out5 = (coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut11_out5 = (coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut11_out5 = (coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut11_out5 = (coeff33+coeff34+coeff35);
	6'd57 : lut11_out5 = (coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut11_out5 = (coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut11_out5 = (coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut11_out5 = (coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut11_out5 = (coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut11_out5 = (coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut11_out5 = (coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut11_out5 = 0;
	endcase
end
always @(lut_addr11_6)
begin
	case(lut_addr11_6)
	6'd0 : lut11_out6 = (0);
	6'd1 : lut11_out6 = (coeff36);
	6'd2 : lut11_out6 = (coeff37);
	6'd3 : lut11_out6 = (coeff36+coeff37);
	6'd4 : lut11_out6 = (coeff38);
	6'd5 : lut11_out6 = (coeff36+coeff38);
	6'd6 : lut11_out6 = (coeff37+coeff38);
	6'd7 : lut11_out6 = (coeff36+coeff37+coeff38);
	6'd8 : lut11_out6 = (coeff39);
	6'd9 : lut11_out6 = (coeff36+coeff39);
	6'd10 : lut11_out6 = (coeff37+coeff39);
	6'd11 : lut11_out6 = (coeff36+coeff37+coeff39);
	6'd12 : lut11_out6 = (coeff38+coeff39);
	6'd13 : lut11_out6 = (coeff36+coeff38+coeff39);
	6'd14 : lut11_out6 = (coeff37+coeff38+coeff39);
	6'd15 : lut11_out6 = (coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut11_out6 = (coeff40);
	6'd17 : lut11_out6 = (coeff36+coeff40);
	6'd18 : lut11_out6 = (coeff37+coeff40);
	6'd19 : lut11_out6 = (coeff36+coeff37+coeff40);
	6'd20 : lut11_out6 = (coeff38+coeff40);
	6'd21 : lut11_out6 = (coeff36+coeff38+coeff40);
	6'd22 : lut11_out6 = (coeff37+coeff38+coeff40);
	6'd23 : lut11_out6 = (coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut11_out6 = (coeff39+coeff40);
	6'd25 : lut11_out6 = (coeff36+coeff39+coeff40);
	6'd26 : lut11_out6 = (coeff37+coeff39+coeff40);
	6'd27 : lut11_out6 = (coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut11_out6 = (coeff38+coeff39+coeff40);
	6'd29 : lut11_out6 = (coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut11_out6 = (coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut11_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut11_out6 = (coeff41);
	6'd33 : lut11_out6 = (coeff36+coeff41);
	6'd34 : lut11_out6 = (coeff37+coeff41);
	6'd35 : lut11_out6 = (coeff36+coeff37+coeff41);
	6'd36 : lut11_out6 = (coeff38+coeff41);
	6'd37 : lut11_out6 = (coeff36+coeff38+coeff41);
	6'd38 : lut11_out6 = (coeff37+coeff38+coeff41);
	6'd39 : lut11_out6 = (coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut11_out6 = (coeff39+coeff41);
	6'd41 : lut11_out6 = (coeff36+coeff39+coeff41);
	6'd42 : lut11_out6 = (coeff37+coeff39+coeff41);
	6'd43 : lut11_out6 = (coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut11_out6 = (coeff38+coeff39+coeff41);
	6'd45 : lut11_out6 = (coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut11_out6 = (coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut11_out6 = (coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut11_out6 = (coeff40+coeff41);
	6'd49 : lut11_out6 = (coeff36+coeff40+coeff41);
	6'd50 : lut11_out6 = (coeff37+coeff40+coeff41);
	6'd51 : lut11_out6 = (coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut11_out6 = (coeff38+coeff40+coeff41);
	6'd53 : lut11_out6 = (coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut11_out6 = (coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut11_out6 = (coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut11_out6 = (coeff39+coeff40+coeff41);
	6'd57 : lut11_out6 = (coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut11_out6 = (coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut11_out6 = (coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut11_out6 = (coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut11_out6 = (coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut11_out6 = (coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut11_out6 = (coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut11_out6 = 0;
	endcase
end
always @(lut_addr11_7)
begin
	case(lut_addr11_7)
	6'd0 : lut11_out7 = (0);
	6'd1 : lut11_out7 = (coeff42);
	6'd2 : lut11_out7 = (coeff43);
	6'd3 : lut11_out7 = (coeff42+coeff43);
	6'd4 : lut11_out7 = (coeff44);
	6'd5 : lut11_out7 = (coeff42+coeff44);
	6'd6 : lut11_out7 = (coeff43+coeff44);
	6'd7 : lut11_out7 = (coeff42+coeff43+coeff44);
	6'd8 : lut11_out7 = (coeff45);
	6'd9 : lut11_out7 = (coeff42+coeff45);
	6'd10 : lut11_out7 = (coeff43+coeff45);
	6'd11 : lut11_out7 = (coeff42+coeff43+coeff45);
	6'd12 : lut11_out7 = (coeff44+coeff45);
	6'd13 : lut11_out7 = (coeff42+coeff44+coeff45);
	6'd14 : lut11_out7 = (coeff43+coeff44+coeff45);
	6'd15 : lut11_out7 = (coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut11_out7 = (coeff46);
	6'd17 : lut11_out7 = (coeff42+coeff46);
	6'd18 : lut11_out7 = (coeff43+coeff46);
	6'd19 : lut11_out7 = (coeff42+coeff43+coeff46);
	6'd20 : lut11_out7 = (coeff44+coeff46);
	6'd21 : lut11_out7 = (coeff42+coeff44+coeff46);
	6'd22 : lut11_out7 = (coeff43+coeff44+coeff46);
	6'd23 : lut11_out7 = (coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut11_out7 = (coeff45+coeff46);
	6'd25 : lut11_out7 = (coeff42+coeff45+coeff46);
	6'd26 : lut11_out7 = (coeff43+coeff45+coeff46);
	6'd27 : lut11_out7 = (coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut11_out7 = (coeff44+coeff45+coeff46);
	6'd29 : lut11_out7 = (coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut11_out7 = (coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut11_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut11_out7 = (coeff47);
	6'd33 : lut11_out7 = (coeff42+coeff47);
	6'd34 : lut11_out7 = (coeff43+coeff47);
	6'd35 : lut11_out7 = (coeff42+coeff43+coeff47);
	6'd36 : lut11_out7 = (coeff44+coeff47);
	6'd37 : lut11_out7 = (coeff42+coeff44+coeff47);
	6'd38 : lut11_out7 = (coeff43+coeff44+coeff47);
	6'd39 : lut11_out7 = (coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut11_out7 = (coeff45+coeff47);
	6'd41 : lut11_out7 = (coeff42+coeff45+coeff47);
	6'd42 : lut11_out7 = (coeff43+coeff45+coeff47);
	6'd43 : lut11_out7 = (coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut11_out7 = (coeff44+coeff45+coeff47);
	6'd45 : lut11_out7 = (coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut11_out7 = (coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut11_out7 = (coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut11_out7 = (coeff46+coeff47);
	6'd49 : lut11_out7 = (coeff42+coeff46+coeff47);
	6'd50 : lut11_out7 = (coeff43+coeff46+coeff47);
	6'd51 : lut11_out7 = (coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut11_out7 = (coeff44+coeff46+coeff47);
	6'd53 : lut11_out7 = (coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut11_out7 = (coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut11_out7 = (coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut11_out7 = (coeff45+coeff46+coeff47);
	6'd57 : lut11_out7 = (coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut11_out7 = (coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut11_out7 = (coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut11_out7 = (coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut11_out7 = (coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut11_out7 = (coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut11_out7 = (coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut11_out7 = 0;
	endcase
end
always @(lut_addr11_8)
begin
	case(lut_addr11_8)
	6'd0 : lut11_out8 = (0);
	6'd1 : lut11_out8 = (coeff48);
	6'd2 : lut11_out8 = (coeff49);
	6'd3 : lut11_out8 = (coeff48+coeff49);
	6'd4 : lut11_out8 = (coeff50);
	6'd5 : lut11_out8 = (coeff48+coeff50);
	6'd6 : lut11_out8 = (coeff49+coeff50);
	6'd7 : lut11_out8 = (coeff48+coeff49+coeff50);
	6'd8 : lut11_out8 = (coeff51);
	6'd9 : lut11_out8 = (coeff48+coeff51);
	6'd10 : lut11_out8 = (coeff49+coeff51);
	6'd11 : lut11_out8 = (coeff48+coeff49+coeff51);
	6'd12 : lut11_out8 = (coeff50+coeff51);
	6'd13 : lut11_out8 = (coeff48+coeff50+coeff51);
	6'd14 : lut11_out8 = (coeff49+coeff50+coeff51);
	6'd15 : lut11_out8 = (coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut11_out8 = (coeff52);
	6'd17 : lut11_out8 = (coeff48+coeff52);
	6'd18 : lut11_out8 = (coeff49+coeff52);
	6'd19 : lut11_out8 = (coeff48+coeff49+coeff52);
	6'd20 : lut11_out8 = (coeff50+coeff52);
	6'd21 : lut11_out8 = (coeff48+coeff50+coeff52);
	6'd22 : lut11_out8 = (coeff49+coeff50+coeff52);
	6'd23 : lut11_out8 = (coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut11_out8 = (coeff51+coeff52);
	6'd25 : lut11_out8 = (coeff48+coeff51+coeff52);
	6'd26 : lut11_out8 = (coeff49+coeff51+coeff52);
	6'd27 : lut11_out8 = (coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut11_out8 = (coeff50+coeff51+coeff52);
	6'd29 : lut11_out8 = (coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut11_out8 = (coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut11_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut11_out8 = (coeff53);
	6'd33 : lut11_out8 = (coeff48+coeff53);
	6'd34 : lut11_out8 = (coeff49+coeff53);
	6'd35 : lut11_out8 = (coeff48+coeff49+coeff53);
	6'd36 : lut11_out8 = (coeff50+coeff53);
	6'd37 : lut11_out8 = (coeff48+coeff50+coeff53);
	6'd38 : lut11_out8 = (coeff49+coeff50+coeff53);
	6'd39 : lut11_out8 = (coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut11_out8 = (coeff51+coeff53);
	6'd41 : lut11_out8 = (coeff48+coeff51+coeff53);
	6'd42 : lut11_out8 = (coeff49+coeff51+coeff53);
	6'd43 : lut11_out8 = (coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut11_out8 = (coeff50+coeff51+coeff53);
	6'd45 : lut11_out8 = (coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut11_out8 = (coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut11_out8 = (coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut11_out8 = (coeff52+coeff53);
	6'd49 : lut11_out8 = (coeff48+coeff52+coeff53);
	6'd50 : lut11_out8 = (coeff49+coeff52+coeff53);
	6'd51 : lut11_out8 = (coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut11_out8 = (coeff50+coeff52+coeff53);
	6'd53 : lut11_out8 = (coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut11_out8 = (coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut11_out8 = (coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut11_out8 = (coeff51+coeff52+coeff53);
	6'd57 : lut11_out8 = (coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut11_out8 = (coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut11_out8 = (coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut11_out8 = (coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut11_out8 = (coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut11_out8 = (coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut11_out8 = (coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut11_out8 = 0;
	endcase
end
always @(lut_addr11_9)
begin
	case(lut_addr11_9)
	6'd0 : lut11_out9 = (0);
	6'd1 : lut11_out9 = (coeff54);
	6'd2 : lut11_out9 = (coeff55);
	6'd3 : lut11_out9 = (coeff54+coeff55);
	6'd4 : lut11_out9 = (coeff56);
	6'd5 : lut11_out9 = (coeff54+coeff56);
	6'd6 : lut11_out9 = (coeff55+coeff56);
	6'd7 : lut11_out9 = (coeff54+coeff55+coeff56);
	6'd8 : lut11_out9 = (coeff57);
	6'd9 : lut11_out9 = (coeff54+coeff57);
	6'd10 : lut11_out9 = (coeff55+coeff57);
	6'd11 : lut11_out9 = (coeff54+coeff55+coeff57);
	6'd12 : lut11_out9 = (coeff56+coeff57);
	6'd13 : lut11_out9 = (coeff54+coeff56+coeff57);
	6'd14 : lut11_out9 = (coeff55+coeff56+coeff57);
	6'd15 : lut11_out9 = (coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut11_out9 = (coeff58);
	6'd17 : lut11_out9 = (coeff54+coeff58);
	6'd18 : lut11_out9 = (coeff55+coeff58);
	6'd19 : lut11_out9 = (coeff54+coeff55+coeff58);
	6'd20 : lut11_out9 = (coeff56+coeff58);
	6'd21 : lut11_out9 = (coeff54+coeff56+coeff58);
	6'd22 : lut11_out9 = (coeff55+coeff56+coeff58);
	6'd23 : lut11_out9 = (coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut11_out9 = (coeff57+coeff58);
	6'd25 : lut11_out9 = (coeff54+coeff57+coeff58);
	6'd26 : lut11_out9 = (coeff55+coeff57+coeff58);
	6'd27 : lut11_out9 = (coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut11_out9 = (coeff56+coeff57+coeff58);
	6'd29 : lut11_out9 = (coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut11_out9 = (coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut11_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut11_out9 = (coeff59);
	6'd33 : lut11_out9 = (coeff54+coeff59);
	6'd34 : lut11_out9 = (coeff55+coeff59);
	6'd35 : lut11_out9 = (coeff54+coeff55+coeff59);
	6'd36 : lut11_out9 = (coeff56+coeff59);
	6'd37 : lut11_out9 = (coeff54+coeff56+coeff59);
	6'd38 : lut11_out9 = (coeff55+coeff56+coeff59);
	6'd39 : lut11_out9 = (coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut11_out9 = (coeff57+coeff59);
	6'd41 : lut11_out9 = (coeff54+coeff57+coeff59);
	6'd42 : lut11_out9 = (coeff55+coeff57+coeff59);
	6'd43 : lut11_out9 = (coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut11_out9 = (coeff56+coeff57+coeff59);
	6'd45 : lut11_out9 = (coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut11_out9 = (coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut11_out9 = (coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut11_out9 = (coeff58+coeff59);
	6'd49 : lut11_out9 = (coeff54+coeff58+coeff59);
	6'd50 : lut11_out9 = (coeff55+coeff58+coeff59);
	6'd51 : lut11_out9 = (coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut11_out9 = (coeff56+coeff58+coeff59);
	6'd53 : lut11_out9 = (coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut11_out9 = (coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut11_out9 = (coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut11_out9 = (coeff57+coeff58+coeff59);
	6'd57 : lut11_out9 = (coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut11_out9 = (coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut11_out9 = (coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut11_out9 = (coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut11_out9 = (coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut11_out9 = (coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut11_out9 = (coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut11_out9 = 0;
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
	6'd0 : lut12_out5 = (0);
	6'd1 : lut12_out5 = -(coeff30);
	6'd2 : lut12_out5 = -(coeff31);
	6'd3 : lut12_out5 = -(coeff30+coeff31);
	6'd4 : lut12_out5 = -(coeff32);
	6'd5 : lut12_out5 = -(coeff30+coeff32);
	6'd6 : lut12_out5 = -(coeff31+coeff32);
	6'd7 : lut12_out5 = -(coeff30+coeff31+coeff32);
	6'd8 : lut12_out5 = -(coeff33);
	6'd9 : lut12_out5 = -(coeff30+coeff33);
	6'd10 : lut12_out5 = -(coeff31+coeff33);
	6'd11 : lut12_out5 = -(coeff30+coeff31+coeff33);
	6'd12 : lut12_out5 = -(coeff32+coeff33);
	6'd13 : lut12_out5 = -(coeff30+coeff32+coeff33);
	6'd14 : lut12_out5 = -(coeff31+coeff32+coeff33);
	6'd15 : lut12_out5 = -(coeff30+coeff31+coeff32+coeff33);
	6'd16 : lut12_out5 = -(coeff34);
	6'd17 : lut12_out5 = -(coeff30+coeff34);
	6'd18 : lut12_out5 = -(coeff31+coeff34);
	6'd19 : lut12_out5 = -(coeff30+coeff31+coeff34);
	6'd20 : lut12_out5 = -(coeff32+coeff34);
	6'd21 : lut12_out5 = -(coeff30+coeff32+coeff34);
	6'd22 : lut12_out5 = -(coeff31+coeff32+coeff34);
	6'd23 : lut12_out5 = -(coeff30+coeff31+coeff32+coeff34);
	6'd24 : lut12_out5 = -(coeff33+coeff34);
	6'd25 : lut12_out5 = -(coeff30+coeff33+coeff34);
	6'd26 : lut12_out5 = -(coeff31+coeff33+coeff34);
	6'd27 : lut12_out5 = -(coeff30+coeff31+coeff33+coeff34);
	6'd28 : lut12_out5 = -(coeff32+coeff33+coeff34);
	6'd29 : lut12_out5 = -(coeff30+coeff32+coeff33+coeff34);
	6'd30 : lut12_out5 = -(coeff31+coeff32+coeff33+coeff34);
	6'd31 : lut12_out5 = -(coeff30+coeff31+coeff32+coeff33+coeff34);
	6'd32 : lut12_out5 = -(coeff35);
	6'd33 : lut12_out5 = -(coeff30+coeff35);
	6'd34 : lut12_out5 = -(coeff31+coeff35);
	6'd35 : lut12_out5 = -(coeff30+coeff31+coeff35);
	6'd36 : lut12_out5 = -(coeff32+coeff35);
	6'd37 : lut12_out5 = -(coeff30+coeff32+coeff35);
	6'd38 : lut12_out5 = -(coeff31+coeff32+coeff35);
	6'd39 : lut12_out5 = -(coeff30+coeff31+coeff32+coeff35);
	6'd40 : lut12_out5 = -(coeff33+coeff35);
	6'd41 : lut12_out5 = -(coeff30+coeff33+coeff35);
	6'd42 : lut12_out5 = -(coeff31+coeff33+coeff35);
	6'd43 : lut12_out5 = -(coeff30+coeff31+coeff33+coeff35);
	6'd44 : lut12_out5 = -(coeff32+coeff33+coeff35);
	6'd45 : lut12_out5 = -(coeff30+coeff32+coeff33+coeff35);
	6'd46 : lut12_out5 = -(coeff31+coeff32+coeff33+coeff35);
	6'd47 : lut12_out5 = -(coeff30+coeff31+coeff32+coeff33+coeff35);
	6'd48 : lut12_out5 = -(coeff34+coeff35);
	6'd49 : lut12_out5 = -(coeff30+coeff34+coeff35);
	6'd50 : lut12_out5 = -(coeff31+coeff34+coeff35);
	6'd51 : lut12_out5 = -(coeff30+coeff31+coeff34+coeff35);
	6'd52 : lut12_out5 = -(coeff32+coeff34+coeff35);
	6'd53 : lut12_out5 = -(coeff30+coeff32+coeff34+coeff35);
	6'd54 : lut12_out5 = -(coeff31+coeff32+coeff34+coeff35);
	6'd55 : lut12_out5 = -(coeff30+coeff31+coeff32+coeff34+coeff35);
	6'd56 : lut12_out5 = -(coeff33+coeff34+coeff35);
	6'd57 : lut12_out5 = -(coeff30+coeff33+coeff34+coeff35);
	6'd58 : lut12_out5 = -(coeff31+coeff33+coeff34+coeff35);
	6'd59 : lut12_out5 = -(coeff30+coeff31+coeff33+coeff34+coeff35);
	6'd60 : lut12_out5 = -(coeff32+coeff33+coeff34+coeff35);
	6'd61 : lut12_out5 = -(coeff30+coeff32+coeff33+coeff34+coeff35);
	6'd62 : lut12_out5 = -(coeff31+coeff32+coeff33+coeff34+coeff35);
	6'd63 : lut12_out5 = -(coeff30+coeff31+coeff32+coeff33+coeff34+coeff35);
	default :lut12_out5 = 0;
	endcase
end
always @(lut_addr12_6)
begin
	case(lut_addr12_6)
	6'd0 : lut12_out6 = (0);
	6'd1 : lut12_out6 = -(coeff36);
	6'd2 : lut12_out6 = -(coeff37);
	6'd3 : lut12_out6 = -(coeff36+coeff37);
	6'd4 : lut12_out6 = -(coeff38);
	6'd5 : lut12_out6 = -(coeff36+coeff38);
	6'd6 : lut12_out6 = -(coeff37+coeff38);
	6'd7 : lut12_out6 = -(coeff36+coeff37+coeff38);
	6'd8 : lut12_out6 = -(coeff39);
	6'd9 : lut12_out6 = -(coeff36+coeff39);
	6'd10 : lut12_out6 = -(coeff37+coeff39);
	6'd11 : lut12_out6 = -(coeff36+coeff37+coeff39);
	6'd12 : lut12_out6 = -(coeff38+coeff39);
	6'd13 : lut12_out6 = -(coeff36+coeff38+coeff39);
	6'd14 : lut12_out6 = -(coeff37+coeff38+coeff39);
	6'd15 : lut12_out6 = -(coeff36+coeff37+coeff38+coeff39);
	6'd16 : lut12_out6 = -(coeff40);
	6'd17 : lut12_out6 = -(coeff36+coeff40);
	6'd18 : lut12_out6 = -(coeff37+coeff40);
	6'd19 : lut12_out6 = -(coeff36+coeff37+coeff40);
	6'd20 : lut12_out6 = -(coeff38+coeff40);
	6'd21 : lut12_out6 = -(coeff36+coeff38+coeff40);
	6'd22 : lut12_out6 = -(coeff37+coeff38+coeff40);
	6'd23 : lut12_out6 = -(coeff36+coeff37+coeff38+coeff40);
	6'd24 : lut12_out6 = -(coeff39+coeff40);
	6'd25 : lut12_out6 = -(coeff36+coeff39+coeff40);
	6'd26 : lut12_out6 = -(coeff37+coeff39+coeff40);
	6'd27 : lut12_out6 = -(coeff36+coeff37+coeff39+coeff40);
	6'd28 : lut12_out6 = -(coeff38+coeff39+coeff40);
	6'd29 : lut12_out6 = -(coeff36+coeff38+coeff39+coeff40);
	6'd30 : lut12_out6 = -(coeff37+coeff38+coeff39+coeff40);
	6'd31 : lut12_out6 = -(coeff36+coeff37+coeff38+coeff39+coeff40);
	6'd32 : lut12_out6 = -(coeff41);
	6'd33 : lut12_out6 = -(coeff36+coeff41);
	6'd34 : lut12_out6 = -(coeff37+coeff41);
	6'd35 : lut12_out6 = -(coeff36+coeff37+coeff41);
	6'd36 : lut12_out6 = -(coeff38+coeff41);
	6'd37 : lut12_out6 = -(coeff36+coeff38+coeff41);
	6'd38 : lut12_out6 = -(coeff37+coeff38+coeff41);
	6'd39 : lut12_out6 = -(coeff36+coeff37+coeff38+coeff41);
	6'd40 : lut12_out6 = -(coeff39+coeff41);
	6'd41 : lut12_out6 = -(coeff36+coeff39+coeff41);
	6'd42 : lut12_out6 = -(coeff37+coeff39+coeff41);
	6'd43 : lut12_out6 = -(coeff36+coeff37+coeff39+coeff41);
	6'd44 : lut12_out6 = -(coeff38+coeff39+coeff41);
	6'd45 : lut12_out6 = -(coeff36+coeff38+coeff39+coeff41);
	6'd46 : lut12_out6 = -(coeff37+coeff38+coeff39+coeff41);
	6'd47 : lut12_out6 = -(coeff36+coeff37+coeff38+coeff39+coeff41);
	6'd48 : lut12_out6 = -(coeff40+coeff41);
	6'd49 : lut12_out6 = -(coeff36+coeff40+coeff41);
	6'd50 : lut12_out6 = -(coeff37+coeff40+coeff41);
	6'd51 : lut12_out6 = -(coeff36+coeff37+coeff40+coeff41);
	6'd52 : lut12_out6 = -(coeff38+coeff40+coeff41);
	6'd53 : lut12_out6 = -(coeff36+coeff38+coeff40+coeff41);
	6'd54 : lut12_out6 = -(coeff37+coeff38+coeff40+coeff41);
	6'd55 : lut12_out6 = -(coeff36+coeff37+coeff38+coeff40+coeff41);
	6'd56 : lut12_out6 = -(coeff39+coeff40+coeff41);
	6'd57 : lut12_out6 = -(coeff36+coeff39+coeff40+coeff41);
	6'd58 : lut12_out6 = -(coeff37+coeff39+coeff40+coeff41);
	6'd59 : lut12_out6 = -(coeff36+coeff37+coeff39+coeff40+coeff41);
	6'd60 : lut12_out6 = -(coeff38+coeff39+coeff40+coeff41);
	6'd61 : lut12_out6 = -(coeff36+coeff38+coeff39+coeff40+coeff41);
	6'd62 : lut12_out6 = -(coeff37+coeff38+coeff39+coeff40+coeff41);
	6'd63 : lut12_out6 = -(coeff36+coeff37+coeff38+coeff39+coeff40+coeff41);
	default :lut12_out6 = 0;
	endcase
end
always @(lut_addr12_7)
begin
	case(lut_addr12_7)
	6'd0 : lut12_out7 = (0);
	6'd1 : lut12_out7 = -(coeff42);
	6'd2 : lut12_out7 = -(coeff43);
	6'd3 : lut12_out7 = -(coeff42+coeff43);
	6'd4 : lut12_out7 = -(coeff44);
	6'd5 : lut12_out7 = -(coeff42+coeff44);
	6'd6 : lut12_out7 = -(coeff43+coeff44);
	6'd7 : lut12_out7 = -(coeff42+coeff43+coeff44);
	6'd8 : lut12_out7 = -(coeff45);
	6'd9 : lut12_out7 = -(coeff42+coeff45);
	6'd10 : lut12_out7 = -(coeff43+coeff45);
	6'd11 : lut12_out7 = -(coeff42+coeff43+coeff45);
	6'd12 : lut12_out7 = -(coeff44+coeff45);
	6'd13 : lut12_out7 = -(coeff42+coeff44+coeff45);
	6'd14 : lut12_out7 = -(coeff43+coeff44+coeff45);
	6'd15 : lut12_out7 = -(coeff42+coeff43+coeff44+coeff45);
	6'd16 : lut12_out7 = -(coeff46);
	6'd17 : lut12_out7 = -(coeff42+coeff46);
	6'd18 : lut12_out7 = -(coeff43+coeff46);
	6'd19 : lut12_out7 = -(coeff42+coeff43+coeff46);
	6'd20 : lut12_out7 = -(coeff44+coeff46);
	6'd21 : lut12_out7 = -(coeff42+coeff44+coeff46);
	6'd22 : lut12_out7 = -(coeff43+coeff44+coeff46);
	6'd23 : lut12_out7 = -(coeff42+coeff43+coeff44+coeff46);
	6'd24 : lut12_out7 = -(coeff45+coeff46);
	6'd25 : lut12_out7 = -(coeff42+coeff45+coeff46);
	6'd26 : lut12_out7 = -(coeff43+coeff45+coeff46);
	6'd27 : lut12_out7 = -(coeff42+coeff43+coeff45+coeff46);
	6'd28 : lut12_out7 = -(coeff44+coeff45+coeff46);
	6'd29 : lut12_out7 = -(coeff42+coeff44+coeff45+coeff46);
	6'd30 : lut12_out7 = -(coeff43+coeff44+coeff45+coeff46);
	6'd31 : lut12_out7 = -(coeff42+coeff43+coeff44+coeff45+coeff46);
	6'd32 : lut12_out7 = -(coeff47);
	6'd33 : lut12_out7 = -(coeff42+coeff47);
	6'd34 : lut12_out7 = -(coeff43+coeff47);
	6'd35 : lut12_out7 = -(coeff42+coeff43+coeff47);
	6'd36 : lut12_out7 = -(coeff44+coeff47);
	6'd37 : lut12_out7 = -(coeff42+coeff44+coeff47);
	6'd38 : lut12_out7 = -(coeff43+coeff44+coeff47);
	6'd39 : lut12_out7 = -(coeff42+coeff43+coeff44+coeff47);
	6'd40 : lut12_out7 = -(coeff45+coeff47);
	6'd41 : lut12_out7 = -(coeff42+coeff45+coeff47);
	6'd42 : lut12_out7 = -(coeff43+coeff45+coeff47);
	6'd43 : lut12_out7 = -(coeff42+coeff43+coeff45+coeff47);
	6'd44 : lut12_out7 = -(coeff44+coeff45+coeff47);
	6'd45 : lut12_out7 = -(coeff42+coeff44+coeff45+coeff47);
	6'd46 : lut12_out7 = -(coeff43+coeff44+coeff45+coeff47);
	6'd47 : lut12_out7 = -(coeff42+coeff43+coeff44+coeff45+coeff47);
	6'd48 : lut12_out7 = -(coeff46+coeff47);
	6'd49 : lut12_out7 = -(coeff42+coeff46+coeff47);
	6'd50 : lut12_out7 = -(coeff43+coeff46+coeff47);
	6'd51 : lut12_out7 = -(coeff42+coeff43+coeff46+coeff47);
	6'd52 : lut12_out7 = -(coeff44+coeff46+coeff47);
	6'd53 : lut12_out7 = -(coeff42+coeff44+coeff46+coeff47);
	6'd54 : lut12_out7 = -(coeff43+coeff44+coeff46+coeff47);
	6'd55 : lut12_out7 = -(coeff42+coeff43+coeff44+coeff46+coeff47);
	6'd56 : lut12_out7 = -(coeff45+coeff46+coeff47);
	6'd57 : lut12_out7 = -(coeff42+coeff45+coeff46+coeff47);
	6'd58 : lut12_out7 = -(coeff43+coeff45+coeff46+coeff47);
	6'd59 : lut12_out7 = -(coeff42+coeff43+coeff45+coeff46+coeff47);
	6'd60 : lut12_out7 = -(coeff44+coeff45+coeff46+coeff47);
	6'd61 : lut12_out7 = -(coeff42+coeff44+coeff45+coeff46+coeff47);
	6'd62 : lut12_out7 = -(coeff43+coeff44+coeff45+coeff46+coeff47);
	6'd63 : lut12_out7 = -(coeff42+coeff43+coeff44+coeff45+coeff46+coeff47);
	default :lut12_out7 = 0;
	endcase
end
always @(lut_addr12_8)
begin
	case(lut_addr12_8)
	6'd0 : lut12_out8 = (0);
	6'd1 : lut12_out8 = -(coeff48);
	6'd2 : lut12_out8 = -(coeff49);
	6'd3 : lut12_out8 = -(coeff48+coeff49);
	6'd4 : lut12_out8 = -(coeff50);
	6'd5 : lut12_out8 = -(coeff48+coeff50);
	6'd6 : lut12_out8 = -(coeff49+coeff50);
	6'd7 : lut12_out8 = -(coeff48+coeff49+coeff50);
	6'd8 : lut12_out8 = -(coeff51);
	6'd9 : lut12_out8 = -(coeff48+coeff51);
	6'd10 : lut12_out8 = -(coeff49+coeff51);
	6'd11 : lut12_out8 = -(coeff48+coeff49+coeff51);
	6'd12 : lut12_out8 = -(coeff50+coeff51);
	6'd13 : lut12_out8 = -(coeff48+coeff50+coeff51);
	6'd14 : lut12_out8 = -(coeff49+coeff50+coeff51);
	6'd15 : lut12_out8 = -(coeff48+coeff49+coeff50+coeff51);
	6'd16 : lut12_out8 = -(coeff52);
	6'd17 : lut12_out8 = -(coeff48+coeff52);
	6'd18 : lut12_out8 = -(coeff49+coeff52);
	6'd19 : lut12_out8 = -(coeff48+coeff49+coeff52);
	6'd20 : lut12_out8 = -(coeff50+coeff52);
	6'd21 : lut12_out8 = -(coeff48+coeff50+coeff52);
	6'd22 : lut12_out8 = -(coeff49+coeff50+coeff52);
	6'd23 : lut12_out8 = -(coeff48+coeff49+coeff50+coeff52);
	6'd24 : lut12_out8 = -(coeff51+coeff52);
	6'd25 : lut12_out8 = -(coeff48+coeff51+coeff52);
	6'd26 : lut12_out8 = -(coeff49+coeff51+coeff52);
	6'd27 : lut12_out8 = -(coeff48+coeff49+coeff51+coeff52);
	6'd28 : lut12_out8 = -(coeff50+coeff51+coeff52);
	6'd29 : lut12_out8 = -(coeff48+coeff50+coeff51+coeff52);
	6'd30 : lut12_out8 = -(coeff49+coeff50+coeff51+coeff52);
	6'd31 : lut12_out8 = -(coeff48+coeff49+coeff50+coeff51+coeff52);
	6'd32 : lut12_out8 = -(coeff53);
	6'd33 : lut12_out8 = -(coeff48+coeff53);
	6'd34 : lut12_out8 = -(coeff49+coeff53);
	6'd35 : lut12_out8 = -(coeff48+coeff49+coeff53);
	6'd36 : lut12_out8 = -(coeff50+coeff53);
	6'd37 : lut12_out8 = -(coeff48+coeff50+coeff53);
	6'd38 : lut12_out8 = -(coeff49+coeff50+coeff53);
	6'd39 : lut12_out8 = -(coeff48+coeff49+coeff50+coeff53);
	6'd40 : lut12_out8 = -(coeff51+coeff53);
	6'd41 : lut12_out8 = -(coeff48+coeff51+coeff53);
	6'd42 : lut12_out8 = -(coeff49+coeff51+coeff53);
	6'd43 : lut12_out8 = -(coeff48+coeff49+coeff51+coeff53);
	6'd44 : lut12_out8 = -(coeff50+coeff51+coeff53);
	6'd45 : lut12_out8 = -(coeff48+coeff50+coeff51+coeff53);
	6'd46 : lut12_out8 = -(coeff49+coeff50+coeff51+coeff53);
	6'd47 : lut12_out8 = -(coeff48+coeff49+coeff50+coeff51+coeff53);
	6'd48 : lut12_out8 = -(coeff52+coeff53);
	6'd49 : lut12_out8 = -(coeff48+coeff52+coeff53);
	6'd50 : lut12_out8 = -(coeff49+coeff52+coeff53);
	6'd51 : lut12_out8 = -(coeff48+coeff49+coeff52+coeff53);
	6'd52 : lut12_out8 = -(coeff50+coeff52+coeff53);
	6'd53 : lut12_out8 = -(coeff48+coeff50+coeff52+coeff53);
	6'd54 : lut12_out8 = -(coeff49+coeff50+coeff52+coeff53);
	6'd55 : lut12_out8 = -(coeff48+coeff49+coeff50+coeff52+coeff53);
	6'd56 : lut12_out8 = -(coeff51+coeff52+coeff53);
	6'd57 : lut12_out8 = -(coeff48+coeff51+coeff52+coeff53);
	6'd58 : lut12_out8 = -(coeff49+coeff51+coeff52+coeff53);
	6'd59 : lut12_out8 = -(coeff48+coeff49+coeff51+coeff52+coeff53);
	6'd60 : lut12_out8 = -(coeff50+coeff51+coeff52+coeff53);
	6'd61 : lut12_out8 = -(coeff48+coeff50+coeff51+coeff52+coeff53);
	6'd62 : lut12_out8 = -(coeff49+coeff50+coeff51+coeff52+coeff53);
	6'd63 : lut12_out8 = -(coeff48+coeff49+coeff50+coeff51+coeff52+coeff53);
	default :lut12_out8 = 0;
	endcase
end
always @(lut_addr12_9)
begin
	case(lut_addr12_9)
	6'd0 : lut12_out9 = (0);
	6'd1 : lut12_out9 = -(coeff54);
	6'd2 : lut12_out9 = -(coeff55);
	6'd3 : lut12_out9 = -(coeff54+coeff55);
	6'd4 : lut12_out9 = -(coeff56);
	6'd5 : lut12_out9 = -(coeff54+coeff56);
	6'd6 : lut12_out9 = -(coeff55+coeff56);
	6'd7 : lut12_out9 = -(coeff54+coeff55+coeff56);
	6'd8 : lut12_out9 = -(coeff57);
	6'd9 : lut12_out9 = -(coeff54+coeff57);
	6'd10 : lut12_out9 = -(coeff55+coeff57);
	6'd11 : lut12_out9 = -(coeff54+coeff55+coeff57);
	6'd12 : lut12_out9 = -(coeff56+coeff57);
	6'd13 : lut12_out9 = -(coeff54+coeff56+coeff57);
	6'd14 : lut12_out9 = -(coeff55+coeff56+coeff57);
	6'd15 : lut12_out9 = -(coeff54+coeff55+coeff56+coeff57);
	6'd16 : lut12_out9 = -(coeff58);
	6'd17 : lut12_out9 = -(coeff54+coeff58);
	6'd18 : lut12_out9 = -(coeff55+coeff58);
	6'd19 : lut12_out9 = -(coeff54+coeff55+coeff58);
	6'd20 : lut12_out9 = -(coeff56+coeff58);
	6'd21 : lut12_out9 = -(coeff54+coeff56+coeff58);
	6'd22 : lut12_out9 = -(coeff55+coeff56+coeff58);
	6'd23 : lut12_out9 = -(coeff54+coeff55+coeff56+coeff58);
	6'd24 : lut12_out9 = -(coeff57+coeff58);
	6'd25 : lut12_out9 = -(coeff54+coeff57+coeff58);
	6'd26 : lut12_out9 = -(coeff55+coeff57+coeff58);
	6'd27 : lut12_out9 = -(coeff54+coeff55+coeff57+coeff58);
	6'd28 : lut12_out9 = -(coeff56+coeff57+coeff58);
	6'd29 : lut12_out9 = -(coeff54+coeff56+coeff57+coeff58);
	6'd30 : lut12_out9 = -(coeff55+coeff56+coeff57+coeff58);
	6'd31 : lut12_out9 = -(coeff54+coeff55+coeff56+coeff57+coeff58);
	6'd32 : lut12_out9 = -(coeff59);
	6'd33 : lut12_out9 = -(coeff54+coeff59);
	6'd34 : lut12_out9 = -(coeff55+coeff59);
	6'd35 : lut12_out9 = -(coeff54+coeff55+coeff59);
	6'd36 : lut12_out9 = -(coeff56+coeff59);
	6'd37 : lut12_out9 = -(coeff54+coeff56+coeff59);
	6'd38 : lut12_out9 = -(coeff55+coeff56+coeff59);
	6'd39 : lut12_out9 = -(coeff54+coeff55+coeff56+coeff59);
	6'd40 : lut12_out9 = -(coeff57+coeff59);
	6'd41 : lut12_out9 = -(coeff54+coeff57+coeff59);
	6'd42 : lut12_out9 = -(coeff55+coeff57+coeff59);
	6'd43 : lut12_out9 = -(coeff54+coeff55+coeff57+coeff59);
	6'd44 : lut12_out9 = -(coeff56+coeff57+coeff59);
	6'd45 : lut12_out9 = -(coeff54+coeff56+coeff57+coeff59);
	6'd46 : lut12_out9 = -(coeff55+coeff56+coeff57+coeff59);
	6'd47 : lut12_out9 = -(coeff54+coeff55+coeff56+coeff57+coeff59);
	6'd48 : lut12_out9 = -(coeff58+coeff59);
	6'd49 : lut12_out9 = -(coeff54+coeff58+coeff59);
	6'd50 : lut12_out9 = -(coeff55+coeff58+coeff59);
	6'd51 : lut12_out9 = -(coeff54+coeff55+coeff58+coeff59);
	6'd52 : lut12_out9 = -(coeff56+coeff58+coeff59);
	6'd53 : lut12_out9 = -(coeff54+coeff56+coeff58+coeff59);
	6'd54 : lut12_out9 = -(coeff55+coeff56+coeff58+coeff59);
	6'd55 : lut12_out9 = -(coeff54+coeff55+coeff56+coeff58+coeff59);
	6'd56 : lut12_out9 = -(coeff57+coeff58+coeff59);
	6'd57 : lut12_out9 = -(coeff54+coeff57+coeff58+coeff59);
	6'd58 : lut12_out9 = -(coeff55+coeff57+coeff58+coeff59);
	6'd59 : lut12_out9 = -(coeff54+coeff55+coeff57+coeff58+coeff59);
	6'd60 : lut12_out9 = -(coeff56+coeff57+coeff58+coeff59);
	6'd61 : lut12_out9 = -(coeff54+coeff56+coeff57+coeff58+coeff59);
	6'd62 : lut12_out9 = -(coeff55+coeff56+coeff57+coeff58+coeff59);
	6'd63 : lut12_out9 = -(coeff54+coeff55+coeff56+coeff57+coeff58+coeff59);
	default :lut12_out9 = 0;
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
	lut0_6 <= lut0_out6;
end
always @(posedge clk)
begin
	lut0_7 <= lut0_out7;
end
always @(posedge clk)
begin
	lut0_8 <= lut0_out8;
end
always @(posedge clk)
begin
	lut0_9 <= lut0_out9;
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
	lut1_6 <= lut1_out6;
end
always @(posedge clk)
begin
	lut1_7 <= lut1_out7;
end
always @(posedge clk)
begin
	lut1_8 <= lut1_out8;
end
always @(posedge clk)
begin
	lut1_9 <= lut1_out9;
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
	lut2_6 <= lut2_out6;
end
always @(posedge clk)
begin
	lut2_7 <= lut2_out7;
end
always @(posedge clk)
begin
	lut2_8 <= lut2_out8;
end
always @(posedge clk)
begin
	lut2_9 <= lut2_out9;
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
	lut3_6 <= lut3_out6;
end
always @(posedge clk)
begin
	lut3_7 <= lut3_out7;
end
always @(posedge clk)
begin
	lut3_8 <= lut3_out8;
end
always @(posedge clk)
begin
	lut3_9 <= lut3_out9;
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
	lut4_6 <= lut4_out6;
end
always @(posedge clk)
begin
	lut4_7 <= lut4_out7;
end
always @(posedge clk)
begin
	lut4_8 <= lut4_out8;
end
always @(posedge clk)
begin
	lut4_9 <= lut4_out9;
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
	lut5_6 <= lut5_out6;
end
always @(posedge clk)
begin
	lut5_7 <= lut5_out7;
end
always @(posedge clk)
begin
	lut5_8 <= lut5_out8;
end
always @(posedge clk)
begin
	lut5_9 <= lut5_out9;
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
	lut6_6 <= lut6_out6;
end
always @(posedge clk)
begin
	lut6_7 <= lut6_out7;
end
always @(posedge clk)
begin
	lut6_8 <= lut6_out8;
end
always @(posedge clk)
begin
	lut6_9 <= lut6_out9;
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
	lut7_6 <= lut7_out6;
end
always @(posedge clk)
begin
	lut7_7 <= lut7_out7;
end
always @(posedge clk)
begin
	lut7_8 <= lut7_out8;
end
always @(posedge clk)
begin
	lut7_9 <= lut7_out9;
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
	lut8_6 <= lut8_out6;
end
always @(posedge clk)
begin
	lut8_7 <= lut8_out7;
end
always @(posedge clk)
begin
	lut8_8 <= lut8_out8;
end
always @(posedge clk)
begin
	lut8_9 <= lut8_out9;
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
	lut9_6 <= lut9_out6;
end
always @(posedge clk)
begin
	lut9_7 <= lut9_out7;
end
always @(posedge clk)
begin
	lut9_8 <= lut9_out8;
end
always @(posedge clk)
begin
	lut9_9 <= lut9_out9;
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
	lut10_6 <= lut10_out6;
end
always @(posedge clk)
begin
	lut10_7 <= lut10_out7;
end
always @(posedge clk)
begin
	lut10_8 <= lut10_out8;
end
always @(posedge clk)
begin
	lut10_9 <= lut10_out9;
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
	lut11_6 <= lut11_out6;
end
always @(posedge clk)
begin
	lut11_7 <= lut11_out7;
end
always @(posedge clk)
begin
	lut11_8 <= lut11_out8;
end
always @(posedge clk)
begin
	lut11_9 <= lut11_out9;
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
always @(posedge clk)
begin
	lut12_6 <= lut12_out6;
end
always @(posedge clk)
begin
	lut12_7 <= lut12_out7;
end
always @(posedge clk)
begin
	lut12_8 <= lut12_out8;
end
always @(posedge clk)
begin
	lut12_9 <= lut12_out9;
end





//shift0
wire [13:0]	level0_add0_X =  {{3{lut0_1[10]}}, lut0_1};
wire [13:0]	level0_add0_Y =  {{3{lut0_2[10]}}, lut0_2};
wire [13:0]	level0_add0_Z =  {{3{lut0_3[10]}}, lut0_3};
wire [13:0]	level0_add0_W =  {{2{lut0_4[11]}}, lut0_4};
wire [13:0]	level0_add0_S;
wire [13:0]	level0_add0_C;
Adder_N #(.in_width(14)) Adder_N_inst0(
	.clk(clk),
	.X(level0_add0_X),
	.Y(level0_add0_Y),	
	.Z(level0_add0_Z),
	.W(level0_add0_W),
	.S(level0_add0_S),
	.C(level0_add0_C),
	.COUT()
);
//shift0
wire [14:0]	level0_add1_X =  {{2{lut0_0[12]}}, lut0_0};
wire [14:0]	level0_add1_Y =  {{3{lut0_5[11]}}, lut0_5};
wire [14:0]	level0_add1_Z =  {{3{lut0_6[11]}}, lut0_6};
wire [14:0]	level0_add1_W =  {{2{lut0_7[12]}}, lut0_7};
wire [14:0]	level0_add1_S;
wire [14:0]	level0_add1_C;
Adder_N #(.in_width(15)) Adder_N_inst1(
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
wire [19:0]	level0_add2_X =  {{6{lut0_8[13]}}, lut0_8};
wire [19:0]	level0_add2_Y =  {{3{lut0_9[16]}}, lut0_9};
wire [19:0]	level0_add2_Z =  {{5{lut1_8[13]}}, lut1_8, 1'b0};
wire [19:0]	level0_add2_W =  {{2{lut1_9[16]}}, lut1_9, 1'b0};
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
//shift1
wire [13:0]	level0_add3_X = {{3{lut1_1[10]}}, lut1_1};
wire [13:0]	level0_add3_Y = {{3{lut1_2[10]}}, lut1_2};
wire [13:0]	level0_add3_Z = {{3{lut1_3[10]}}, lut1_3};
wire [13:0]	level0_add3_W = {{2{lut1_4[11]}}, lut1_4};
wire [13:0]	level0_add3_S;
wire [13:0]	level0_add3_C;
Adder_N #(.in_width(14)) Adder_N_inst3(
	.clk(clk),
	.X(level0_add3_X),
	.Y(level0_add3_Y),
	.Z(level0_add3_Z),
	.W(level0_add3_W),
	.S(level0_add3_S),
	.C(level0_add3_C),
	.COUT()
);
//shift1
wire [14:0]	level0_add4_X = {{2{lut1_0[12]}}, lut1_0};
wire [14:0]	level0_add4_Y = {{3{lut1_5[11]}}, lut1_5};
wire [14:0]	level0_add4_Z = {{3{lut1_6[11]}}, lut1_6};
wire [14:0]	level0_add4_W = {{2{lut1_7[12]}}, lut1_7};
wire [14:0]	level0_add4_S;
wire [14:0]	level0_add4_C;
Adder_N #(.in_width(15)) Adder_N_inst4(
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
wire [13:0]	level0_add5_X = {{3{lut2_1[10]}}, lut2_1};
wire [13:0]	level0_add5_Y = {{3{lut2_2[10]}}, lut2_2};
wire [13:0]	level0_add5_Z = {{3{lut2_3[10]}}, lut2_3};
wire [13:0]	level0_add5_W = {{2{lut2_4[11]}}, lut2_4};
wire [13:0]	level0_add5_S;
wire [13:0]	level0_add5_C;
Adder_N #(.in_width(14)) Adder_N_inst5(
	.clk(clk),
	.X(level0_add5_X),
	.Y(level0_add5_Y),
	.Z(level0_add5_Z),
	.W(level0_add5_W),
	.S(level0_add5_S),
	.C(level0_add5_C),
	.COUT()
);
//shift2
wire [14:0]	level0_add6_X = {{2{lut2_0[12]}}, lut2_0};
wire [14:0]	level0_add6_Y = {{3{lut2_5[11]}}, lut2_5};
wire [14:0]	level0_add6_Z = {{3{lut2_6[11]}}, lut2_6};
wire [14:0]	level0_add6_W = {{2{lut2_7[12]}}, lut2_7};
wire [14:0]	level0_add6_S;
wire [14:0]	level0_add6_C;
Adder_N #(.in_width(15)) Adder_N_inst6(
	.clk(clk),
	.X(level0_add6_X),
	.Y(level0_add6_Y),
	.Z(level0_add6_Z),
	.W(level0_add6_W),
	.S(level0_add6_S),
	.C(level0_add6_C),
	.COUT()
);
//shift2
wire [19:0]	level0_add7_X =  {{6{lut2_8[13]}}, lut2_8};
wire [19:0]	level0_add7_Y =  {{3{lut2_9[16]}}, lut2_9};
wire [19:0]	level0_add7_Z =  {{5{lut3_8[13]}}, lut3_8, 1'b0};
wire [19:0]	level0_add7_W =  {{2{lut3_9[16]}}, lut3_9, 1'b0};
wire [19:0]	level0_add7_S;
wire [19:0]	level0_add7_C;
Adder_N #(.in_width(20)) Adder_N_inst7(
	.clk(clk),
	.X(level0_add7_X),
	.Y(level0_add7_Y),	
	.Z(level0_add7_Z),
	.W(level0_add7_W),
	.S(level0_add7_S),
	.C(level0_add7_C),
	.COUT()
);
//shift3
wire [13:0]	level0_add8_X = {{3{lut3_1[10]}}, lut3_1};
wire [13:0]	level0_add8_Y = {{3{lut3_2[10]}}, lut3_2};
wire [13:0]	level0_add8_Z = {{3{lut3_3[10]}}, lut3_3};
wire [13:0]	level0_add8_W = {{2{lut3_4[11]}}, lut3_4};
wire [13:0]	level0_add8_S;
wire [13:0]	level0_add8_C;
Adder_N #(.in_width(14)) Adder_N_inst8(
	.clk(clk),
	.X(level0_add8_X),
	.Y(level0_add8_Y),
	.Z(level0_add8_Z),
	.W(level0_add8_W),
	.S(level0_add8_S),
	.C(level0_add8_C),
	.COUT()
);
//shift3
wire [14:0]	level0_add9_X = {{2{lut3_0[12]}}, lut3_0};
wire [14:0]	level0_add9_Y = {{3{lut3_5[11]}}, lut3_5};
wire [14:0]	level0_add9_Z = {{3{lut3_6[11]}}, lut3_6};
wire [14:0]	level0_add9_W = {{2{lut3_7[12]}}, lut3_7};
wire [14:0]	level0_add9_S;
wire [14:0]	level0_add9_C;
Adder_N #(.in_width(15)) Adder_N_inst9(
	.clk(clk),
	.X(level0_add9_X),
	.Y(level0_add9_Y),
	.Z(level0_add9_Z),
	.W(level0_add9_W),
	.S(level0_add9_S),
	.C(level0_add9_C),
	.COUT()
);
//shift4
wire [13:0]	level0_add10_X = {{3{lut4_1[10]}}, lut4_1};
wire [13:0]	level0_add10_Y = {{3{lut4_2[10]}}, lut4_2};
wire [13:0]	level0_add10_Z = {{3{lut4_3[10]}}, lut4_3};
wire [13:0]	level0_add10_W = {{2{lut4_4[11]}}, lut4_4};
wire [13:0]	level0_add10_S;
wire [13:0]	level0_add10_C;
Adder_N #(.in_width(14)) Adder_N_inst10(
	.clk(clk),
	.X(level0_add10_X),
	.Y(level0_add10_Y),
	.Z(level0_add10_Z),
	.W(level0_add10_W),
	.S(level0_add10_S),
	.C(level0_add10_C),
	.COUT()
);
//shift4
wire [14:0]	level0_add11_X = {{2{lut4_0[12]}}, lut4_0};
wire [14:0]	level0_add11_Y = {{3{lut4_5[11]}}, lut4_5};
wire [14:0]	level0_add11_Z = {{3{lut4_6[11]}}, lut4_6};
wire [14:0]	level0_add11_W = {{2{lut4_7[12]}}, lut4_7};
wire [14:0]	level0_add11_S;
wire [14:0]	level0_add11_C;
Adder_N #(.in_width(15)) Adder_N_inst11(
	.clk(clk),
	.X(level0_add11_X),
	.Y(level0_add11_Y),
	.Z(level0_add11_Z),
	.W(level0_add11_W),
	.S(level0_add11_S),
	.C(level0_add11_C),
	.COUT()
);
//shift4
wire [19:0]	level0_add12_X =  {{6{lut4_8[13]}}, lut4_8};
wire [19:0]	level0_add12_Y =  {{3{lut4_9[16]}}, lut4_9};
wire [19:0]	level0_add12_Z =  {{5{lut5_8[13]}}, lut5_8, 1'b0};
wire [19:0]	level0_add12_W =  {{2{lut5_9[16]}}, lut5_9, 1'b0};
wire [19:0]	level0_add12_S;
wire [19:0]	level0_add12_C;
Adder_N #(.in_width(20)) Adder_N_inst12(
	.clk(clk),
	.X(level0_add12_X),
	.Y(level0_add12_Y),	
	.Z(level0_add12_Z),
	.W(level0_add12_W),
	.S(level0_add12_S),
	.C(level0_add12_C),
	.COUT()
);
//shift5
wire [13:0]	level0_add13_X = {{3{lut5_1[10]}}, lut5_1};
wire [13:0]	level0_add13_Y = {{3{lut5_2[10]}}, lut5_2};
wire [13:0]	level0_add13_Z = {{3{lut5_3[10]}}, lut5_3};
wire [13:0]	level0_add13_W = {{2{lut5_4[11]}}, lut5_4};
wire [13:0]	level0_add13_S;
wire [13:0]	level0_add13_C;
Adder_N #(.in_width(14)) Adder_N_inst13(
	.clk(clk),
	.X(level0_add13_X),
	.Y(level0_add13_Y),
	.Z(level0_add13_Z),
	.W(level0_add13_W),
	.S(level0_add13_S),
	.C(level0_add13_C),
	.COUT()
);
//shift5
wire [14:0]	level0_add14_X = {{2{lut5_0[12]}}, lut5_0};
wire [14:0]	level0_add14_Y = {{3{lut5_5[11]}}, lut5_5};
wire [14:0]	level0_add14_Z = {{3{lut5_6[11]}}, lut5_6};
wire [14:0]	level0_add14_W = {{2{lut5_7[12]}}, lut5_7};
wire [14:0]	level0_add14_S;
wire [14:0]	level0_add14_C;
Adder_N #(.in_width(15)) Adder_N_inst14(
	.clk(clk),
	.X(level0_add14_X),
	.Y(level0_add14_Y),
	.Z(level0_add14_Z),
	.W(level0_add14_W),
	.S(level0_add14_S),
	.C(level0_add14_C),
	.COUT()
);
//shift6
wire [13:0]	level0_add15_X = {{3{lut6_1[10]}}, lut6_1};
wire [13:0]	level0_add15_Y = {{3{lut6_2[10]}}, lut6_2};
wire [13:0]	level0_add15_Z = {{3{lut6_3[10]}}, lut6_3};
wire [13:0]	level0_add15_W = {{2{lut6_4[11]}}, lut6_4};
wire [13:0]	level0_add15_S;
wire [13:0]	level0_add15_C;
Adder_N #(.in_width(14)) Adder_N_inst15(
	.clk(clk),
	.X(level0_add15_X),
	.Y(level0_add15_Y),
	.Z(level0_add15_Z),
	.W(level0_add15_W),
	.S(level0_add15_S),
	.C(level0_add15_C),
	.COUT()
);
//shift6
wire [14:0]	level0_add16_X = {{2{lut6_0[12]}}, lut6_0};
wire [14:0]	level0_add16_Y = {{3{lut6_5[11]}}, lut6_5};
wire [14:0]	level0_add16_Z = {{3{lut6_6[11]}}, lut6_6};
wire [14:0]	level0_add16_W = {{2{lut6_7[12]}}, lut6_7};
wire [14:0]	level0_add16_S;
wire [14:0]	level0_add16_C;
Adder_N #(.in_width(15)) Adder_N_inst16(
	.clk(clk),
	.X(level0_add16_X),
	.Y(level0_add16_Y),
	.Z(level0_add16_Z),
	.W(level0_add16_W),
	.S(level0_add16_S),
	.C(level0_add16_C),
	.COUT()
);
//shift6
wire [19:0]	level0_add17_X =  {{6{lut6_8[13]}}, lut6_8};
wire [19:0]	level0_add17_Y =  {{3{lut6_9[16]}}, lut6_9};
wire [19:0]	level0_add17_Z =  {{5{lut7_8[13]}}, lut7_8, 1'b0};
wire [19:0]	level0_add17_W =  {{2{lut7_9[16]}}, lut7_9, 1'b0};
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
//shift7
wire [13:0]	level0_add18_X = {{3{lut7_1[10]}}, lut7_1};
wire [13:0]	level0_add18_Y = {{3{lut7_2[10]}}, lut7_2};
wire [13:0]	level0_add18_Z = {{3{lut7_3[10]}}, lut7_3};
wire [13:0]	level0_add18_W = {{2{lut7_4[11]}}, lut7_4};
wire [13:0]	level0_add18_S;
wire [13:0]	level0_add18_C;
Adder_N #(.in_width(14)) Adder_N_inst18(
	.clk(clk),
	.X(level0_add18_X),
	.Y(level0_add18_Y),
	.Z(level0_add18_Z),
	.W(level0_add18_W),
	.S(level0_add18_S),
	.C(level0_add18_C),
	.COUT()
);
//shift7
wire [14:0]	level0_add19_X = {{2{lut7_0[12]}}, lut7_0};
wire [14:0]	level0_add19_Y = {{3{lut7_5[11]}}, lut7_5};
wire [14:0]	level0_add19_Z = {{3{lut7_6[11]}}, lut7_6};
wire [14:0]	level0_add19_W = {{2{lut7_7[12]}}, lut7_7};
wire [14:0]	level0_add19_S;
wire [14:0]	level0_add19_C;
Adder_N #(.in_width(15)) Adder_N_inst19(
	.clk(clk),
	.X(level0_add19_X),
	.Y(level0_add19_Y),
	.Z(level0_add19_Z),
	.W(level0_add19_W),
	.S(level0_add19_S),
	.C(level0_add19_C),
	.COUT()
);
//shift8
wire [13:0]	level0_add20_X = {{3{lut8_1[10]}}, lut8_1};
wire [13:0]	level0_add20_Y = {{3{lut8_2[10]}}, lut8_2};
wire [13:0]	level0_add20_Z = {{3{lut8_3[10]}}, lut8_3};
wire [13:0]	level0_add20_W = {{2{lut8_4[11]}}, lut8_4};
wire [13:0]	level0_add20_S;
wire [13:0]	level0_add20_C;
Adder_N #(.in_width(14)) Adder_N_inst20(
	.clk(clk),
	.X(level0_add20_X),
	.Y(level0_add20_Y),
	.Z(level0_add20_Z),
	.W(level0_add20_W),
	.S(level0_add20_S),
	.C(level0_add20_C),
	.COUT()
);
//shift8
wire [14:0]	level0_add21_X = {{2{lut8_0[12]}}, lut8_0};
wire [14:0]	level0_add21_Y = {{3{lut8_5[11]}}, lut8_5};
wire [14:0]	level0_add21_Z = {{3{lut8_6[11]}}, lut8_6};
wire [14:0]	level0_add21_W = {{2{lut8_7[12]}}, lut8_7};
wire [14:0]	level0_add21_S;
wire [14:0]	level0_add21_C;
Adder_N #(.in_width(15)) Adder_N_inst21(
	.clk(clk),
	.X(level0_add21_X),
	.Y(level0_add21_Y),
	.Z(level0_add21_Z),
	.W(level0_add21_W),
	.S(level0_add21_S),
	.C(level0_add21_C),
	.COUT()
);
//shift8
wire [19:0]	level0_add22_X =  {{6{lut8_8[13]}}, lut8_8};
wire [19:0]	level0_add22_Y =  {{3{lut8_9[16]}}, lut8_9};
wire [19:0]	level0_add22_Z =  {{5{lut9_8[13]}}, lut9_8, 1'b0};
wire [19:0]	level0_add22_W =  {{2{lut9_9[16]}}, lut9_9, 1'b0};
wire [19:0]	level0_add22_S;
wire [19:0]	level0_add22_C;
Adder_N #(.in_width(20)) Adder_N_inst22(
	.clk(clk),
	.X(level0_add22_X),
	.Y(level0_add22_Y),	
	.Z(level0_add22_Z),
	.W(level0_add22_W),
	.S(level0_add22_S),
	.C(level0_add22_C),
	.COUT()
);
//shift9
wire [13:0]	level0_add23_X = {{3{lut9_1[10]}}, lut9_1};
wire [13:0]	level0_add23_Y = {{3{lut9_2[10]}}, lut9_2};
wire [13:0]	level0_add23_Z = {{3{lut9_3[10]}}, lut9_3};
wire [13:0]	level0_add23_W = {{2{lut9_4[11]}}, lut9_4};
wire [13:0]	level0_add23_S;
wire [13:0]	level0_add23_C;
Adder_N #(.in_width(14)) Adder_N_inst23(
	.clk(clk),
	.X(level0_add23_X),
	.Y(level0_add23_Y),
	.Z(level0_add23_Z),
	.W(level0_add23_W),
	.S(level0_add23_S),
	.C(level0_add23_C),
	.COUT()
);
//shift9
wire [14:0]	level0_add24_X = {{2{lut9_0[12]}}, lut9_0};
wire [14:0]	level0_add24_Y = {{3{lut9_5[11]}}, lut9_5};
wire [14:0]	level0_add24_Z = {{3{lut9_6[11]}}, lut9_6};
wire [14:0]	level0_add24_W = {{2{lut9_7[12]}}, lut9_7};
wire [14:0]	level0_add24_S;
wire [14:0]	level0_add24_C;
Adder_N #(.in_width(15)) Adder_N_inst24(
	.clk(clk),
	.X(level0_add24_X),
	.Y(level0_add24_Y),
	.Z(level0_add24_Z),
	.W(level0_add24_W),
	.S(level0_add24_S),
	.C(level0_add24_C),
	.COUT()
);
//shift10
wire [13:0]	level0_add25_X = {{3{lut10_1[10]}}, lut10_1};
wire [13:0]	level0_add25_Y = {{3{lut10_2[10]}}, lut10_2};
wire [13:0]	level0_add25_Z = {{3{lut10_3[10]}}, lut10_3};
wire [13:0]	level0_add25_W = {{2{lut10_4[11]}}, lut10_4};
wire [13:0]	level0_add25_S;
wire [13:0]	level0_add25_C;
Adder_N #(.in_width(14)) Adder_N_inst25(
	.clk(clk),
	.X(level0_add25_X),
	.Y(level0_add25_Y),
	.Z(level0_add25_Z),
	.W(level0_add25_W),
	.S(level0_add25_S),
	.C(level0_add25_C),
	.COUT()
);
//shift10
wire [14:0]	level0_add26_X = {{2{lut10_0[12]}}, lut10_0};
wire [14:0]	level0_add26_Y = {{3{lut10_5[11]}}, lut10_5};
wire [14:0]	level0_add26_Z = {{3{lut10_6[11]}}, lut10_6};
wire [14:0]	level0_add26_W = {{2{lut10_7[12]}}, lut10_7};
wire [14:0]	level0_add26_S;
wire [14:0]	level0_add26_C;
Adder_N #(.in_width(15)) Adder_N_inst26(
	.clk(clk),
	.X(level0_add26_X),
	.Y(level0_add26_Y),
	.Z(level0_add26_Z),
	.W(level0_add26_W),
	.S(level0_add26_S),
	.C(level0_add26_C),
	.COUT()
);
//shift10
wire [19:0]	level0_add27_X =  {{6{lut10_8[13]}}, lut10_8};
wire [19:0]	level0_add27_Y =  {{3{lut10_9[16]}}, lut10_9};
wire [19:0]	level0_add27_Z =  {{5{lut11_8[13]}}, lut11_8, 1'b0};
wire [19:0]	level0_add27_W =  {{2{lut11_9[16]}}, lut11_9, 1'b0};
wire [19:0]	level0_add27_S;
wire [19:0]	level0_add27_C;
Adder_N #(.in_width(20)) Adder_N_inst27(
	.clk(clk),
	.X(level0_add27_X),
	.Y(level0_add27_Y),	
	.Z(level0_add27_Z),
	.W(level0_add27_W),
	.S(level0_add27_S),
	.C(level0_add27_C),
	.COUT()
);
//shift11
wire [13:0]	level0_add28_X = {{3{lut11_1[10]}}, lut11_1};
wire [13:0]	level0_add28_Y = {{3{lut11_2[10]}}, lut11_2};
wire [13:0]	level0_add28_Z = {{3{lut11_3[10]}}, lut11_3};
wire [13:0]	level0_add28_W = {{2{lut11_4[11]}}, lut11_4};
wire [13:0]	level0_add28_S;
wire [13:0]	level0_add28_C;
Adder_N #(.in_width(14)) Adder_N_inst28(
	.clk(clk),
	.X(level0_add28_X),
	.Y(level0_add28_Y),
	.Z(level0_add28_Z),
	.W(level0_add28_W),
	.S(level0_add28_S),
	.C(level0_add28_C),
	.COUT()
);
//shift11
wire [14:0]	level0_add29_X = {{2{lut11_0[12]}}, lut11_0};
wire [14:0]	level0_add29_Y = {{3{lut11_5[11]}}, lut11_5};
wire [14:0]	level0_add29_Z = {{3{lut11_6[11]}}, lut11_6};
wire [14:0]	level0_add29_W = {{2{lut11_7[12]}}, lut11_7};
wire [14:0]	level0_add29_S;
wire [14:0]	level0_add29_C;
Adder_N #(.in_width(15)) Adder_N_inst29(
	.clk(clk),
	.X(level0_add29_X),
	.Y(level0_add29_Y),
	.Z(level0_add29_Z),
	.W(level0_add29_W),
	.S(level0_add29_S),
	.C(level0_add29_C),
	.COUT()
);
//shift12
wire [13:0]	level0_add30_X = {{3{lut12_1[10]}}, lut12_1};
wire [13:0]	level0_add30_Y = {{3{lut12_2[10]}}, lut12_2};
wire [13:0]	level0_add30_Z = {{3{lut12_3[10]}}, lut12_3};
wire [13:0]	level0_add30_W = {{2{lut12_4[11]}}, lut12_4};
wire [13:0]	level0_add30_S;
wire [13:0]	level0_add30_C;
Adder_N #(.in_width(14)) Adder_N_inst30(
	.clk(clk),
	.X(level0_add30_X),
	.Y(level0_add30_Y),
	.Z(level0_add30_Z),
	.W(level0_add30_W),
	.S(level0_add30_S),
	.C(level0_add30_C),
	.COUT()
);
//shift12
wire [14:0]	level0_add31_X = {{2{lut12_0[12]}}, lut12_0};
wire [14:0]	level0_add31_Y = {{3{lut12_5[11]}}, lut12_5};
wire [14:0]	level0_add31_Z = {{3{lut12_6[11]}}, lut12_6};
wire [14:0]	level0_add31_W = {{2{lut12_7[12]}}, lut12_7};
wire [14:0]	level0_add31_S;
wire [14:0]	level0_add31_C;
Adder_N #(.in_width(15)) Adder_N_inst31(
	.clk(clk),
	.X(level0_add31_X),
	.Y(level0_add31_Y),
	.Z(level0_add31_Z),
	.W(level0_add31_W),
	.S(level0_add31_S),
	.C(level0_add31_C),
	.COUT()
);
//shift12
reg [17:0] level0_add32;
always @(posedge clk)
	level0_add32 <= $signed({{3{lut12_8[13]}}, lut12_8}) + $signed(lut12_9);

	


//shift0
wire [17:0]	level1_add0_X =  {{4{level0_add0_S[13]}}, level0_add0_S};
wire [17:0]	level1_add0_Y =  {{3{level0_add0_C[13]}}, level0_add0_C, {1{1'b0}}};
wire [17:0]	level1_add0_Z =  {{3{level0_add1_S[14]}}, level0_add1_S};
wire [17:0]	level1_add0_W =  {{2{level0_add1_C[14]}}, level0_add1_C, {1{1'b0}}};
wire [17:0]	level1_add0_S;
wire [17:0]	level1_add0_C;
Adder_N #(.in_width(18)) Adder_N_inst32(
	.clk(clk),
	.X(level1_add0_X),
	.Y(level1_add0_Y),	
	.Z(level1_add0_Z),
	.W(level1_add0_W),
	.S(level1_add0_S),
	.C(level1_add0_C),
	.COUT()
);
//shift1
wire [17:0]	level1_add1_X =  {{4{level0_add3_S[13]}}, level0_add3_S};
wire [17:0]	level1_add1_Y =  {{3{level0_add3_C[13]}}, level0_add3_C, {1{1'b0}}};
wire [17:0]	level1_add1_Z =  {{3{level0_add4_S[14]}}, level0_add4_S};
wire [17:0]	level1_add1_W =  {{2{level0_add4_C[14]}}, level0_add4_C, {1{1'b0}}};
wire [17:0]	level1_add1_S;
wire [17:0]	level1_add1_C;
Adder_N #(.in_width(18)) Adder_N_inst33(
	.clk(clk),
	.X(level1_add1_X),
	.Y(level1_add1_Y),	
	.Z(level1_add1_Z),
	.W(level1_add1_W),
	.S(level1_add1_S),
	.C(level1_add1_C),
	.COUT()
);
//shift2
wire [17:0]	level1_add2_X =  {{4{level0_add5_S[13]}}, level0_add5_S};
wire [17:0]	level1_add2_Y =  {{3{level0_add5_C[13]}}, level0_add5_C, {1{1'b0}}};
wire [17:0]	level1_add2_Z =  {{3{level0_add6_S[14]}}, level0_add6_S};
wire [17:0]	level1_add2_W =  {{2{level0_add6_C[14]}}, level0_add6_C, {1{1'b0}}};
wire [17:0]	level1_add2_S;
wire [17:0]	level1_add2_C;
Adder_N #(.in_width(18)) Adder_N_inst34(
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
wire [24:0]	level1_add3_X =  {{5{level0_add2_S[19]}}, level0_add2_S};
wire [24:0]	level1_add3_Y =  {{4{level0_add2_C[19]}}, level0_add2_C, {1{1'b0}}};
wire [24:0]	level1_add3_Z =  {{3{level0_add7_S[19]}}, level0_add7_S, {2{1'b0}}};
wire [24:0]	level1_add3_W =  {{2{level0_add7_C[19]}}, level0_add7_C, {1{1'b0}}, {2{1'b0}}};
wire [24:0]	level1_add3_S;
wire [24:0]	level1_add3_C;
Adder_N #(.in_width(25)) Adder_N_inst35(
	.clk(clk),
	.X(level1_add3_X),
	.Y(level1_add3_Y),	
	.Z(level1_add3_Z),
	.W(level1_add3_W),
	.S(level1_add3_S),
	.C(level1_add3_C),
	.COUT()
);
//shift3
wire [17:0]	level1_add4_X =  {{4{level0_add8_S[13]}}, level0_add8_S};
wire [17:0]	level1_add4_Y =  {{3{level0_add8_C[13]}}, level0_add8_C, {1{1'b0}}};
wire [17:0]	level1_add4_Z =  {{3{level0_add9_S[14]}}, level0_add9_S};
wire [17:0]	level1_add4_W =  {{2{level0_add9_C[14]}}, level0_add9_C, {1{1'b0}}};
wire [17:0]	level1_add4_S;
wire [17:0]	level1_add4_C;
Adder_N #(.in_width(18)) Adder_N_inst36(
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
wire [17:0]	level1_add5_X =  {{4{level0_add10_S[13]}}, level0_add10_S};
wire [17:0]	level1_add5_Y =  {{3{level0_add10_C[13]}}, level0_add10_C, {1{1'b0}}};
wire [17:0]	level1_add5_Z =  {{3{level0_add11_S[14]}}, level0_add11_S};
wire [17:0]	level1_add5_W =  {{2{level0_add11_C[14]}}, level0_add11_C, {1{1'b0}}};
wire [17:0]	level1_add5_S;
wire [17:0]	level1_add5_C;
Adder_N #(.in_width(18)) Adder_N_inst37(
	.clk(clk),
	.X(level1_add5_X),
	.Y(level1_add5_Y),	
	.Z(level1_add5_Z),
	.W(level1_add5_W),
	.S(level1_add5_S),
	.C(level1_add5_C),
	.COUT()
);
//shift5
wire [17:0]	level1_add6_X =  {{4{level0_add13_S[13]}}, level0_add13_S};
wire [17:0]	level1_add6_Y =  {{3{level0_add13_C[13]}}, level0_add13_C, {1{1'b0}}};
wire [17:0]	level1_add6_Z =  {{3{level0_add14_S[14]}}, level0_add14_S};
wire [17:0]	level1_add6_W =  {{2{level0_add14_C[14]}}, level0_add14_C, {1{1'b0}}};
wire [17:0]	level1_add6_S;
wire [17:0]	level1_add6_C;
Adder_N #(.in_width(18)) Adder_N_inst38(
	.clk(clk),
	.X(level1_add6_X),
	.Y(level1_add6_Y),	
	.Z(level1_add6_Z),
	.W(level1_add6_W),
	.S(level1_add6_S),
	.C(level1_add6_C),
	.COUT()
);
//shift4
wire [24:0]	level1_add7_X =  {{5{level0_add12_S[19]}}, level0_add12_S};
wire [24:0]	level1_add7_Y =  {{4{level0_add12_C[19]}}, level0_add12_C, {1{1'b0}}};
wire [24:0]	level1_add7_Z =  {{3{level0_add17_S[19]}}, level0_add17_S, {2{1'b0}}};
wire [24:0]	level1_add7_W =  {{2{level0_add17_C[19]}}, level0_add17_C, {1{1'b0}}, {2{1'b0}}};
wire [24:0]	level1_add7_S;
wire [24:0]	level1_add7_C;
Adder_N #(.in_width(25)) Adder_N_inst39(
	.clk(clk),
	.X(level1_add7_X),
	.Y(level1_add7_Y),	
	.Z(level1_add7_Z),
	.W(level1_add7_W),
	.S(level1_add7_S),
	.C(level1_add7_C),
	.COUT()
);
//shift6
wire [17:0]	level1_add8_X =  {{4{level0_add15_S[13]}}, level0_add15_S};
wire [17:0]	level1_add8_Y =  {{3{level0_add15_C[13]}}, level0_add15_C, {1{1'b0}}};
wire [17:0]	level1_add8_Z =  {{3{level0_add16_S[14]}}, level0_add16_S};
wire [17:0]	level1_add8_W =  {{2{level0_add16_C[14]}}, level0_add16_C, {1{1'b0}}};
wire [17:0]	level1_add8_S;
wire [17:0]	level1_add8_C;
Adder_N #(.in_width(18)) Adder_N_inst40(
	.clk(clk),
	.X(level1_add8_X),
	.Y(level1_add8_Y),	
	.Z(level1_add8_Z),
	.W(level1_add8_W),
	.S(level1_add8_S),
	.C(level1_add8_C),
	.COUT()
);
//shift7
wire [17:0]	level1_add9_X =  {{4{level0_add18_S[13]}}, level0_add18_S};
wire [17:0]	level1_add9_Y =  {{3{level0_add18_C[13]}}, level0_add18_C, {1{1'b0}}};
wire [17:0]	level1_add9_Z =  {{3{level0_add19_S[14]}}, level0_add19_S};
wire [17:0]	level1_add9_W =  {{2{level0_add19_C[14]}}, level0_add19_C, {1{1'b0}}};
wire [17:0]	level1_add9_S;
wire [17:0]	level1_add9_C;
Adder_N #(.in_width(18)) Adder_N_inst41(
	.clk(clk),
	.X(level1_add9_X),
	.Y(level1_add9_Y),	
	.Z(level1_add9_Z),
	.W(level1_add9_W),
	.S(level1_add9_S),
	.C(level1_add9_C),
	.COUT()
);
//shift8
wire [17:0]	level1_add10_X =  {{4{level0_add20_S[13]}}, level0_add20_S};
wire [17:0]	level1_add10_Y =  {{3{level0_add20_C[13]}}, level0_add20_C, {1{1'b0}}};
wire [17:0]	level1_add10_Z =  {{3{level0_add21_S[14]}}, level0_add21_S};
wire [17:0]	level1_add10_W =  {{2{level0_add21_C[14]}}, level0_add21_C, {1{1'b0}}};
wire [17:0]	level1_add10_S;
wire [17:0]	level1_add10_C;
Adder_N #(.in_width(18)) Adder_N_inst42(
	.clk(clk),
	.X(level1_add10_X),
	.Y(level1_add10_Y),	
	.Z(level1_add10_Z),
	.W(level1_add10_W),
	.S(level1_add10_S),
	.C(level1_add10_C),
	.COUT()
);
//shift8
wire [24:0]	level1_add11_X =  {{5{level0_add22_S[19]}}, level0_add22_S};
wire [24:0]	level1_add11_Y =  {{4{level0_add22_C[19]}}, level0_add22_C, {1{1'b0}}};
wire [24:0]	level1_add11_Z =  {{3{level0_add27_S[19]}}, level0_add27_S, {2{1'b0}}};
wire [24:0]	level1_add11_W =  {{2{level0_add27_C[19]}}, level0_add27_C, {1{1'b0}}, {2{1'b0}}};
wire [24:0]	level1_add11_S;
wire [24:0]	level1_add11_C;
Adder_N #(.in_width(25)) Adder_N_inst43(
	.clk(clk),
	.X(level1_add11_X),
	.Y(level1_add11_Y),	
	.Z(level1_add11_Z),
	.W(level1_add11_W),
	.S(level1_add11_S),
	.C(level1_add11_C),
	.COUT()
);
//shift9
wire [17:0]	level1_add12_X =  {{4{level0_add23_S[13]}}, level0_add23_S};
wire [17:0]	level1_add12_Y =  {{3{level0_add23_C[13]}}, level0_add23_C, {1{1'b0}}};
wire [17:0]	level1_add12_Z =  {{3{level0_add24_S[14]}}, level0_add24_S};
wire [17:0]	level1_add12_W =  {{2{level0_add24_C[14]}}, level0_add24_C, {1{1'b0}}};
wire [17:0]	level1_add12_S;
wire [17:0]	level1_add12_C;
Adder_N #(.in_width(18)) Adder_N_inst44(
	.clk(clk),
	.X(level1_add12_X),
	.Y(level1_add12_Y),	
	.Z(level1_add12_Z),
	.W(level1_add12_W),
	.S(level1_add12_S),
	.C(level1_add12_C),
	.COUT()
);
//shift10
wire [17:0]	level1_add13_X =  {{4{level0_add25_S[13]}}, level0_add25_S};
wire [17:0]	level1_add13_Y =  {{3{level0_add25_C[13]}}, level0_add25_C, {1{1'b0}}};
wire [17:0]	level1_add13_Z =  {{3{level0_add26_S[14]}}, level0_add26_S};
wire [17:0]	level1_add13_W =  {{2{level0_add26_C[14]}}, level0_add26_C, {1{1'b0}}};
wire [17:0]	level1_add13_S;
wire [17:0]	level1_add13_C;
Adder_N #(.in_width(18)) Adder_N_inst45(
	.clk(clk),
	.X(level1_add13_X),
	.Y(level1_add13_Y),	
	.Z(level1_add13_Z),
	.W(level1_add13_W),
	.S(level1_add13_S),
	.C(level1_add13_C),
	.COUT()
);
//shift11
wire [17:0]	level1_add14_X =  {{4{level0_add28_S[13]}}, level0_add28_S};
wire [17:0]	level1_add14_Y =  {{3{level0_add28_C[13]}}, level0_add28_C, {1{1'b0}}};
wire [17:0]	level1_add14_Z =  {{3{level0_add29_S[14]}}, level0_add29_S};
wire [17:0]	level1_add14_W =  {{2{level0_add29_C[14]}}, level0_add29_C, {1{1'b0}}};
wire [17:0]	level1_add14_S;
wire [17:0]	level1_add14_C;
Adder_N #(.in_width(18)) Adder_N_inst46(
	.clk(clk),
	.X(level1_add14_X),
	.Y(level1_add14_Y),	
	.Z(level1_add14_Z),
	.W(level1_add14_W),
	.S(level1_add14_S),
	.C(level1_add14_C),
	.COUT()
);
//shift12
wire [17:0]	level1_add15_X =  {{4{level0_add30_S[13]}}, level0_add30_S};
wire [17:0]	level1_add15_Y =  {{3{level0_add30_C[13]}}, level0_add30_C, {1{1'b0}}};
wire [17:0]	level1_add15_Z =  {{3{level0_add31_S[14]}}, level0_add31_S};
wire [17:0]	level1_add15_W =  {{2{level0_add31_C[14]}}, level0_add31_C, {1{1'b0}}};
wire [17:0]	level1_add15_S;
wire [17:0]	level1_add15_C;
Adder_N #(.in_width(18)) Adder_N_inst47(
	.clk(clk),
	.X(level1_add15_X),
	.Y(level1_add15_Y),	
	.Z(level1_add15_Z),
	.W(level1_add15_W),
	.S(level1_add15_S),
	.C(level1_add15_C),
	.COUT()
);
//shift12
reg [17:0] level1_add16;
always @(posedge clk)
	level1_add16 <= level0_add32;
	

//shift0
wire [21:0]	level2_add0_X =  {{4{level1_add0_S[17]}}, level1_add0_S};
wire [21:0]	level2_add0_Y =  {{3{level1_add0_C[17]}}, level1_add0_C, {1{1'b0}}};
wire [21:0]	level2_add0_Z =  {{3{level1_add1_S[17]}}, level1_add1_S, {1{1'b0}}};
wire [21:0]	level2_add0_W =  {{2{level1_add1_C[17]}}, level1_add1_C, {1{1'b0}}, {1{1'b0}}};
wire [21:0]	level2_add0_S;
wire [21:0]	level2_add0_C;
Adder_N #(.in_width(22)) Adder_N_inst48(
	.clk(clk),
	.X(level2_add0_X),
	.Y(level2_add0_Y),	
	.Z(level2_add0_Z),
	.W(level2_add0_W),
	.S(level2_add0_S),
	.C(level2_add0_C),
	.COUT()
);
//shift2
wire [21:0]	level2_add1_X =  {{4{level1_add2_S[17]}}, level1_add2_S};
wire [21:0]	level2_add1_Y =  {{3{level1_add2_C[17]}}, level1_add2_C, {1{1'b0}}};
wire [21:0]	level2_add1_Z =  {{3{level1_add4_S[17]}}, level1_add4_S, {1{1'b0}}};
wire [21:0]	level2_add1_W =  {{2{level1_add4_C[17]}}, level1_add4_C, {1{1'b0}}, {1{1'b0}}};
wire [21:0]	level2_add1_S;
wire [21:0]	level2_add1_C;
Adder_N #(.in_width(22)) Adder_N_inst49(
	.clk(clk),
	.X(level2_add1_X),
	.Y(level2_add1_Y),	
	.Z(level2_add1_Z),
	.W(level2_add1_W),
	.S(level2_add1_S),
	.C(level2_add1_C),
	.COUT()
);
//shift4
wire [21:0]	level2_add2_X =  {{4{level1_add5_S[17]}}, level1_add5_S};
wire [21:0]	level2_add2_Y =  {{3{level1_add5_C[17]}}, level1_add5_C, {1{1'b0}}};
wire [21:0]	level2_add2_Z =  {{3{level1_add6_S[17]}}, level1_add6_S, {1{1'b0}}};
wire [21:0]	level2_add2_W =  {{2{level1_add6_C[17]}}, level1_add6_C, {1{1'b0}}, {1{1'b0}}};
wire [21:0]	level2_add2_S;
wire [21:0]	level2_add2_C;
Adder_N #(.in_width(22)) Adder_N_inst50(
	.clk(clk),
	.X(level2_add2_X),
	.Y(level2_add2_Y),	
	.Z(level2_add2_Z),
	.W(level2_add2_W),
	.S(level2_add2_S),
	.C(level2_add2_C),
	.COUT()
);
//shift6
wire [21:0]	level2_add3_X =  {{4{level1_add8_S[17]}}, level1_add8_S};
wire [21:0]	level2_add3_Y =  {{3{level1_add8_C[17]}}, level1_add8_C, {1{1'b0}}};
wire [21:0]	level2_add3_Z =  {{3{level1_add9_S[17]}}, level1_add9_S, {1{1'b0}}};
wire [21:0]	level2_add3_W =  {{2{level1_add9_C[17]}}, level1_add9_C, {1{1'b0}}, {1{1'b0}}};
wire [21:0]	level2_add3_S;
wire [21:0]	level2_add3_C;
Adder_N #(.in_width(22)) Adder_N_inst51(
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
wire [21:0]	level2_add4_X =  {{4{level1_add10_S[17]}}, level1_add10_S};
wire [21:0]	level2_add4_Y =  {{3{level1_add10_C[17]}}, level1_add10_C, {1{1'b0}}};
wire [21:0]	level2_add4_Z =  {{3{level1_add12_S[17]}}, level1_add12_S, {1{1'b0}}};
wire [21:0]	level2_add4_W =  {{2{level1_add12_C[17]}}, level1_add12_C, {1{1'b0}}, {1{1'b0}}};
wire [21:0]	level2_add4_S;
wire [21:0]	level2_add4_C;
Adder_N #(.in_width(22)) Adder_N_inst52(
	.clk(clk),
	.X(level2_add4_X),
	.Y(level2_add4_Y),	
	.Z(level2_add4_Z),
	.W(level2_add4_W),
	.S(level2_add4_S),
	.C(level2_add4_C),
	.COUT()
);
//shift10
wire [21:0]	level2_add5_X =  {{4{level1_add13_S[17]}}, level1_add13_S};
wire [21:0]	level2_add5_Y =  {{3{level1_add13_C[17]}}, level1_add13_C, {1{1'b0}}};
wire [21:0]	level2_add5_Z =  {{3{level1_add14_S[17]}}, level1_add14_S, {1{1'b0}}};
wire [21:0]	level2_add5_W =  {{2{level1_add14_C[17]}}, level1_add14_C, {1{1'b0}}, {1{1'b0}}};
wire [21:0]	level2_add5_S;
wire [21:0]	level2_add5_C;
Adder_N #(.in_width(22)) Adder_N_inst53(
	.clk(clk),
	.X(level2_add5_X),
	.Y(level2_add5_Y),	
	.Z(level2_add5_Z),
	.W(level2_add5_W),
	.S(level2_add5_S),
	.C(level2_add5_C),
	.COUT()
);
//shift0
wire [29:0]	level2_add6_X =  {{5{level1_add3_S[24]}}, level1_add3_S};
wire [29:0]	level2_add6_Y =  {{4{level1_add3_C[24]}}, level1_add3_C, {1{1'b0}}};
wire [29:0]	level2_add6_Z =  {{1{level1_add7_S[24]}}, level1_add7_S, {4{1'b0}}};
wire [29:0]	level2_add6_W =  {level1_add7_C, {1{1'b0}}, {4{1'b0}}};
wire [29:0]	level2_add6_S;
wire [29:0]	level2_add6_C;
Adder_N #(.in_width(30)) Adder_N_inst54(
	.clk(clk),
	.X(level2_add6_X),
	.Y(level2_add6_Y),	
	.Z(level2_add6_Z),
	.W(level2_add6_W),
	.S(level2_add6_S),
	.C(level2_add6_C),
	.COUT()
);
//shift8
wire [27:0]	level2_add7_X =  {{3{level1_add11_S[24]}}, level1_add11_S};
wire [27:0]	level2_add7_Y =  {{2{level1_add11_C[24]}}, level1_add11_C, {1{1'b0}}};
wire [27:0]	level2_add7_Z =  {{6{level1_add15_S[17]}}, level1_add15_S, {4{1'b0}}};
wire [27:0]	level2_add7_W =  {{5{level1_add15_C[17]}}, level1_add15_C, {1{1'b0}}, {4{1'b0}}};
wire [27:0]	level2_add7_S;
wire [27:0]	level2_add7_C;
Adder_N #(.in_width(28)) Adder_N_inst55(
	.clk(clk),
	.X(level2_add7_X),
	.Y(level2_add7_Y),	
	.Z(level2_add7_Z),
	.W(level2_add7_W),
	.S(level2_add7_S),
	.C(level2_add7_C),
	.COUT()
);
//shift12
reg [17:0] level2_add8;
always @(posedge clk)
	level2_add8 <= level1_add16;


//shift0
wire [26:0]	level3_add0_X =  {{5{level2_add0_S[21]}}, level2_add0_S};
wire [26:0]	level3_add0_Y =  {{4{level2_add0_C[21]}}, level2_add0_C, {1{1'b0}}};
wire [26:0]	level3_add0_Z =  {{3{level2_add1_S[21]}}, level2_add1_S, {2{1'b0}}};
wire [26:0]	level3_add0_W =  {{2{level2_add1_C[21]}}, level2_add1_C, 1'b0, {2{1'b0}}};
wire [26:0]	level3_add0_S;
wire [26:0]	level3_add0_C;
Adder_N #(.in_width(27)) Adder_N_inst56(
	.clk(clk),
	.X(level3_add0_X),
	.Y(level3_add0_Y),	
	.Z(level3_add0_Z),
	.W(level3_add0_W),
	.S(level3_add0_S),
	.C(level3_add0_C),
	.COUT()
);
//shift4
wire [26:0]	level3_add1_X =  {{5{level2_add2_S[21]}}, level2_add2_S};
wire [26:0]	level3_add1_Y =  {{4{level2_add2_C[21]}}, level2_add2_C, {1{1'b0}}};
wire [26:0]	level3_add1_Z =  {{3{level2_add3_S[21]}}, level2_add3_S, {2{1'b0}}};
wire [26:0]	level3_add1_W =  {{2{level2_add3_C[21]}}, level2_add3_C, 1'b0, {2{1'b0}}};
wire [26:0]	level3_add1_S;
wire [26:0]	level3_add1_C;
Adder_N #(.in_width(27)) Adder_N_inst57(
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
wire [26:0]	level3_add2_X =  {{5{level2_add4_S[21]}}, level2_add4_S};
wire [26:0]	level3_add2_Y =  {{4{level2_add4_C[21]}}, level2_add4_C, {1{1'b0}}};
wire [26:0]	level3_add2_Z =  {{3{level2_add5_S[21]}}, level2_add5_S, {2{1'b0}}};
wire [26:0]	level3_add2_W =  {{2{level2_add5_C[21]}}, level2_add5_C, 1'b0, {2{1'b0}}};
wire [26:0]	level3_add2_S;
wire [26:0]	level3_add2_C;
Adder_N #(.in_width(27)) Adder_N_inst58(
	.clk(clk),
	.X(level3_add2_X),
	.Y(level3_add2_Y),	
	.Z(level3_add2_Z),
	.W(level3_add2_W),
	.S(level3_add2_S),
	.C(level3_add2_C),
	.COUT()
);
//shift0
wire [29:0]	level3_add3_X =  {level2_add6_S};
wire [29:0]	level3_add3_Y =  {level2_add6_C[28:0], {1{1'b0}}};
wire [29:0]	level3_add3_Z =  {level2_add7_S[21:0], {8{1'b0}}};
wire [29:0]	level3_add3_W =  {level2_add7_C[20:0], 1'b0, {8{1'b0}}};
wire [29:0]	level3_add3_S;
wire [29:0]	level3_add3_C;
Adder_N #(.in_width(30)) Adder_N_inst59(
	.clk(clk),
	.X(level3_add3_X),
	.Y(level3_add3_Y),	
	.Z(level3_add3_Z),
	.W(level3_add3_W),
	.S(level3_add3_S),
	.C(level3_add3_C),
	.COUT()
);
//shift12
reg [17:0] level3_add4;
always @(posedge clk)
	level3_add4 <= level2_add8;

//shift0
wire [29:0]	level4_add0_X =  {{3{level3_add0_S[26]}}, level3_add0_S};
wire [29:0]	level4_add0_Y =  {{2{level3_add0_C[26]}}, level3_add0_C, {1{1'b0}}};
wire [29:0]	level4_add0_Z =  {level3_add1_S[25:0], {4{1'b0}}};
wire [29:0]	level4_add0_W =  {level3_add1_C[24:0], 1'b0, {4{1'b0}}};
wire [29:0]	level4_add0_S;
wire [29:0]	level4_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst60(
	.clk(clk),
	.X(level4_add0_X),
	.Y(level4_add0_Y),	
	.Z(level4_add0_Z),
	.W(level4_add0_W),
	.S(level4_add0_S),
	.C(level4_add0_C),
	.COUT()
);
//shift0
wire [29:0]	level4_add1_X =  {level3_add3_S};
wire [29:0]	level4_add1_Y =  {level3_add3_C[28:0], {1{1'b0}}};
wire [29:0]	level4_add1_Z =  {level3_add2_S[21:0], {8{1'b0}}};
wire [29:0]	level4_add1_W =  {level3_add2_C[20:0], 1'b0, {8{1'b0}}};
wire [29:0]	level4_add1_S;
wire [29:0]	level4_add1_C;
Adder_N #(.in_width(30)) Adder_N_inst61(
	.clk(clk),
	.X(level4_add1_X),
	.Y(level4_add1_Y),	
	.Z(level4_add1_Z),
	.W(level4_add1_W),
	.S(level4_add1_S),
	.C(level4_add1_C),
	.COUT()
);
//shift12
reg [17:0] level4_add2;
always @(posedge clk)
	level4_add2 <= level3_add4;

//shift0
wire [29:0]	level5_add0_X =  {level4_add0_S};
wire [29:0]	level5_add0_Y =  {level4_add0_C[28:0], 1'b0};
wire [29:0]	level5_add0_Z =  {level4_add1_S};
wire [29:0]	level5_add0_W =  {level4_add1_C[28:0], 1'b0};
wire [29:0]	level5_add0_S;
wire [29:0]	level5_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst62(
	.clk(clk),
	.X(level5_add0_X),
	.Y(level5_add0_Y),	
	.Z(level5_add0_Z),
	.W(level5_add0_W),
	.S(level5_add0_S),
	.C(level5_add0_C),
	.COUT()
);
//shift12
reg [17:0] level5_add1;
always @(posedge clk)
	level5_add1 <= level4_add2;

//shift0
wire [29:0]	level6_add0_X =  {level5_add0_S};
wire [29:0]	level6_add0_Y =  {level5_add0_C[28:0], 1'b0};
wire [29:0]	level6_add0_Z =  {level5_add1, {12{1'b0}}};
wire [29:0]	level6_add0_W =  30'd0;
wire [29:0]	level6_add0_S;
wire [29:0]	level6_add0_C;
Adder_N #(.in_width(30)) Adder_N_inst63(
	.clk(clk),
	.X(level6_add0_X),
	.Y(level6_add0_Y),	
	.Z(level6_add0_Z),
	.W(level6_add0_W),
	.S(level6_add0_S),
	.C(level6_add0_C),
	.COUT()
);
/*
reg	[31:0]	out_tmp;
always @(posedge clk)
	out_tmp <= $signed({level6_add0_S[29], level6_add0_S}) +$signed({level6_add0_C, 1'b0});
*/
wire	[31:0]	out_tmp = $signed({level6_add0_S[29], level6_add0_S}) +$signed({level6_add0_C, 1'b0});
assign filter_out = out_tmp[29:0];

endmodule