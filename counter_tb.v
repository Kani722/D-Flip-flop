
module counter_tb;
	reg reset, clk;
	wire [3:0]count;
	
	counter uut(.RESET(reset), .CLK(clk), .COUNT(count));
	
	always #5 clk = !clk;
	
	initial begin
		$dumpfile("counter.vcd");
		$dumpvars;
		
		#20 en= 1; // enable the ENABLE
		#10 reset= 0;// set the RESET as HIGH
		#20 reset= 1;// set the RESET as LOW
		#10 set= 0;
		#20 set= 1;
		#10 d= 1;
		#10 d= 0;
		#10 d= 1;
		
		#30 en= 0;
		
		#30 $finish;