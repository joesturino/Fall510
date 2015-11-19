*9.1 level 2
*#2)

*part a;
data work.birthday;
	set orion.customer;
*part b;
	Bday2012=mdy(month(Birth_Date), day(Birth_Date), 2012);
	BdayDow2012=weekday(Bday2012);
	Age2012=((Bday2012-Birth_Date)/365.25);
*part c;
	keep Customer_Name Birth_Date Bday2012 BdayDow2012 Age2012;
*part d;
	format Bday2012 date7. Age2012 3.;
run;

*part e;

proc print data=work.birthday;
run;	