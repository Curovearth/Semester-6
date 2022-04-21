
module pipo_10b(input clk, rst, input[9:0]d, output reg[9:0]q);
always@(posedge clk, negedge rst)
begin
if(!rst)
q<='b0;
else
q<=d;
end
endmodule