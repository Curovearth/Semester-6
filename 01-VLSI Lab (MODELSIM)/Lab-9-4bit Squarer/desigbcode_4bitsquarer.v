
module squarer_4bit_19BEE0167(input [3:0]a, 
				output [7:0]p);
//wire[5:0]w;
wire[4:0]w;

assign p[0]=a[0];
assign p[1]=0;
assign p[2]=(a[1]&(~a[0]));

ha_df_19BEE0167 ha1((a[1]&a[0]),(a[2]&a[0]),p[3],w[1]);
fa_df_19BEE0167 fa1((a[2]&(~a[1])),(a[3]&a[0]),w[1],p[4],w[2]);
fa_df_19BEE0167 fa2((a[2]&a[1]),(a[3]&a[1]),w[2],p[5],w[3]);
ha_df_19BEE0167 ha2((a[3]&(~a[2])),w[3],p[6],w[4]);
//ha_df ha3((a[3]&a[2]),w[4],p[7],w[5]);
assign p[7]=((a[3]&a[2])^w[4]);

endmodule