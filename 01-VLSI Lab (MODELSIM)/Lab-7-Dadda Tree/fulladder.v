module full_adder_19BEE0167(input a,b,Cin,output sum,Cout);
assign sum=a^b^Cin;
assign Cout=(a&b)|(Cin&(a^b));
endmodule