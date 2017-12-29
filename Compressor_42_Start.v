module Compressor_42_Start(
	input	[3:0]	X,
	input	[3:0]	Y,
	input	[3:0]	Z,
	input	[3:0]	W, 
	output	[3:0]	S,	// this is sum output
	output	[3:0]	C,	// this is carry output
	output			COUT// this is for carrychain output
);

//Lower 32 bits is for O5, Upper 32 bits for O6
//O5 = Carry(I0+I1+I2)
//O6 = I0 ^ I1 ^ I2 ^ I3
   LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst0 (
      .O6(O6_0),
      .O5(O5_0),
      .I0(X[0]),
      .I1(Y[0]),
      .I2(Z[0]),
      .I3(W[0]),
      .I4(1'b0),
      .I5(1'b1)
   );

   LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst1 (
      .O6(O6_1),
      .O5(O5_1),
      .I0(X[1]),
      .I1(Y[1]),
      .I2(Z[1]),
      .I3(W[1]),
      .I4(1'b0),
      .I5(1'b1)
   );
   
   LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst2 (
      .O6(O6_2),
      .O5(O5_2),
      .I0(X[2]),
      .I1(Y[2]),
      .I2(Z[2]),
      .I3(W[2]),
      .I4(1'b0),
      .I5(1'b1)
   );

   LUT6_2 #(.INIT(64'h69966996_E8E8E8E8)) LUT6_2_inst3 (
      .O6(O6_3),
      .O5(O5_3),
      .I0(X[3]),
      .I1(Y[3]),
      .I2(Z[3]),
      .I3(W[3]),
      .I4(1'b0),
      .I5(1'b1)
   );   

	wire	[3:0]	DI = W;
	wire	[3:0]	S_test = {O6_3, O6_2, O6_1, O6_0};
	wire	[3:0]	O_tmp;
	wire	[3:0]	CO_tmp;
    
    CARRY4 carry1(
		.DI	(DI		),
		.S	(S_test	),
        .O	(O_tmp	),
        .CO	(CO_tmp	),
        .CYINIT(1'b0),
        .CI	(1'b0	)
	);
					  
	wire	[3:0]	sum = O_tmp;
	wire	[3:0]	carry = {O5_3, O5_2, O5_1, O5_0};
	
	assign S = sum;
	assign C = carry;
	assign COUT = CO_tmp[3];
	
endmodule

