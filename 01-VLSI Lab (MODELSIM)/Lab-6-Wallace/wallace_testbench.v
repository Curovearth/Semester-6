module test_wallace_tree();
reg [3:0]a;
reg [3:0]b;
wire [7:0]p;
reg [7:0]check;
wallace_tree_19BEE0167 uut(.a(a),.b(b),.p(p));
initial repeat(10) begin
a = $random;
b = $random;
check = a*b;
#10;
$display($time,"%d*%d=%d(%d)", a, b, p, check);
end
endmodule