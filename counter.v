
module counter(input RESET, CLK, output reg [3:0] COUNT);

	always @ (posedge CLK) begin  // considering at every rising edge
		if(RESET ==0) //RESET is pressed
			COUNT <=0;
			
		else begin
			if(COUNT == 4'b1010)
				COUNT <=0;
			else
				COUNT <= COUNT + 1;
		end
		
	end
	
endmodule