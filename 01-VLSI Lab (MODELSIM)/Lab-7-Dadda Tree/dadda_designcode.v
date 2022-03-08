//dadda tree multiplier consists of 8 full adders and 4 half-adders

module dt_4b_19BEE0167(input signed[3:0]a,b, output signed[7:0]p);
wire[17:1]w;
supply0 zero;
supply1 one;
assign p[0] = a[0]&b[0];

halfadder_19BEE0167 ha1((a[3]&b[0]),(a[2]&b[1]),w[1],w[2]);
halfadder_19BEE0167 ha2((a[3]&b[1]),(a[2]&b[2]),w[3],w[4]);
halfadder_19BEE0167 ha3((a[2]&b[0]),(a[1]&b[1]),w[5],w[6]);
halfadder_19BEE0167 ha4((a[1]&b[0]),(a[0]&b[1]),w[13],p[1]);

fulladder_19BEE067 fa1(w[1],(a[1]&b[2]),(a[0]&b[3]),w[7],w[8]);
fulladder_19BEE067 fa2(w[3],(a[1]&b[3]),w[2],w[9],w[10]);
fulladder_19BEE067 fa3((a[3]&b[2]),(a[3]&b[3]),w[4],w[11],w[12]);
fulladder_19BEE067 fa4(w[5],(a[0]&b[2]),w[2],w[13],p[2]);
fulladder_19BEE067 fa5(w[7],w[6],w[14],p[3]);
fulladder_19BEE067 fa6(w[9],w[8],w[15],p[4]);
fulladder_19BEE067 fa7(w[11],w[10],w[16],p[5]);
fulladder_19BEE067 fa8((a[3]&b[3]),w[12],w[17],p[6],p[7]);

//assign p[7] = ~(w[18]);
endmodule
