
module pipo_8b(input clk, rst, input[7:0]d, output reg[7:0]q);
always@(posedge clk, negedge rst)
begin
if(!rst)
q<='b0;
else
q<=d;
end
endmodule