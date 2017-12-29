module FIR13(
input					clk,
input  signed [11:0]	filter_in,
output signed [29:0]	filter_out
);

parameter signed [16:0] coeff0 = 17'd259;
parameter signed [16:0] coeff1 = 17'd1548;
parameter signed [16:0] coeff2 = 17'd5206;
parameter signed [16:0] coeff3 = 17'd12097;
parameter signed [16:0] coeff4 = 17'd21272;
parameter signed [16:0] coeff5 = 17'd29454;
parameter signed [16:0] coeff6 = 17'd32768;

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
end

//wire signed [12:0] add0 = delay0 + delay12;
//wire signed [12:0] add1 = delay1 + delay11;
//wire signed [12:0] add2 = delay2 + delay10;
//wire signed [12:0] add3 = delay3 + delay9;
//wire signed [12:0] add4 = delay4 + delay8;
//wire signed [12:0] add5 = delay5 + delay7;
//wire signed [12:0] add6 = {delay6[11], delay6};
reg signed [12:0] add0;
reg signed [12:0] add1;
reg signed [12:0] add2;
reg signed [12:0] add3;
reg signed [12:0] add4;
reg signed [12:0] add5;
reg signed [12:0] add6;
always @(posedge clk)
begin
	add0 <= delay0 + delay12;
end
always @(posedge clk)
begin
	add1 <= delay1 + delay11;
end
always @(posedge clk)
begin
	add2 <= delay2 + delay10;
end
always @(posedge clk)
begin
	add3 <= delay3 + delay9;
end
always @(posedge clk)
begin
	add4 <= delay4 + delay8;
end
always @(posedge clk)
begin
	add5 <= delay5 + delay7;
end
always @(posedge clk)
begin
	add6 <= {delay6[11], delay6};
end



//-----------------------------------begin lut table-----------------------------------//
wire [6:0] lut_addr0_0 = {add6[0],add5[0],add4[0],add3[0],add2[0],add1[0],add0[0]};
reg  [17:0] lut0_out0, lut0_0;
wire [6:0] lut_addr1_0 = {add6[1],add5[1],add4[1],add3[1],add2[1],add1[1],add0[1]};
reg  [17:0] lut1_out0, lut1_0;
wire [6:0] lut_addr2_0 = {add6[2],add5[2],add4[2],add3[2],add2[2],add1[2],add0[2]};
reg  [17:0] lut2_out0, lut2_0;
wire [6:0] lut_addr3_0 = {add6[3],add5[3],add4[3],add3[3],add2[3],add1[3],add0[3]};
reg  [17:0] lut3_out0, lut3_0;
wire [6:0] lut_addr4_0 = {add6[4],add5[4],add4[4],add3[4],add2[4],add1[4],add0[4]};
reg  [17:0] lut4_out0, lut4_0;
wire [6:0] lut_addr5_0 = {add6[5],add5[5],add4[5],add3[5],add2[5],add1[5],add0[5]};
reg  [17:0] lut5_out0, lut5_0;
wire [6:0] lut_addr6_0 = {add6[6],add5[6],add4[6],add3[6],add2[6],add1[6],add0[6]};
reg  [17:0] lut6_out0, lut6_0;
wire [6:0] lut_addr7_0 = {add6[7],add5[7],add4[7],add3[7],add2[7],add1[7],add0[7]};
reg  [17:0] lut7_out0, lut7_0;
wire [6:0] lut_addr8_0 = {add6[8],add5[8],add4[8],add3[8],add2[8],add1[8],add0[8]};
reg  [17:0] lut8_out0, lut8_0;
wire [6:0] lut_addr9_0 = {add6[9],add5[9],add4[9],add3[9],add2[9],add1[9],add0[9]};
reg  [17:0] lut9_out0, lut9_0;
wire [6:0] lut_addr10_0 = {add6[10],add5[10],add4[10],add3[10],add2[10],add1[10],add0[10]};
reg  [17:0] lut10_out0, lut10_0;
wire [6:0] lut_addr11_0 = {add6[11],add5[11],add4[11],add3[11],add2[11],add1[11],add0[11]};
reg  [17:0] lut11_out0, lut11_0;
wire [6:0] lut_addr12_0 = {add6[12],add5[12],add4[12],add3[12],add2[12],add1[12],add0[12]};
reg  [17:0] lut12_out0, lut12_0;
always @(lut_addr0_0)
begin
	case(lut_addr0_0)
	7'd0 : lut0_out0 = (0);
	7'd1 : lut0_out0 = (coeff0);
	7'd2 : lut0_out0 = (coeff1);
	7'd3 : lut0_out0 = (coeff0+coeff1);
	7'd4 : lut0_out0 = (coeff2);
	7'd5 : lut0_out0 = (coeff0+coeff2);
	7'd6 : lut0_out0 = (coeff1+coeff2);
	7'd7 : lut0_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut0_out0 = (coeff3);
	7'd9 : lut0_out0 = (coeff0+coeff3);
	7'd10 : lut0_out0 = (coeff1+coeff3);
	7'd11 : lut0_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut0_out0 = (coeff2+coeff3);
	7'd13 : lut0_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut0_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut0_out0 = (coeff4);
	7'd17 : lut0_out0 = (coeff0+coeff4);
	7'd18 : lut0_out0 = (coeff1+coeff4);
	7'd19 : lut0_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut0_out0 = (coeff2+coeff4);
	7'd21 : lut0_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut0_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut0_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut0_out0 = (coeff3+coeff4);
	7'd25 : lut0_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut0_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut0_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut0_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut0_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut0_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut0_out0 = (coeff5);
	7'd33 : lut0_out0 = (coeff0+coeff5);
	7'd34 : lut0_out0 = (coeff1+coeff5);
	7'd35 : lut0_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut0_out0 = (coeff2+coeff5);
	7'd37 : lut0_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut0_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut0_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut0_out0 = (coeff3+coeff5);
	7'd41 : lut0_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut0_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut0_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut0_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut0_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut0_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut0_out0 = (coeff4+coeff5);
	7'd49 : lut0_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut0_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut0_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut0_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut0_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut0_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut0_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut0_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut0_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut0_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut0_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut0_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut0_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut0_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut0_out0 = (coeff6);
	7'd65 : lut0_out0 = (coeff0+coeff6);
	7'd66 : lut0_out0 = (coeff1+coeff6);
	7'd67 : lut0_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut0_out0 = (coeff2+coeff6);
	7'd69 : lut0_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut0_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut0_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut0_out0 = (coeff3+coeff6);
	7'd73 : lut0_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut0_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut0_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut0_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut0_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut0_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut0_out0 = (coeff4+coeff6);
	7'd81 : lut0_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut0_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut0_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut0_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut0_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut0_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut0_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut0_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut0_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut0_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut0_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut0_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut0_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut0_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut0_out0 = (coeff5+coeff6);
	7'd97 : lut0_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut0_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut0_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut0_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut0_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut0_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut0_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut0_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut0_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut0_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut0_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut0_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut0_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut0_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut0_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut0_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut0_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut0_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut0_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut0_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut0_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut0_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut0_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut0_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut0_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut0_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut0_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut0_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut0_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut0_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut0_out0 = 0;
	endcase
