`include "fooladi_farbod_98243045_Question1.v"
module fooladi_farbod_98243045_Question1_Testbench();
	wire out;
	reg a,b,c,d,not_a,not_b,not_c,not_d;

	fooladi_farbod_98243045_Question1 question1(out,a,b,c,d,not_a,not_b,not_c,not_d);
	
	initial begin
		$dumpvars(0,fooladi_farbod_98243045_Question1_Testbench);

		a=0;b=0;c=0;d=0;not_a=1;not_b=1;not_c=1;not_d=1;
		#20;
	
		a=0;b=0;c=0;d=1;not_a=1;not_b=1;not_c=1;not_d=0;
		#20;

		a=0;b=0;c=1;d=0;not_a=1;not_b=1;not_c=0;not_d=1;
		#20;
	
		a=0;b=0;c=1;d=1;not_a=1;not_b=1;not_c=0;not_d=0;
		#20;


		a=0;b=1;c=0;d=0;not_a=1;not_b=0;not_c=1;not_d=1;
		#20;
	
		a=0;b=1;c=0;d=1;not_a=1;not_b=0;not_c=1;not_d=0;
		#20;

		a=0;b=1;c=1;d=0;not_a=1;not_b=0;not_c=0;not_d=1;
		#20;
	
		a=0;b=1;c=1;d=1;not_a=1;not_b=0;not_c=0;not_d=0;
		#20;
		
	

		a=1;b=0;c=0;d=0;not_a=0;not_b=1;not_c=1;not_d=1;
		#20;
	
		a=1;b=0;c=0;d=1;not_a=0;not_b=1;not_c=1;not_d=0;
		#20;

		a=1;b=0;c=1;d=0;not_a=0;not_b=1;not_c=0;not_d=1;
		#20;
	
		a=1;b=0;c=1;d=1;not_a=0;not_b=1;not_c=0;not_d=0;
		#20;


		a=1;b=1;c=0;d=0;not_a=0;not_b=0;not_c=1;not_d=1;
		#20;
	
		a=1;b=1;c=0;d=1;not_a=0;not_b=0;not_c=1;not_d=0;
		#20;

		a=1;b=1;c=1;d=0;not_a=0;not_b=0;not_c=0;not_d=1;
		#20;
	
		a=1;b=1;c=1;d=1;not_a=0;not_b=0;not_c=0;not_d=0;
		#20;
		
		

		


	
		
	end	
endmodule
