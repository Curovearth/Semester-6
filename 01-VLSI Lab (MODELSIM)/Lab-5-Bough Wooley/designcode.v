
module bw_4b_19BEE0167(input signed[3:0]a,b, output signed[7:0]p);
wire[18:1]w;
supply0 zero;
supply1 one;
assign p[0] = a[0]&b[0];

fulladder_19BEE067 fa1((a[1]&b[0]),(a[0]&b[1]),zero,p[1],w[1]);
fulladder_19BEE067 fa2((a[2]&b[0]),(a[1]&b[1]),zero,w[2],w[3]);
fulladder_19BEE067 fa3(~(a[3]&b[0]),(a[2]&b[1]),zero,w[4],w[5]);

fulladder_19BEE067 fa4(w[2],(a[0]&b[2]),w[1],p[2],w[6]);
fulladder_19BEE067 fa5(w[4],(a[1]&b[2]),w[3],w[7],w[8]);
fulladder_19BEE067 fa6(~(a[3]&b[1]),(a[2]&b[2]),w[5],w[9],w[10]);

fulladder_19BEE067 fa7(w[7],~(a[0]&b[3]),w[6],p[3],w[11]);
fulladder_19BEE067 fa8(w[9],~(a[1]&b[3]),w[8],w[12],w[13]);
fulladder_19BEE067 fa9(~(a[3]&b[2]),~(a[2]&b[3]),w[10],w[14],w[15]);

fulladder_19BEE067 fa10(w[12],one,w[11],p[4],w[16]);
fulladder_19BEE067 fa11(w[14],w[16],w[13],p[5],w[17]);
fulladder_19BEE067 fa12((a[3]&b[3]),w[17],w[15],p[6],w[18]);
assign p[7] = ~(w[18]);
endmodule
