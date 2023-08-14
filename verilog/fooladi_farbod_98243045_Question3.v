module  Shift_to_left(input signed [7:0] A , input signed [7:0] B , output signed out);

		 assign out = (A <<< 2) + (B >>> 2); 
endmodule	


module Sum(input signed [7:0] A , B , output signed out);
		reg [7:0] sum_of_B;
		assign sum_of_B = (B + B);
		assign out = A + sum_of_B;
endmodule


module Make_it_negative(input signed [7:0] A , output signed out);
		assign out = -A;
endmodule


module Value(input signed [7:0] x , input signed [7:0] result);
		assign result = (x[7] == 1) ? (!x) + 1 : x;
endmodule


module Formula(input signed [7:0] A , B , output signed out);
		reg signed [7:0] sum_of_A;
		reg signed [7:0] temp;
		assign sum_of_A = (A + A + A);
		assign temp = sum_of_A - B;
		Value value(temp , out);
endmodule


module fooladi_farbod_98243045_Question3(
		   input signed [7:0] A,B , // ALU 8-bit Inputs                 
           input signed [1:0] ALU_Sel // ALU Selection
		   );
		   
		   wire w0 , w1 , w2 , w3;
		   Shift_to_left shift_to_left(A , B , w0);
		   Sum sum(A , B , w1);
		   Make_it_negative make_it_negative( B , w2);
		   Formula formula(A , B , w3);
		   
		   assign ALU_Sel = (!ALU_Sel[1]) ? (!ALU_Sel[0] ? w0 : w1) : (!ALU_Sel[0] ? w2 : w3);
		   
endmodule
	
		

	
	