end
always @(lut_addr1_0)
begin
	case(lut_addr1_0)
	7'd0 : lut1_out0 = (0);
	7'd1 : lut1_out0 = (coeff0);
	7'd2 : lut1_out0 = (coeff1);
	7'd3 : lut1_out0 = (coeff0+coeff1);
	7'd4 : lut1_out0 = (coeff2);
	7'd5 : lut1_out0 = (coeff0+coeff2);
	7'd6 : lut1_out0 = (coeff1+coeff2);
	7'd7 : lut1_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut1_out0 = (coeff3);
	7'd9 : lut1_out0 = (coeff0+coeff3);
	7'd10 : lut1_out0 = (coeff1+coeff3);
	7'd11 : lut1_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut1_out0 = (coeff2+coeff3);
	7'd13 : lut1_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut1_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut1_out0 = (coeff4);
	7'd17 : lut1_out0 = (coeff0+coeff4);
	7'd18 : lut1_out0 = (coeff1+coeff4);
	7'd19 : lut1_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut1_out0 = (coeff2+coeff4);
	7'd21 : lut1_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut1_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut1_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut1_out0 = (coeff3+coeff4);
	7'd25 : lut1_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut1_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut1_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut1_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut1_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut1_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut1_out0 = (coeff5);
	7'd33 : lut1_out0 = (coeff0+coeff5);
	7'd34 : lut1_out0 = (coeff1+coeff5);
	7'd35 : lut1_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut1_out0 = (coeff2+coeff5);
	7'd37 : lut1_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut1_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut1_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut1_out0 = (coeff3+coeff5);
	7'd41 : lut1_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut1_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut1_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut1_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut1_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut1_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut1_out0 = (coeff4+coeff5);
	7'd49 : lut1_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut1_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut1_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut1_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut1_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut1_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut1_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut1_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut1_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut1_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut1_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut1_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut1_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut1_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut1_out0 = (coeff6);
	7'd65 : lut1_out0 = (coeff0+coeff6);
	7'd66 : lut1_out0 = (coeff1+coeff6);
	7'd67 : lut1_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut1_out0 = (coeff2+coeff6);
	7'd69 : lut1_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut1_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut1_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut1_out0 = (coeff3+coeff6);
	7'd73 : lut1_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut1_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut1_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut1_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut1_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut1_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut1_out0 = (coeff4+coeff6);
	7'd81 : lut1_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut1_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut1_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut1_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut1_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut1_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut1_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut1_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut1_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut1_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut1_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut1_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut1_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut1_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut1_out0 = (coeff5+coeff6);
	7'd97 : lut1_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut1_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut1_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut1_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut1_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut1_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut1_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut1_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut1_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut1_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut1_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut1_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut1_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut1_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut1_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut1_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut1_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut1_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut1_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut1_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut1_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut1_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut1_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut1_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut1_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut1_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut1_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut1_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut1_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut1_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut1_out0 = 0;
	endcase
end
always @(lut_addr2_0)
begin
	case(lut_addr2_0)
	7'd0 : lut2_out0 = (0);
	7'd1 : lut2_out0 = (coeff0);
	7'd2 : lut2_out0 = (coeff1);
	7'd3 : lut2_out0 = (coeff0+coeff1);
	7'd4 : lut2_out0 = (coeff2);
	7'd5 : lut2_out0 = (coeff0+coeff2);
	7'd6 : lut2_out0 = (coeff1+coeff2);
	7'd7 : lut2_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut2_out0 = (coeff3);
	7'd9 : lut2_out0 = (coeff0+coeff3);
	7'd10 : lut2_out0 = (coeff1+coeff3);
	7'd11 : lut2_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut2_out0 = (coeff2+coeff3);
	7'd13 : lut2_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut2_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut2_out0 = (coeff4);
	7'd17 : lut2_out0 = (coeff0+coeff4);
	7'd18 : lut2_out0 = (coeff1+coeff4);
	7'd19 : lut2_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut2_out0 = (coeff2+coeff4);
	7'd21 : lut2_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut2_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut2_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut2_out0 = (coeff3+coeff4);
	7'd25 : lut2_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut2_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut2_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut2_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut2_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut2_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut2_out0 = (coeff5);
	7'd33 : lut2_out0 = (coeff0+coeff5);
	7'd34 : lut2_out0 = (coeff1+coeff5);
	7'd35 : lut2_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut2_out0 = (coeff2+coeff5);
	7'd37 : lut2_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut2_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut2_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut2_out0 = (coeff3+coeff5);
	7'd41 : lut2_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut2_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut2_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut2_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut2_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut2_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut2_out0 = (coeff4+coeff5);
	7'd49 : lut2_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut2_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut2_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut2_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut2_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut2_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut2_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut2_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut2_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut2_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut2_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut2_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut2_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut2_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut2_out0 = (coeff6);
	7'd65 : lut2_out0 = (coeff0+coeff6);
	7'd66 : lut2_out0 = (coeff1+coeff6);
	7'd67 : lut2_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut2_out0 = (coeff2+coeff6);
	7'd69 : lut2_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut2_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut2_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut2_out0 = (coeff3+coeff6);
	7'd73 : lut2_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut2_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut2_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut2_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut2_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut2_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut2_out0 = (coeff4+coeff6);
	7'd81 : lut2_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut2_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut2_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut2_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut2_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut2_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut2_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut2_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut2_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut2_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut2_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut2_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut2_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut2_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut2_out0 = (coeff5+coeff6);
	7'd97 : lut2_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut2_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut2_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut2_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut2_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut2_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut2_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut2_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut2_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut2_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut2_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut2_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut2_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut2_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut2_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut2_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut2_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut2_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut2_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut2_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut2_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut2_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut2_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut2_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut2_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut2_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut2_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut2_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut2_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut2_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut2_out0 = 0;
	endcase
