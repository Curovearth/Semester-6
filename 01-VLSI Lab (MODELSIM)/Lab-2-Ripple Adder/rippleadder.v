//Full adder using Dataflow
module fa_df(input a,b,cin, output sum,cout);
	assign sum = a^b^cin;
	assign cout = (a&b) | cin&(a^b);
endmodule

//Ripple Carry Adder
module rca_4bit_19BEE0167(input [3:0]a,b, input cin, output [4:0]sum);
	wire w1,w2,w3;
	fa_df fa1(a[0],b[0],cin,sum[0],w1);
	fa_df fa2(a[1],b[1],w1,sum[1],w2);
	fa_df fa3(a[2],b[2],w2,sum[2],w3);
	fa_df fa4(a[3],b[3],w3,sum[3],sum[4]);
endmodule
