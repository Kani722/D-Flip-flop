module DFF(input RESET, SET, EN, CLK, D, output reg Q);

	always@(posedge CLK) begin
    if (EN==1) begin
		if(RESET == 0)
			Q <= 1'b0;
		else begin
			if(SET==0)
				Q<=1;
			else
				Q<=D;
		end
	
	end
	else
	Q <= D;
	
	end
endmodule