end
always @(lut_addr3_0)
begin
	case(lut_addr3_0)
	7'd0 : lut3_out0 = (0);
	7'd1 : lut3_out0 = (coeff0);
	7'd2 : lut3_out0 = (coeff1);
	7'd3 : lut3_out0 = (coeff0+coeff1);
	7'd4 : lut3_out0 = (coeff2);
	7'd5 : lut3_out0 = (coeff0+coeff2);
	7'd6 : lut3_out0 = (coeff1+coeff2);
	7'd7 : lut3_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut3_out0 = (coeff3);
	7'd9 : lut3_out0 = (coeff0+coeff3);
	7'd10 : lut3_out0 = (coeff1+coeff3);
	7'd11 : lut3_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut3_out0 = (coeff2+coeff3);
	7'd13 : lut3_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut3_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut3_out0 = (coeff4);
	7'd17 : lut3_out0 = (coeff0+coeff4);
	7'd18 : lut3_out0 = (coeff1+coeff4);
	7'd19 : lut3_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut3_out0 = (coeff2+coeff4);
	7'd21 : lut3_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut3_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut3_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut3_out0 = (coeff3+coeff4);
	7'd25 : lut3_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut3_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut3_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut3_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut3_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut3_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut3_out0 = (coeff5);
	7'd33 : lut3_out0 = (coeff0+coeff5);
	7'd34 : lut3_out0 = (coeff1+coeff5);
	7'd35 : lut3_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut3_out0 = (coeff2+coeff5);
	7'd37 : lut3_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut3_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut3_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut3_out0 = (coeff3+coeff5);
	7'd41 : lut3_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut3_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut3_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut3_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut3_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut3_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut3_out0 = (coeff4+coeff5);
	7'd49 : lut3_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut3_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut3_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut3_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut3_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut3_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut3_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut3_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut3_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut3_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut3_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut3_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut3_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut3_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut3_out0 = (coeff6);
	7'd65 : lut3_out0 = (coeff0+coeff6);
	7'd66 : lut3_out0 = (coeff1+coeff6);
	7'd67 : lut3_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut3_out0 = (coeff2+coeff6);
	7'd69 : lut3_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut3_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut3_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut3_out0 = (coeff3+coeff6);
	7'd73 : lut3_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut3_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut3_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut3_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut3_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut3_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut3_out0 = (coeff4+coeff6);
	7'd81 : lut3_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut3_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut3_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut3_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut3_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut3_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut3_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut3_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut3_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut3_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut3_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut3_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut3_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut3_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut3_out0 = (coeff5+coeff6);
	7'd97 : lut3_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut3_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut3_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut3_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut3_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut3_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut3_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut3_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut3_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut3_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut3_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut3_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut3_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut3_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut3_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut3_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut3_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut3_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut3_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut3_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut3_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut3_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut3_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut3_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut3_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut3_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut3_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut3_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut3_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut3_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut3_out0 = 0;
	endcase
end
always @(lut_addr4_0)
begin
	case(lut_addr4_0)
	7'd0 : lut4_out0 = (0);
	7'd1 : lut4_out0 = (coeff0);
	7'd2 : lut4_out0 = (coeff1);
	7'd3 : lut4_out0 = (coeff0+coeff1);
	7'd4 : lut4_out0 = (coeff2);
	7'd5 : lut4_out0 = (coeff0+coeff2);
	7'd6 : lut4_out0 = (coeff1+coeff2);
	7'd7 : lut4_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut4_out0 = (coeff3);
	7'd9 : lut4_out0 = (coeff0+coeff3);
	7'd10 : lut4_out0 = (coeff1+coeff3);
	7'd11 : lut4_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut4_out0 = (coeff2+coeff3);
	7'd13 : lut4_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut4_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut4_out0 = (coeff4);
	7'd17 : lut4_out0 = (coeff0+coeff4);
	7'd18 : lut4_out0 = (coeff1+coeff4);
	7'd19 : lut4_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut4_out0 = (coeff2+coeff4);
	7'd21 : lut4_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut4_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut4_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut4_out0 = (coeff3+coeff4);
	7'd25 : lut4_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut4_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut4_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut4_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut4_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut4_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut4_out0 = (coeff5);
	7'd33 : lut4_out0 = (coeff0+coeff5);
	7'd34 : lut4_out0 = (coeff1+coeff5);
	7'd35 : lut4_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut4_out0 = (coeff2+coeff5);
	7'd37 : lut4_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut4_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut4_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut4_out0 = (coeff3+coeff5);
	7'd41 : lut4_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut4_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut4_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut4_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut4_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut4_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut4_out0 = (coeff4+coeff5);
	7'd49 : lut4_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut4_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut4_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut4_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut4_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut4_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut4_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut4_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut4_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut4_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut4_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut4_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut4_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut4_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut4_out0 = (coeff6);
	7'd65 : lut4_out0 = (coeff0+coeff6);
	7'd66 : lut4_out0 = (coeff1+coeff6);
	7'd67 : lut4_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut4_out0 = (coeff2+coeff6);
	7'd69 : lut4_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut4_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut4_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut4_out0 = (coeff3+coeff6);
	7'd73 : lut4_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut4_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut4_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut4_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut4_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut4_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut4_out0 = (coeff4+coeff6);
	7'd81 : lut4_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut4_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut4_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut4_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut4_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut4_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut4_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut4_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut4_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut4_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut4_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut4_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut4_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut4_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut4_out0 = (coeff5+coeff6);
	7'd97 : lut4_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut4_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut4_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut4_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut4_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut4_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut4_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut4_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut4_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut4_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut4_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut4_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut4_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut4_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut4_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut4_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut4_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut4_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut4_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut4_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut4_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut4_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut4_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut4_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut4_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut4_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut4_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut4_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut4_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut4_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut4_out0 = 0;
	endcase
