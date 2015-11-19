*10.1 level 2
*#3)

*part a;
proc contents data=orion.charities;
run;

proc contents data=orion.us_suppliers;
run;

proc contents data=orion.consultants;
run;
*chart
*orion.charities
	code:type=CHAR, length=6 company: type=CHAR, length=40 contract type: type=CHAR, length=10
*orion.us_suppliers
	code:type=CHAR, length=6 company: type=CHAR, length=30 contract type: type=CHAR, length=1
*orion.consultants
	code:type=CHAR, length=6 company: type=CHAR, length=30 contract type: type=CHAR, length=8

*part b;
data work.contacts;
	set orion.charities orion.us_suppliers;
run;

*part c;
proc contents data=work.contacts;
run;
*Question answer: orion.charities

*part d;
data work.contacts2;
	set orion.us_suppliers orion.charities;
run;

*part e;
proc contents data=work.contacts2;
run;
*answer to question: orion.us_suppliers

*part f;
data work.contacts3;
	set orion.us_suppliers orion.consultants;
run;
*answer to question: because contacttype is defined as a char and a num

