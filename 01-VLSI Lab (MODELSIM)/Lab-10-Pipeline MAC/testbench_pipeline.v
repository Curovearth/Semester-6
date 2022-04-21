
module pipeline_MAC_test();

reg clk,rst;
reg[3:0]a,b;
wire[9:0]y;

pipeline_MAC UUT(clk, rst, a, b, y);

initial begin
rst=1'b0;
clk=1'b0;
#5;
rst=1'b1;
a=4'b0100;
b=4'b1010;
#10;
end
always #5 clk=~clk;
endmodule