end
always @(lut_addr5_0)
begin
	case(lut_addr5_0)
	7'd0 : lut5_out0 = (0);
	7'd1 : lut5_out0 = (coeff0);
	7'd2 : lut5_out0 = (coeff1);
	7'd3 : lut5_out0 = (coeff0+coeff1);
	7'd4 : lut5_out0 = (coeff2);
	7'd5 : lut5_out0 = (coeff0+coeff2);
	7'd6 : lut5_out0 = (coeff1+coeff2);
	7'd7 : lut5_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut5_out0 = (coeff3);
	7'd9 : lut5_out0 = (coeff0+coeff3);
	7'd10 : lut5_out0 = (coeff1+coeff3);
	7'd11 : lut5_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut5_out0 = (coeff2+coeff3);
	7'd13 : lut5_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut5_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut5_out0 = (coeff4);
	7'd17 : lut5_out0 = (coeff0+coeff4);
	7'd18 : lut5_out0 = (coeff1+coeff4);
	7'd19 : lut5_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut5_out0 = (coeff2+coeff4);
	7'd21 : lut5_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut5_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut5_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut5_out0 = (coeff3+coeff4);
	7'd25 : lut5_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut5_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut5_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut5_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut5_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut5_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut5_out0 = (coeff5);
	7'd33 : lut5_out0 = (coeff0+coeff5);
	7'd34 : lut5_out0 = (coeff1+coeff5);
	7'd35 : lut5_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut5_out0 = (coeff2+coeff5);
	7'd37 : lut5_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut5_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut5_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut5_out0 = (coeff3+coeff5);
	7'd41 : lut5_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut5_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut5_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut5_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut5_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut5_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut5_out0 = (coeff4+coeff5);
	7'd49 : lut5_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut5_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut5_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut5_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut5_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut5_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut5_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut5_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut5_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut5_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut5_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut5_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut5_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut5_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut5_out0 = (coeff6);
	7'd65 : lut5_out0 = (coeff0+coeff6);
	7'd66 : lut5_out0 = (coeff1+coeff6);
	7'd67 : lut5_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut5_out0 = (coeff2+coeff6);
	7'd69 : lut5_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut5_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut5_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut5_out0 = (coeff3+coeff6);
	7'd73 : lut5_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut5_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut5_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut5_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut5_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut5_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut5_out0 = (coeff4+coeff6);
	7'd81 : lut5_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut5_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut5_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut5_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut5_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut5_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut5_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut5_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut5_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut5_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut5_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut5_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut5_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut5_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut5_out0 = (coeff5+coeff6);
	7'd97 : lut5_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut5_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut5_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut5_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut5_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut5_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut5_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut5_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut5_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut5_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut5_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut5_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut5_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut5_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut5_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut5_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut5_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut5_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut5_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut5_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut5_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut5_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut5_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut5_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut5_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut5_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut5_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut5_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut5_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut5_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut5_out0 = 0;
	endcase
end
always @(lut_addr6_0)
begin
	case(lut_addr6_0)
	7'd0 : lut6_out0 = (0);
	7'd1 : lut6_out0 = (coeff0);
	7'd2 : lut6_out0 = (coeff1);
	7'd3 : lut6_out0 = (coeff0+coeff1);
	7'd4 : lut6_out0 = (coeff2);
	7'd5 : lut6_out0 = (coeff0+coeff2);
	7'd6 : lut6_out0 = (coeff1+coeff2);
	7'd7 : lut6_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut6_out0 = (coeff3);
	7'd9 : lut6_out0 = (coeff0+coeff3);
	7'd10 : lut6_out0 = (coeff1+coeff3);
	7'd11 : lut6_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut6_out0 = (coeff2+coeff3);
	7'd13 : lut6_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut6_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut6_out0 = (coeff4);
	7'd17 : lut6_out0 = (coeff0+coeff4);
	7'd18 : lut6_out0 = (coeff1+coeff4);
	7'd19 : lut6_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut6_out0 = (coeff2+coeff4);
	7'd21 : lut6_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut6_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut6_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut6_out0 = (coeff3+coeff4);
	7'd25 : lut6_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut6_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut6_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut6_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut6_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut6_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut6_out0 = (coeff5);
	7'd33 : lut6_out0 = (coeff0+coeff5);
	7'd34 : lut6_out0 = (coeff1+coeff5);
	7'd35 : lut6_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut6_out0 = (coeff2+coeff5);
	7'd37 : lut6_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut6_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut6_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut6_out0 = (coeff3+coeff5);
	7'd41 : lut6_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut6_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut6_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut6_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut6_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut6_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut6_out0 = (coeff4+coeff5);
	7'd49 : lut6_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut6_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut6_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut6_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut6_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut6_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut6_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut6_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut6_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut6_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut6_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut6_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut6_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut6_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut6_out0 = (coeff6);
	7'd65 : lut6_out0 = (coeff0+coeff6);
	7'd66 : lut6_out0 = (coeff1+coeff6);
	7'd67 : lut6_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut6_out0 = (coeff2+coeff6);
	7'd69 : lut6_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut6_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut6_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut6_out0 = (coeff3+coeff6);
	7'd73 : lut6_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut6_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut6_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut6_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut6_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut6_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut6_out0 = (coeff4+coeff6);
	7'd81 : lut6_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut6_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut6_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut6_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut6_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut6_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut6_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut6_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut6_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut6_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut6_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut6_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut6_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut6_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut6_out0 = (coeff5+coeff6);
	7'd97 : lut6_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut6_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut6_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut6_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut6_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut6_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut6_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut6_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut6_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut6_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut6_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut6_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut6_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut6_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut6_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut6_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut6_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut6_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut6_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut6_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut6_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut6_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut6_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut6_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut6_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut6_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut6_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut6_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut6_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut6_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut6_out0 = 0;
	endcase
