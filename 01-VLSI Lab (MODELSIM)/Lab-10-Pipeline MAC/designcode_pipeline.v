
module pipeline_MAC(input clk, rst, input[3:0] a,b, output[9:0]y);

wire[3:0]w1,w2;
wire[7:0]w3,w4;
wire[9:0]w5,w6;

pipo_4b p1(clk, rst, a, w1);
pipo_4b p2(clk, rst, b, w2);

assign w3=w1*w2;

pipo_8b p3(clk, rst, w3, w4);

assign w5=w4+w6;

pipo_10b p4(clk, rst, w5, w6);

assign y=w6;
endmodule