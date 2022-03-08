module test_bw_4b_19BEE0167;
reg signed[3:0]A,B;
wire signed[7:0]Sum;
reg signed[7:0]check;

bw_4b_19BEE0167 uut(A,B,Sum);
initial repeat(10) begin
A = $random;
B = $random;
check = A*B;
#10 $display($time,"%d*%d=%d(%d)",A,B,Sum,check);
end
endmodule