end
always @(lut_addr7_0)
begin
	case(lut_addr7_0)
	7'd0 : lut7_out0 = (0);
	7'd1 : lut7_out0 = (coeff0);
	7'd2 : lut7_out0 = (coeff1);
	7'd3 : lut7_out0 = (coeff0+coeff1);
	7'd4 : lut7_out0 = (coeff2);
	7'd5 : lut7_out0 = (coeff0+coeff2);
	7'd6 : lut7_out0 = (coeff1+coeff2);
	7'd7 : lut7_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut7_out0 = (coeff3);
	7'd9 : lut7_out0 = (coeff0+coeff3);
	7'd10 : lut7_out0 = (coeff1+coeff3);
	7'd11 : lut7_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut7_out0 = (coeff2+coeff3);
	7'd13 : lut7_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut7_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut7_out0 = (coeff4);
	7'd17 : lut7_out0 = (coeff0+coeff4);
	7'd18 : lut7_out0 = (coeff1+coeff4);
	7'd19 : lut7_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut7_out0 = (coeff2+coeff4);
	7'd21 : lut7_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut7_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut7_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut7_out0 = (coeff3+coeff4);
	7'd25 : lut7_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut7_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut7_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut7_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut7_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut7_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut7_out0 = (coeff5);
	7'd33 : lut7_out0 = (coeff0+coeff5);
	7'd34 : lut7_out0 = (coeff1+coeff5);
	7'd35 : lut7_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut7_out0 = (coeff2+coeff5);
	7'd37 : lut7_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut7_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut7_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut7_out0 = (coeff3+coeff5);
	7'd41 : lut7_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut7_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut7_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut7_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut7_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut7_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut7_out0 = (coeff4+coeff5);
	7'd49 : lut7_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut7_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut7_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut7_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut7_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut7_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut7_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut7_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut7_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut7_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut7_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut7_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut7_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut7_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut7_out0 = (coeff6);
	7'd65 : lut7_out0 = (coeff0+coeff6);
	7'd66 : lut7_out0 = (coeff1+coeff6);
	7'd67 : lut7_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut7_out0 = (coeff2+coeff6);
	7'd69 : lut7_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut7_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut7_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut7_out0 = (coeff3+coeff6);
	7'd73 : lut7_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut7_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut7_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut7_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut7_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut7_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut7_out0 = (coeff4+coeff6);
	7'd81 : lut7_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut7_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut7_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut7_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut7_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut7_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut7_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut7_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut7_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut7_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut7_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut7_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut7_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut7_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut7_out0 = (coeff5+coeff6);
	7'd97 : lut7_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut7_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut7_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut7_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut7_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut7_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut7_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut7_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut7_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut7_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut7_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut7_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut7_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut7_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut7_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut7_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut7_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut7_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut7_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut7_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut7_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut7_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut7_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut7_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut7_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut7_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut7_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut7_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut7_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut7_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut7_out0 = 0;
	endcase
end
always @(lut_addr8_0)
begin
	case(lut_addr8_0)
	7'd0 : lut8_out0 = (0);
	7'd1 : lut8_out0 = (coeff0);
	7'd2 : lut8_out0 = (coeff1);
	7'd3 : lut8_out0 = (coeff0+coeff1);
	7'd4 : lut8_out0 = (coeff2);
	7'd5 : lut8_out0 = (coeff0+coeff2);
	7'd6 : lut8_out0 = (coeff1+coeff2);
	7'd7 : lut8_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut8_out0 = (coeff3);
	7'd9 : lut8_out0 = (coeff0+coeff3);
	7'd10 : lut8_out0 = (coeff1+coeff3);
	7'd11 : lut8_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut8_out0 = (coeff2+coeff3);
	7'd13 : lut8_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut8_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut8_out0 = (coeff4);
	7'd17 : lut8_out0 = (coeff0+coeff4);
	7'd18 : lut8_out0 = (coeff1+coeff4);
	7'd19 : lut8_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut8_out0 = (coeff2+coeff4);
	7'd21 : lut8_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut8_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut8_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut8_out0 = (coeff3+coeff4);
	7'd25 : lut8_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut8_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut8_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut8_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut8_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut8_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut8_out0 = (coeff5);
	7'd33 : lut8_out0 = (coeff0+coeff5);
	7'd34 : lut8_out0 = (coeff1+coeff5);
	7'd35 : lut8_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut8_out0 = (coeff2+coeff5);
	7'd37 : lut8_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut8_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut8_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut8_out0 = (coeff3+coeff5);
	7'd41 : lut8_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut8_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut8_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut8_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut8_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut8_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut8_out0 = (coeff4+coeff5);
	7'd49 : lut8_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut8_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut8_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut8_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut8_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut8_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut8_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut8_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut8_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut8_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut8_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut8_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut8_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut8_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut8_out0 = (coeff6);
	7'd65 : lut8_out0 = (coeff0+coeff6);
	7'd66 : lut8_out0 = (coeff1+coeff6);
	7'd67 : lut8_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut8_out0 = (coeff2+coeff6);
	7'd69 : lut8_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut8_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut8_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut8_out0 = (coeff3+coeff6);
	7'd73 : lut8_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut8_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut8_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut8_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut8_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut8_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut8_out0 = (coeff4+coeff6);
	7'd81 : lut8_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut8_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut8_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut8_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut8_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut8_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut8_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut8_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut8_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut8_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut8_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut8_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut8_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut8_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut8_out0 = (coeff5+coeff6);
	7'd97 : lut8_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut8_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut8_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut8_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut8_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut8_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut8_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut8_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut8_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut8_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut8_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut8_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut8_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut8_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut8_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut8_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut8_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut8_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut8_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut8_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut8_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut8_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut8_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut8_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut8_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut8_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut8_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut8_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut8_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut8_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut8_out0 = 0;
	endcase
