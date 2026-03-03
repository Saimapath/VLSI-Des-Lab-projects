module brent_kung(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
);

wire g10, g32, g54, g76, g98, g1110, g1312, g1514, g1716, g1918, g2120, g2322, g2524, g2726, g2928, g3130;
wire p10, p32, p54, p76, p98, p1110, p1312, p1514, p1716, p1918, p2120, p2322, p2524, p2726, p2928, p3130;
wire g30, g74, g118, g1512, g1916, g2320, g2724, g3128;
wire p30, p74, p118, p1512, p1916, p2320, p2724, p3128;
wire g70, g158, g2316, g3124;
wire p70, p158, p2316, p3124;
wire g150 , g3116;
wire p150 , p3116;
wire g310 , p310;
wire g20, g40, g50, g60, g80, g90, g100, g110, g120, g130, g140, g160, g170, g180,g190, g200,g210, g220,g230, g240,g250, g260, g270, g280,g290, g300;
wire p20, p40, p50, p60, p80, p90, p100, p110, p120, p130, p140, p160, p170, p180,p190, p200,p210, p220,p230, p240,p250, p260, p270, p280,p290, p300;

// wire [31:0] b_xor_cin;
wire [31:0] pi,gi, carry;

//assign b_xor_cin = b ^ {32{cin}};
assign pi = a ^ b;
assign gi = a & b;

kala_dabba k1(gi[1], pi[1], gi[0],pi[0],g10,p10 );
kala_dabba k2(gi[3], pi[3], gi[2],pi[2],g32,p32 );
kala_dabba k3(gi[5], pi[5], gi[4],pi[4],g54,p54 );
kala_dabba k4(gi[7], pi[7], gi[6],pi[6],g76,p76 );
kala_dabba k5(gi[9], pi[9], gi[8],pi[8],g98,p98 );
kala_dabba k6(gi[11], pi[11], gi[10],pi[10],g1110,p1110 );
kala_dabba k7(gi[13], pi[13], gi[12],pi[12],g1312,p1312 );
kala_dabba k8(gi[15], pi[15], gi[14],pi[14],g1514,p1514 );
kala_dabba k9(gi[17], pi[17], gi[16],pi[16],g1716,p1716 );
kala_dabba k10(gi[19], pi[19], gi[18],pi[18],g1918,p1918 );
kala_dabba k11(gi[21], pi[21], gi[20],pi[20],g2120,p2120 );
kala_dabba k12(gi[23], pi[23], gi[22],pi[22],g2322,p2322 );
kala_dabba k13(gi[25], pi[25], gi[24],pi[24],g2524,p2524 );
kala_dabba k14(gi[27], pi[27], gi[26],pi[26],g2726,p2726 );
kala_dabba k15(gi[29], pi[29], gi[28],pi[28],g2928,p2928 );
kala_dabba k16(gi[31], pi[31], gi[30],pi[30],g3130,p3130 );

kala_dabba k17(g32 , p32 , g10 , p10 , g30 , p30 );
kala_dabba k18(g76 , p76 , g54 , p54 , g74 , p74 );
kala_dabba k19(g1110 , p1110 , g98 , p98 , g118 , p118 );
kala_dabba k20(g1514 , p1514 , g1312 , p1312 , g1512 , p1512 );
kala_dabba k21(g1918 , p1918 , g1716 , p1716 , g1916 , p1916 );
kala_dabba k22(g2322 , p2322 , g2120 , p2120 , g2320 , p2320 );
kala_dabba k23(g2726 , p2726 , g2524 , p2524 , g2724 , p2724 );
kala_dabba k24(g3130 , p3130 , g2928 , p2928 , g3128 , p3128 ); 

kala_dabba k25(g74 , p74 , g30 , p30 , g70 , p70 );
kala_dabba k26(g1512 , p1512 , g118 , p118 , g158 , p158 );
kala_dabba k27(g2724 , p2724 , g1916 , p1916 , g2316 , p2316 );
kala_dabba k28(g3128 , p3128 , g2320 , p2320 , g3124 , p3124 );

kala_dabba k29(g158 , p158 , g70 , p70 , g150 , p150 );
kala_dabba k30(g3124 , p3124 , g2316 , p2316 , g3116 , p3116 );

