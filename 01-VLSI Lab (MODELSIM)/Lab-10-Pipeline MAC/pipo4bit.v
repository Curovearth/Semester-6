
module pipo_4b(input clk, rst, input[3:0]d, output reg[3:0]q);
always@(posedge clk, negedge rst)
begin
if(!rst)
q<='b0;
else
q<=d;
end
endmodule