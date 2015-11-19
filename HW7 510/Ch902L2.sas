*9.2 level 2

*#6)

*part a;

data work.season;
	set orion.customer_dim;
*gets the promo2 variable to print the full word senior;
	length Promo2 $ 6;
*part b;
	Quarter=qtr(Customer_BirthDate);
	if Quarter=1 then Promo='Winter';
	else if Quarter=2 then Promo='Spring';
	else if Quarter=3 then Promo='Summer';
	else if Quarter=4 then Promo='Fall';
	if Customer_Age>=18 and Customer_Age<=25 then Promo2='YA';
	else if Customer_Age>=65 then Promo2='Senior';
*part c;
	keep Customer_FirstName Customer_LastName
		 Custome_BirthDate Customer_Age 
		 Promo Promo2;
		 
*part d;
proc print data=work.season;
	var Customer_FirstName Customer_LastName 
		Customer_BirthDate Promo 
		Customer_Age Promo2;
run;

*#7)
*part a;

data work.ordertype;
	set orion.orders;
*part b;
	DayofWeek=weekday(Order_Date);
*part c, d;
	if Order_Type=1 then Type='Retail Sale';
	else if Order_Type=2 then do Type='Catalog Sale'; SaleAds='Mail';
	end;
	else if Order_Type=3 then do Type='Internet Sale'; SaleAds='Email';
	end;
*part e;
	drop Order_Type Employee_ID Customer_ID;
	run;
	
*part f;
proc print data=work.ordertype;
	var Order_ID Order_Date Delivery_Date Type SaleAds DayofWeek;
run;
		