module Adder_N(
	input					clk,
	input	[in_width-1:0]	X,
	input	[in_width-1:0]	Y,	
	input	[in_width-1:0]	Z,
	input	[in_width-1:0]	W,
	output	[in_width-1:0]	S,
	output	[in_width-1:0]	C,
	output					COUT
);


parameter	in_width = 16; //in_width must be greater than 4
localparam	install_num = in_width /4;
localparam	extra_width = in_width % 4;


wire	[in_width-1:0]	X_tmp;
wire	[in_width-1:0]	Y_tmp;
wire	[in_width-1:0]	Z_tmp;
wire	[in_width-1:0]	W_tmp;

assign X_tmp = X;
assign Y_tmp = Y;
assign Z_tmp = Z;
assign W_tmp = W;


wire	[in_width-1:0]	SS;
wire	[in_width-1:0]	CC;
wire	[install_num-1:0]	CCOUT;

generate
genvar i;
for (i = 1; i <= install_num; i = i + 1)
begin:Compressor_install
	if(i == 1)
		Compressor_42_Start	Compressor_42_Start(
			.X(X_tmp[3:0]),
			.Y(Y_tmp[3:0]),
			.Z(Z_tmp[3:0]),
			.W(W_tmp[3:0]),
			.S(SS[3:0]),
			.C(CC[3:0]),
			.COUT(CCOUT[0])
		);
	else
	Compressor_42	Compressor_42(
		.X(X_tmp[4*i-1:4*(i-1)]),
		.Y(Y_tmp[4*i-1:4*(i-1)]),
		.Z(Z_tmp[4*i-1:4*(i-1)]),
		.W(W_tmp[4*i-1:4*(i-1)]),
		.CI(CCOUT[i-2]),
		.S(SS[4*i-1:4*(i-1)]),
		.C(CC[4*i-1:4*(i-1)]),
		.COUT(CCOUT[i-1])
	);
end
endgenerate



// if their is any extra bits then process with it
wire	cout_tmp;
if(extra_width == 0)
begin
	assign cout_tmp = CCOUT[install_num-1];
end
else if(extra_width == 1)
begin
	wire	O6;
	LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst0(
	  .O6(O6),
	  .O5(CC[install_num*4]),
	  .I0(X_tmp[install_num*4]),
	  .I1(Y_tmp[install_num*4]),
	  .I2(Z_tmp[install_num*4]),
	  .I3(W_tmp[install_num*4]),
	  .I4(1'b0),
	  .I5(1'b1)
	);
	wire	[3:0]	O_tmp;
	wire	[3:0]	CO_tmp;
	CARRY4 carry1(
		.DI	(W_tmp[install_num*4]),
		.S	(O6),
		.O	(O_tmp	),
		.CO	(CO_tmp	),
		.CYINIT(1'b0),
		.CI	(CCOUT[install_num-1])
	);		
	assign SS[in_width-1:install_num*4] = O_tmp[extra_width-1:0];
	assign cout_tmp = CO_tmp[extra_width-1];
end
else if(extra_width == 2)
begin
	wire	[1:0]	O6;
	LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst0(
	  .O6(O6[0]),
	  .O5(CC[install_num*4]),
	  .I0(X_tmp[install_num*4]),
	  .I1(Y_tmp[install_num*4]),
	  .I2(Z_tmp[install_num*4]),
	  .I3(W_tmp[install_num*4]),
	  .I4(1'b0),
	  .I5(1'b1)
	);
	LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst1(
		  .O6(O6[1]),
		  .O5(CC[install_num*4+1]),
		  .I0(X_tmp[install_num*4+1]),
		  .I1(Y_tmp[install_num*4+1]),
		  .I2(Z_tmp[install_num*4+1]),
		  .I3(W_tmp[install_num*4+1]),
		  .I4(1'b0),
		  .I5(1'b1)
	);
	
	wire	[3:0]	O_tmp;
	wire	[3:0]	CO_tmp;
	CARRY4 carry1(
		.DI	(W_tmp[install_num*4+1:install_num*4]),
		.S	(O6),
		.O	(O_tmp	),
		.CO	(CO_tmp	),
		.CYINIT(1'b0),
		.CI	(CCOUT[install_num-1])
	);		
	assign SS[in_width-1:install_num*4] = O_tmp[extra_width-1:0];
	assign cout_tmp = CO_tmp[extra_width-1];
end
else if(extra_width == 3)
begin
	wire	[2:0]	O6;
	LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst0(
	  .O6(O6[0]),
	  .O5(CC[install_num*4]),
	  .I0(X_tmp[install_num*4]),
	  .I1(Y_tmp[install_num*4]),
	  .I2(Z_tmp[install_num*4]),
	  .I3(W_tmp[install_num*4]),
	  .I4(1'b0),
	  .I5(1'b1)
	);
	LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst1(
		  .O6(O6[1]),
		  .O5(CC[install_num*4+1]),
		  .I0(X_tmp[install_num*4+1]),
		  .I1(Y_tmp[install_num*4+1]),
		  .I2(Z_tmp[install_num*4+1]),
		  .I3(W_tmp[install_num*4+1]),
		  .I4(1'b0),
		  .I5(1'b1)
	);
	LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst2(
		  .O6(O6[2]),
		  .O5(CC[install_num*4+2]),
		  .I0(X_tmp[install_num*4+2]),
		  .I1(Y_tmp[install_num*4+2]),
		  .I2(Z_tmp[install_num*4+2]),
		  .I3(W_tmp[install_num*4+2]),
		  .I4(1'b0),
		  .I5(1'b1)
	);	
	wire	[3:0]	O_tmp;
	wire	[3:0]	CO_tmp;
	CARRY4 carry1(
		.DI	(W_tmp[install_num*4+2:install_num*4]),
		.S	(O6),
		.O	(O_tmp	),
		.CO	(CO_tmp	),
		.CYINIT(1'b0),
		.CI	(CCOUT[install_num-1])
	);		
	assign SS[in_width-1:install_num*4] = O_tmp[extra_width-1:0];
	assign cout_tmp = CO_tmp[extra_width-1];
end

reg	[in_width-1:0]	S_tmp;
reg	[in_width-1:0]	C_tmp;
reg					COUT_tmp;

always @(posedge clk)
begin
	S_tmp <= SS;
	C_tmp <= CC;
	COUT_tmp <= cout_tmp;	
end


//wire	[in_width-1:0]	S_tmp = SS;
//wire	[in_width-1:0]	C_tmp = CC;
//wire					COUT_tmp = cout_tmp;

assign	S = S_tmp;
assign	C = C_tmp;
assign	COUT = COUT_tmp;

endmodule
