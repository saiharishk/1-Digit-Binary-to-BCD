module tb();

reg [3:0]i;
wire TENS;
wire [3:0]U;
integer j;

binary2bcd BIN2BCD_TB (TENS, U, i);

initial
	begin
		for(j=0;j<=15;j=j+1)
		begin
			i=$random;
			#1;
			$display(i,":::","%b : %b",TENS,U);
		end
	end
	

endmodule