end
always @(lut_addr9_0)
begin
	case(lut_addr9_0)
	7'd0 : lut9_out0 = (0);
	7'd1 : lut9_out0 = (coeff0);
	7'd2 : lut9_out0 = (coeff1);
	7'd3 : lut9_out0 = (coeff0+coeff1);
	7'd4 : lut9_out0 = (coeff2);
	7'd5 : lut9_out0 = (coeff0+coeff2);
	7'd6 : lut9_out0 = (coeff1+coeff2);
	7'd7 : lut9_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut9_out0 = (coeff3);
	7'd9 : lut9_out0 = (coeff0+coeff3);
	7'd10 : lut9_out0 = (coeff1+coeff3);
	7'd11 : lut9_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut9_out0 = (coeff2+coeff3);
	7'd13 : lut9_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut9_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut9_out0 = (coeff4);
	7'd17 : lut9_out0 = (coeff0+coeff4);
	7'd18 : lut9_out0 = (coeff1+coeff4);
	7'd19 : lut9_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut9_out0 = (coeff2+coeff4);
	7'd21 : lut9_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut9_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut9_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut9_out0 = (coeff3+coeff4);
	7'd25 : lut9_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut9_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut9_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut9_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut9_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut9_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut9_out0 = (coeff5);
	7'd33 : lut9_out0 = (coeff0+coeff5);
	7'd34 : lut9_out0 = (coeff1+coeff5);
	7'd35 : lut9_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut9_out0 = (coeff2+coeff5);
	7'd37 : lut9_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut9_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut9_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut9_out0 = (coeff3+coeff5);
	7'd41 : lut9_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut9_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut9_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut9_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut9_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut9_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut9_out0 = (coeff4+coeff5);
	7'd49 : lut9_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut9_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut9_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut9_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut9_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut9_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut9_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut9_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut9_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut9_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut9_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut9_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut9_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut9_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut9_out0 = (coeff6);
	7'd65 : lut9_out0 = (coeff0+coeff6);
	7'd66 : lut9_out0 = (coeff1+coeff6);
	7'd67 : lut9_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut9_out0 = (coeff2+coeff6);
	7'd69 : lut9_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut9_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut9_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut9_out0 = (coeff3+coeff6);
	7'd73 : lut9_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut9_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut9_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut9_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut9_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut9_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut9_out0 = (coeff4+coeff6);
	7'd81 : lut9_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut9_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut9_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut9_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut9_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut9_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut9_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut9_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut9_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut9_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut9_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut9_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut9_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut9_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut9_out0 = (coeff5+coeff6);
	7'd97 : lut9_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut9_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut9_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut9_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut9_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut9_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut9_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut9_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut9_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut9_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut9_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut9_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut9_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut9_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut9_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut9_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut9_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut9_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut9_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut9_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut9_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut9_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut9_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut9_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut9_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut9_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut9_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut9_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut9_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut9_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut9_out0 = 0;
	endcase
end
always @(lut_addr10_0)
begin
	case(lut_addr10_0)
	7'd0 : lut10_out0 = (0);
	7'd1 : lut10_out0 = (coeff0);
	7'd2 : lut10_out0 = (coeff1);
	7'd3 : lut10_out0 = (coeff0+coeff1);
	7'd4 : lut10_out0 = (coeff2);
	7'd5 : lut10_out0 = (coeff0+coeff2);
	7'd6 : lut10_out0 = (coeff1+coeff2);
	7'd7 : lut10_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut10_out0 = (coeff3);
	7'd9 : lut10_out0 = (coeff0+coeff3);
	7'd10 : lut10_out0 = (coeff1+coeff3);
	7'd11 : lut10_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut10_out0 = (coeff2+coeff3);
	7'd13 : lut10_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut10_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut10_out0 = (coeff4);
	7'd17 : lut10_out0 = (coeff0+coeff4);
	7'd18 : lut10_out0 = (coeff1+coeff4);
	7'd19 : lut10_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut10_out0 = (coeff2+coeff4);
	7'd21 : lut10_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut10_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut10_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut10_out0 = (coeff3+coeff4);
	7'd25 : lut10_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut10_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut10_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut10_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut10_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut10_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut10_out0 = (coeff5);
	7'd33 : lut10_out0 = (coeff0+coeff5);
	7'd34 : lut10_out0 = (coeff1+coeff5);
	7'd35 : lut10_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut10_out0 = (coeff2+coeff5);
	7'd37 : lut10_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut10_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut10_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut10_out0 = (coeff3+coeff5);
	7'd41 : lut10_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut10_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut10_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut10_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut10_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut10_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut10_out0 = (coeff4+coeff5);
	7'd49 : lut10_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut10_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut10_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut10_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut10_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut10_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut10_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut10_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut10_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut10_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut10_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut10_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut10_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut10_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut10_out0 = (coeff6);
	7'd65 : lut10_out0 = (coeff0+coeff6);
	7'd66 : lut10_out0 = (coeff1+coeff6);
	7'd67 : lut10_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut10_out0 = (coeff2+coeff6);
	7'd69 : lut10_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut10_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut10_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut10_out0 = (coeff3+coeff6);
	7'd73 : lut10_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut10_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut10_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut10_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut10_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut10_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut10_out0 = (coeff4+coeff6);
	7'd81 : lut10_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut10_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut10_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut10_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut10_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut10_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut10_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut10_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut10_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut10_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut10_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut10_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut10_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut10_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut10_out0 = (coeff5+coeff6);
	7'd97 : lut10_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut10_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut10_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut10_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut10_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut10_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut10_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut10_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut10_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut10_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut10_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut10_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut10_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut10_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut10_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut10_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut10_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut10_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut10_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut10_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut10_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut10_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut10_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut10_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut10_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut10_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut10_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut10_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut10_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut10_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut10_out0 = 0;
	endcase
