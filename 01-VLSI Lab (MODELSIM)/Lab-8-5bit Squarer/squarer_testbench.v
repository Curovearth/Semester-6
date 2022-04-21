
module tb_squarer_5bit_19BEE0167_test;
reg[4:0]A;

wire[9:0]S;
reg[9:0]check;

squarer_5bit_19BEE0167 uut(A,S);
initial repeat(10) begin
A = $random;


check = A*A;
#10 $display($time," %d=%d(%d) ",A,S,check);
end
endmodule