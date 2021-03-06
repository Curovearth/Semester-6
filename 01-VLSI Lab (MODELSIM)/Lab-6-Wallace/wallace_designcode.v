
module wallace_tree_19BEE0167(input [3:0]a,b,output [7:0]p);
wire [22:1]w;
assign p[0] = a[0]&b[0];
half_adder ha1((a[1]&b[0]),(a[0]&b[1]),p[1],w[1]);
full_adder fa1((a[1]&b[1]),(a[0]&b[2]),(a[2]&b[0]),w[2],w[3]);
full_adder fa2((a[2]&b[1]),(a[1]&b[2]),(a[3]&b[0]),w[4],w[5]);
full_adder fa3((a[3]&b[1]),(a[2]&b[2]),(a[1]&b[3]),w[6],w[7]);
half_adder ha2((a[3]&b[2]),(a[2]&b[3]),w[8],w[9]);

half_adder ha3(w[1],w[2],p[2],w[10]);
full_adder fa4((a[0]&b[3]),w[4],w[3],w[11],w[12]);
half_adder ha4(w[5],w[6],w[13],w[14]);
half_adder ha5(w[7],w[8],w[15],w[16]);
half_adder ha6((a[3]&b[3]),w[9],w[17],w[18]);

half_adder ha7(w[10],w[11],p[3],w[19]);
full_adder fa5(w[12],w[19],w[13],p[4],w[20]);
full_adder fa6(w[14],w[15],w[20],p[5],w[21]);
full_adder fa7(w[16],w[17],w[21],p[6],w[22]);
assign p[7]=w[18]^w[22];
endmodule