*10.4 level 2
*#8)

*part a;
proc sort data=orion.customer out=work.customer;
	by Country;
run;

*part b;

data work.allcustomer;
	merge work.customer(in=Cust) orion.lookup_country(rename=(Start=Country Label=Country_Name) in=Ctry);
	by Country;
	keep Customer_ID Country Customer_Name Country_Name;
	*part d;
	if Cust=1 and Ctry=1;
run;

*part c, e;
proc print data=work.allcustomer;
run;






