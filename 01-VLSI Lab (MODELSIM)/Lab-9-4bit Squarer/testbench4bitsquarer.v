

module tb_squarer_4bit_19BEE0167_test;
reg[3:0]A;

wire[7:0]S;
reg[7:0]check;

squarer_4bit_19BEE0167 uut(A,S);
initial repeat(10) begin
A = $random;


check = A*A;
#10 $display($time," %d=%d(%d) ",A,S,check);
end
endmodule