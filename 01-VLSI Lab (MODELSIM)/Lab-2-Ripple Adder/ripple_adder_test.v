//Creating the testbench
module rca_4bit_test();
	reg [3:0]a,b;
	reg cin;
	wire[4:0]sum;
	reg[4:0]check;
	
	rca_4bit_19BEE0167 UUT(a,b,cin,sum);

	initial repeat(10) begin
		a= $random;
		b= $random;
		cin= $random;
		check = a+b+cin;
		#10
		$display($time, " %d+%d+%d=%d(%d)",a,b,cin,sum,check);
	end
endmodule