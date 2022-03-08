module half_add_19BEE0167(sum,cout,a,b);
input a,b;
output sum,cout;
xor x1(sum,a,b);
and a1(cout,a,b);
endmodule

module testbenchforhalfadder;
reg a,b;
wire sum,cout;
half_add_19BEE0167 h1(sum,cout,a,b);
initial
begin
a=1'b0; b=1'b0;
#5;a=1'b0; b=1'b1;
#5;a=1'b1; b=1'b0;
#5;a=1'b1; b=1'b1;
end
endmodule
