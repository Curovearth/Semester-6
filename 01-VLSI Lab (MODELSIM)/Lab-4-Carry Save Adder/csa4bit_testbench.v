module tb_csa_4bit_19BEE0167_test;
reg [3:0]A,B;

wire [7:0]S;
reg [7:0]check;

csa_4bit_19BEE0167 uut(A,B,S);
initial repeat(10) begin
A = $random;
B = $random;

check = A*B;
#10 $display($time," %d*%d=%d(%d)",A,B,S,check);
end
endmodule