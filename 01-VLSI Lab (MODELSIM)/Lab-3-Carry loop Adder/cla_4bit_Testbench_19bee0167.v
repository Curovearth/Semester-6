module cla_test_4bit_19bee0167;
reg [3:0]a,b;
reg cin;
reg [4:0]check;
wire [4:0]s;

cla_4bit_19bee0167 uut(a,b,cin,s);
initial repeat(10) 
begin
a = $random;
b = $random;
cin = $random;
check = a+b+cin;
#10 $display($time,"%d +%d+%d=%d(%d)",a,b,cin,s,check);
end
endmodule