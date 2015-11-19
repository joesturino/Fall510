*6.2 level 2
*#5)

*part a;

data work.delays;
	set orion.orders;
	*part c;
	where Order_Date+4<Delivery_Date and employee_ID=99999999;	*part b;
	Order_Month=month(Order_date);
	if Order_Month=8;
	*part e;
	label Order_Date='Date Ordered'
		  Delivery_Date='Date Delivered'
		  Order_Month='Month Ordered';
	*part f;
	format Order_Date mmddyy10. Delivery_Date mmddyy10.;
	*Part d;
	keep Employee_ID Customer_ID Order_Date Delivery_Date Order_Month;
	run;

*part g;
proc contents data=work.delays;
run;

*part h;
proc print data=work.delays;
run;
