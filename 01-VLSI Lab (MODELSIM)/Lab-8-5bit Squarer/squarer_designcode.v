
module squarer_5bit_19BEE0167(input[4:0]a,
		    output[9:0]p);
wire[7:0]w;

assign p[0]=a[0];
assign p[1]=0;
assign p[2]=(a[1]&~(a[0]));

ha_df_19BEE0167 ha1((a[2]&a[0]),(a[1]&a[0]),p[3],w[1]);
fa_df_19BEE0167 fa1((a[3]&a[0]),(a[2]&~(a[1])),w[1],p[4],w[2]);
fa_df_19BEE0167 fa2((a[4]&a[0]),(a[3]&a[1]),w[2],w[3],w[4]);
fa_df_19BEE0167 fa3((a[4]&a[1]),(a[3]&~(a[2])),w[4],p[6],w[5]);
fa_df_19BEE0167 fa4((a[4]&a[2]),(a[3]&a[2]),w[5],p[7],w[6]);
ha_df_19BEE0167 ha2((a[4]&~(a[3])),w[6],p[8],w[7]);
assign p[9]= ((a[4]&a[3])^w[7]);

assign p[5]=((a[2]&a[1])^w[3]);

endmodule