end
always @(lut_addr11_0)
begin
	case(lut_addr11_0)
	7'd0 : lut11_out0 = (0);
	7'd1 : lut11_out0 = (coeff0);
	7'd2 : lut11_out0 = (coeff1);
	7'd3 : lut11_out0 = (coeff0+coeff1);
	7'd4 : lut11_out0 = (coeff2);
	7'd5 : lut11_out0 = (coeff0+coeff2);
	7'd6 : lut11_out0 = (coeff1+coeff2);
	7'd7 : lut11_out0 = (coeff0+coeff1+coeff2);
	7'd8 : lut11_out0 = (coeff3);
	7'd9 : lut11_out0 = (coeff0+coeff3);
	7'd10 : lut11_out0 = (coeff1+coeff3);
	7'd11 : lut11_out0 = (coeff0+coeff1+coeff3);
	7'd12 : lut11_out0 = (coeff2+coeff3);
	7'd13 : lut11_out0 = (coeff0+coeff2+coeff3);
	7'd14 : lut11_out0 = (coeff1+coeff2+coeff3);
	7'd15 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut11_out0 = (coeff4);
	7'd17 : lut11_out0 = (coeff0+coeff4);
	7'd18 : lut11_out0 = (coeff1+coeff4);
	7'd19 : lut11_out0 = (coeff0+coeff1+coeff4);
	7'd20 : lut11_out0 = (coeff2+coeff4);
	7'd21 : lut11_out0 = (coeff0+coeff2+coeff4);
	7'd22 : lut11_out0 = (coeff1+coeff2+coeff4);
	7'd23 : lut11_out0 = (coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut11_out0 = (coeff3+coeff4);
	7'd25 : lut11_out0 = (coeff0+coeff3+coeff4);
	7'd26 : lut11_out0 = (coeff1+coeff3+coeff4);
	7'd27 : lut11_out0 = (coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut11_out0 = (coeff2+coeff3+coeff4);
	7'd29 : lut11_out0 = (coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut11_out0 = (coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut11_out0 = (coeff5);
	7'd33 : lut11_out0 = (coeff0+coeff5);
	7'd34 : lut11_out0 = (coeff1+coeff5);
	7'd35 : lut11_out0 = (coeff0+coeff1+coeff5);
	7'd36 : lut11_out0 = (coeff2+coeff5);
	7'd37 : lut11_out0 = (coeff0+coeff2+coeff5);
	7'd38 : lut11_out0 = (coeff1+coeff2+coeff5);
	7'd39 : lut11_out0 = (coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut11_out0 = (coeff3+coeff5);
	7'd41 : lut11_out0 = (coeff0+coeff3+coeff5);
	7'd42 : lut11_out0 = (coeff1+coeff3+coeff5);
	7'd43 : lut11_out0 = (coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut11_out0 = (coeff2+coeff3+coeff5);
	7'd45 : lut11_out0 = (coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut11_out0 = (coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut11_out0 = (coeff4+coeff5);
	7'd49 : lut11_out0 = (coeff0+coeff4+coeff5);
	7'd50 : lut11_out0 = (coeff1+coeff4+coeff5);
	7'd51 : lut11_out0 = (coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut11_out0 = (coeff2+coeff4+coeff5);
	7'd53 : lut11_out0 = (coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut11_out0 = (coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut11_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut11_out0 = (coeff3+coeff4+coeff5);
	7'd57 : lut11_out0 = (coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut11_out0 = (coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut11_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut11_out0 = (coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut11_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut11_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut11_out0 = (coeff6);
	7'd65 : lut11_out0 = (coeff0+coeff6);
	7'd66 : lut11_out0 = (coeff1+coeff6);
	7'd67 : lut11_out0 = (coeff0+coeff1+coeff6);
	7'd68 : lut11_out0 = (coeff2+coeff6);
	7'd69 : lut11_out0 = (coeff0+coeff2+coeff6);
	7'd70 : lut11_out0 = (coeff1+coeff2+coeff6);
	7'd71 : lut11_out0 = (coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut11_out0 = (coeff3+coeff6);
	7'd73 : lut11_out0 = (coeff0+coeff3+coeff6);
	7'd74 : lut11_out0 = (coeff1+coeff3+coeff6);
	7'd75 : lut11_out0 = (coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut11_out0 = (coeff2+coeff3+coeff6);
	7'd77 : lut11_out0 = (coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut11_out0 = (coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut11_out0 = (coeff4+coeff6);
	7'd81 : lut11_out0 = (coeff0+coeff4+coeff6);
	7'd82 : lut11_out0 = (coeff1+coeff4+coeff6);
	7'd83 : lut11_out0 = (coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut11_out0 = (coeff2+coeff4+coeff6);
	7'd85 : lut11_out0 = (coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut11_out0 = (coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut11_out0 = (coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut11_out0 = (coeff3+coeff4+coeff6);
	7'd89 : lut11_out0 = (coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut11_out0 = (coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut11_out0 = (coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut11_out0 = (coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut11_out0 = (coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut11_out0 = (coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut11_out0 = (coeff5+coeff6);
	7'd97 : lut11_out0 = (coeff0+coeff5+coeff6);
	7'd98 : lut11_out0 = (coeff1+coeff5+coeff6);
	7'd99 : lut11_out0 = (coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut11_out0 = (coeff2+coeff5+coeff6);
	7'd101 : lut11_out0 = (coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut11_out0 = (coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut11_out0 = (coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut11_out0 = (coeff3+coeff5+coeff6);
	7'd105 : lut11_out0 = (coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut11_out0 = (coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut11_out0 = (coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut11_out0 = (coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut11_out0 = (coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut11_out0 = (coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut11_out0 = (coeff4+coeff5+coeff6);
	7'd113 : lut11_out0 = (coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut11_out0 = (coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut11_out0 = (coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut11_out0 = (coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut11_out0 = (coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut11_out0 = (coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut11_out0 = (coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut11_out0 = (coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut11_out0 = (coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut11_out0 = (coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut11_out0 = (coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut11_out0 = (coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut11_out0 = (coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut11_out0 = (coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut11_out0 = (coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	default :lut11_out0 = 0;
	endcase
