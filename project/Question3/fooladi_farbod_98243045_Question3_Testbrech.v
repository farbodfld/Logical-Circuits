`timescale 1ns / 1ps  

`include "fooladi_farbod_98243045_Question3.v"

module fooladi_farbod_98243045_Question3_Testbench();

//Outputs
wire[7:0] ALU_Out;
//Inputs
 reg[7:0] A,B;
 reg[1:0] ALU_Sel;
 integer i;
 fooladi_farbod_98243045_Question3 test_unit(
            A,B,  // ALU 8-bit Inputs                 
            ALU_Sel,// ALU Selection
            ALU_Out, // ALU 8-bit Output
     );
    initial 
		begin
      A = 8'b00000110;
      B = 4'b00010101;
      ALU_Sel = 2'b00;
	  #5;
	  
	  A = 8'b00000110;
      B = 4'b00010101;
      ALU_Sel = 2'b01;
	  #5;
	  
	  A = 8'b00000110;
      B = 4'b00010101;
      ALU_Sel = 2'b10;
	  #5;
     
	 A = 8'b00000110;
      B = 4'b00010101;
      ALU_Sel = 2'b11;
	  #5;
endmodule