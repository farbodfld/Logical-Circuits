module fooladi_farbod_98243045_Question1(out,a,b,c,d,not_a,not_b,not_c,not_d);
	input a,b,c,d;
	input not_a,not_b,not_c,not_d;
	output out;
	
	wire wire1 , wire2 , wire3 , wire4 , wire5 , wire6 , wire7 , wire8 , wire9 ,wire10;

	supply1 pwr;
	supply0 gnd;
	
	pmos(wire1,pwr,not_a);
	pmos(wire2,wire1,not_d);
	pmos(out,wire2,not_c);

	pmos(wire3,pwr,not_a);
	pmos(wire4,wire3,b);
	pmos(out,wire4,c);

	pmos(wire5,pwr,not_b);
	pmos(out,wire5,d);

	pmos(wire6,pwr,a);
	pmos(wire7,wire6,c);
	pmos(out,wire7,d);


	nmos(out,wire8,not_a);
	nmos(out,wire8,not_d);
	nmos(out,wire8,not_c);

	nmos(wire8,wire9,not_a);
	nmos(wire8,wire9,b);
	nmos(wire8,wire9,c);

	nmos(wire9,wire10,a);
	nmos(wire9,wire10,c);
	nmos(wire9,wire10,d);

	nmos(wire10,gnd,not_b);
	nmos(wire10,gnd,d);

endmodule