end
always @(lut_addr12_0)
begin
	case(lut_addr12_0)
	7'd0 : lut12_out0 = (0);
	7'd1 : lut12_out0 = -(coeff0);
	7'd2 : lut12_out0 = -(coeff1);
	7'd3 : lut12_out0 = -(coeff0+coeff1);
	7'd4 : lut12_out0 = -(coeff2);
	7'd5 : lut12_out0 = -(coeff0+coeff2);
	7'd6 : lut12_out0 = -(coeff1+coeff2);
	7'd7 : lut12_out0 = -(coeff0+coeff1+coeff2);
	7'd8 : lut12_out0 = -(coeff3);
	7'd9 : lut12_out0 = -(coeff0+coeff3);
	7'd10 : lut12_out0 = -(coeff1+coeff3);
	7'd11 : lut12_out0 = -(coeff0+coeff1+coeff3);
	7'd12 : lut12_out0 = -(coeff2+coeff3);
	7'd13 : lut12_out0 = -(coeff0+coeff2+coeff3);
	7'd14 : lut12_out0 = -(coeff1+coeff2+coeff3);
	7'd15 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3);
	7'd16 : lut12_out0 = -(coeff4);
	7'd17 : lut12_out0 = -(coeff0+coeff4);
	7'd18 : lut12_out0 = -(coeff1+coeff4);
	7'd19 : lut12_out0 = -(coeff0+coeff1+coeff4);
	7'd20 : lut12_out0 = -(coeff2+coeff4);
	7'd21 : lut12_out0 = -(coeff0+coeff2+coeff4);
	7'd22 : lut12_out0 = -(coeff1+coeff2+coeff4);
	7'd23 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff4);
	7'd24 : lut12_out0 = -(coeff3+coeff4);
	7'd25 : lut12_out0 = -(coeff0+coeff3+coeff4);
	7'd26 : lut12_out0 = -(coeff1+coeff3+coeff4);
	7'd27 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff4);
	7'd28 : lut12_out0 = -(coeff2+coeff3+coeff4);
	7'd29 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff4);
	7'd30 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff4);
	7'd31 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff4);
	7'd32 : lut12_out0 = -(coeff5);
	7'd33 : lut12_out0 = -(coeff0+coeff5);
	7'd34 : lut12_out0 = -(coeff1+coeff5);
	7'd35 : lut12_out0 = -(coeff0+coeff1+coeff5);
	7'd36 : lut12_out0 = -(coeff2+coeff5);
	7'd37 : lut12_out0 = -(coeff0+coeff2+coeff5);
	7'd38 : lut12_out0 = -(coeff1+coeff2+coeff5);
	7'd39 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff5);
	7'd40 : lut12_out0 = -(coeff3+coeff5);
	7'd41 : lut12_out0 = -(coeff0+coeff3+coeff5);
	7'd42 : lut12_out0 = -(coeff1+coeff3+coeff5);
	7'd43 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff5);
	7'd44 : lut12_out0 = -(coeff2+coeff3+coeff5);
	7'd45 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff5);
	7'd46 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff5);
	7'd47 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff5);
	7'd48 : lut12_out0 = -(coeff4+coeff5);
	7'd49 : lut12_out0 = -(coeff0+coeff4+coeff5);
	7'd50 : lut12_out0 = -(coeff1+coeff4+coeff5);
	7'd51 : lut12_out0 = -(coeff0+coeff1+coeff4+coeff5);
	7'd52 : lut12_out0 = -(coeff2+coeff4+coeff5);
	7'd53 : lut12_out0 = -(coeff0+coeff2+coeff4+coeff5);
	7'd54 : lut12_out0 = -(coeff1+coeff2+coeff4+coeff5);
	7'd55 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff4+coeff5);
	7'd56 : lut12_out0 = -(coeff3+coeff4+coeff5);
	7'd57 : lut12_out0 = -(coeff0+coeff3+coeff4+coeff5);
	7'd58 : lut12_out0 = -(coeff1+coeff3+coeff4+coeff5);
	7'd59 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff4+coeff5);
	7'd60 : lut12_out0 = -(coeff2+coeff3+coeff4+coeff5);
	7'd61 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff4+coeff5);
	7'd62 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd63 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff4+coeff5);
	7'd64 : lut12_out0 = -(coeff6);
	7'd65 : lut12_out0 = -(coeff0+coeff6);
	7'd66 : lut12_out0 = -(coeff1+coeff6);
	7'd67 : lut12_out0 = -(coeff0+coeff1+coeff6);
	7'd68 : lut12_out0 = -(coeff2+coeff6);
	7'd69 : lut12_out0 = -(coeff0+coeff2+coeff6);
	7'd70 : lut12_out0 = -(coeff1+coeff2+coeff6);
	7'd71 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff6);
	7'd72 : lut12_out0 = -(coeff3+coeff6);
	7'd73 : lut12_out0 = -(coeff0+coeff3+coeff6);
	7'd74 : lut12_out0 = -(coeff1+coeff3+coeff6);
	7'd75 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff6);
	7'd76 : lut12_out0 = -(coeff2+coeff3+coeff6);
	7'd77 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff6);
	7'd78 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff6);
	7'd79 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff6);
	7'd80 : lut12_out0 = -(coeff4+coeff6);
	7'd81 : lut12_out0 = -(coeff0+coeff4+coeff6);
	7'd82 : lut12_out0 = -(coeff1+coeff4+coeff6);
	7'd83 : lut12_out0 = -(coeff0+coeff1+coeff4+coeff6);
	7'd84 : lut12_out0 = -(coeff2+coeff4+coeff6);
	7'd85 : lut12_out0 = -(coeff0+coeff2+coeff4+coeff6);
	7'd86 : lut12_out0 = -(coeff1+coeff2+coeff4+coeff6);
	7'd87 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff4+coeff6);
	7'd88 : lut12_out0 = -(coeff3+coeff4+coeff6);
	7'd89 : lut12_out0 = -(coeff0+coeff3+coeff4+coeff6);
	7'd90 : lut12_out0 = -(coeff1+coeff3+coeff4+coeff6);
	7'd91 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff4+coeff6);
	7'd92 : lut12_out0 = -(coeff2+coeff3+coeff4+coeff6);
	7'd93 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff4+coeff6);
	7'd94 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd95 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff4+coeff6);
	7'd96 : lut12_out0 = -(coeff5+coeff6);
	7'd97 : lut12_out0 = -(coeff0+coeff5+coeff6);
	7'd98 : lut12_out0 = -(coeff1+coeff5+coeff6);
	7'd99 : lut12_out0 = -(coeff0+coeff1+coeff5+coeff6);
	7'd100 : lut12_out0 = -(coeff2+coeff5+coeff6);
	7'd101 : lut12_out0 = -(coeff0+coeff2+coeff5+coeff6);
	7'd102 : lut12_out0 = -(coeff1+coeff2+coeff5+coeff6);
	7'd103 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff5+coeff6);
	7'd104 : lut12_out0 = -(coeff3+coeff5+coeff6);
	7'd105 : lut12_out0 = -(coeff0+coeff3+coeff5+coeff6);
	7'd106 : lut12_out0 = -(coeff1+coeff3+coeff5+coeff6);
	7'd107 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff5+coeff6);
	7'd108 : lut12_out0 = -(coeff2+coeff3+coeff5+coeff6);
	7'd109 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff5+coeff6);
	7'd110 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd111 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff5+coeff6);
	7'd112 : lut12_out0 = -(coeff4+coeff5+coeff6);
	7'd113 : lut12_out0 = -(coeff0+coeff4+coeff5+coeff6);
	7'd114 : lut12_out0 = -(coeff1+coeff4+coeff5+coeff6);
	7'd115 : lut12_out0 = -(coeff0+coeff1+coeff4+coeff5+coeff6);
	7'd116 : lut12_out0 = -(coeff2+coeff4+coeff5+coeff6);
	7'd117 : lut12_out0 = -(coeff0+coeff2+coeff4+coeff5+coeff6);
	7'd118 : lut12_out0 = -(coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd119 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff4+coeff5+coeff6);
	7'd120 : lut12_out0 = -(coeff3+coeff4+coeff5+coeff6);
	7'd121 : lut12_out0 = -(coeff0+coeff3+coeff4+coeff5+coeff6);
	7'd122 : lut12_out0 = -(coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd123 : lut12_out0 = -(coeff0+coeff1+coeff3+coeff4+coeff5+coeff6);
	7'd124 : lut12_out0 = -(coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd125 : lut12_out0 = -(coeff0+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd126 : lut12_out0 = -(coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
	7'd127 : lut12_out0 = -(coeff0+coeff1+coeff2+coeff3+coeff4+coeff5+coeff6);
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
wire	[31:0]	out_tmp = $signed(level2_add0_S) +$signed({level2_add0_C, 1'b0});;
assign filter_out = out_tmp[29:0];


endmodule