kala_dabba k31(g3116 , p3116 , g150,p150 , g310 , p310 );

kala_dabba k34(g2316, p2316 , g150 , p150 , g230 , p230 );
kala_dabba k35(g2724, p2724 , g230 , p230 , g270 , p270 );
kala_dabba k36(g1916, p1916 , g150 , p150 , g190 , p190 );
kala_dabba k37(g118, p118 , g70 , p70 , g110 , p110 );

kala_dabba k38(g54, p54 , g30 , p30 , g50 , p50 );
kala_dabba k39(g98, p98 , g70 , p70 , g90 , p90 );
kala_dabba k40(g1312, p1312 , g110 , p110 , g130 , p130 );
kala_dabba k41(g1716, p1716 , g150 , p150 , g170 , p170 );
kala_dabba k42(g2120, p2120 , g190 , p190 , g210 , p210 );
kala_dabba k43(g2524, p2524 , g230 , p230 , g250 , p250 );
kala_dabba k44(g2928, p2928 , g270 , p270 , g290 , p290 );


kala_dabba k45(gi[2], pi[2] , g10 , p10 , g20 , p20 );
kala_dabba k46(gi[4], pi[4] , g30 , p30 , g40 , p40 );
kala_dabba k47(gi[6], pi[6] , g50 , p50 , g60 , p60 );
kala_dabba k48(gi[8], pi[8] , g70 , p70 , g80 , p80 );
kala_dabba k49(gi[10], pi[10] , g90 , p90 , g100 , p100 );
kala_dabba k50(gi[12], pi[12] , g110 , p110 , g120 , p120 );
kala_dabba k51(gi[14], pi[14] , g130 , p130 , g140 , p140 );
kala_dabba k52(gi[16], pi[16] , g150 , p150 , g160 , p160 );
kala_dabba k53(gi[18], pi[18] , g170 , p170 , g180 , p180 );
kala_dabba k54(gi[20], pi[20] , g190 , p190 , g200 , p200 );
kala_dabba k55(gi[22], pi[22] , g210 , p210 , g220 , p220 );
kala_dabba k56(gi[24], pi[24] , g230 , p230 , g240 , p240 );
kala_dabba k57(gi[26], pi[26] , g250 , p250 , g260 , p260 );
kala_dabba k58(gi[28], pi[28] , g270 , p270 , g280 , p280 );
kala_dabba k59(gi[30], pi[30] , g290 , p290 , g300 , p300 );

assign carry[0]=gi[0]|(pi[0]&cin);
assign carry[1]=g10|(p10&cin);
assign carry[2]=g20|(p20&cin);
assign carry[3]=g30|(p30&cin);
assign carry[4]=g40|(p40&cin);
assign carry[5]=g50|(p50&cin);
assign carry[6]=g60|(p60&cin);
assign carry[7]=g70|(p70&cin);
assign carry[8]=g80|(p80&cin);
assign carry[9]=g90|(p90&cin);
assign carry[10]=g100|(p100&cin);
assign carry[11]=g110|(p110&cin);
assign carry[12]=g120|(p120&cin);
assign carry[13]=g130|(p130&cin);
assign carry[14]=g140|(p140&cin);
assign carry[15]=g150|(p150&cin);
assign carry[16]=g160|(p160&cin);
assign carry[17]=g170|(p170&cin);
assign carry[18]=g180|(p180&cin);
assign carry[19]=g190|(p190&cin);
assign carry[20]=g200|(p200&cin);
assign carry[21]=g210|(p210&cin);
assign carry[22]=g220|(p220&cin);
assign carry[23]=g230|(p230&cin);
assign carry[24]=g240|(p240&cin);
assign carry[25]=g250|(p250&cin);
assign carry[26]=g260|(p260&cin);
assign carry[27]=g270|(p270&cin);
assign carry[28]=g280|(p280&cin);
assign carry[29]=g290|(p290&cin);
assign carry[30]=g300|(p300&cin);
assign carry[31]=g310|(p310&cin);

assign cout=carry[31];

assign sum=pi ^ ({carry[30:0],cin});  

endmodule