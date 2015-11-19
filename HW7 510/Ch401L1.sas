*4.1 level 1

*part a

*proc print data=orion.order_fact;
*run;

*////////////////////////////////////

*part b

*proc print data=orion.order_fact;
	*sum Total_Retail_Price;
*run;

*////////////////////////////////////

*parts c, d, e;

proc print data=orion.order_fact noobs;
	where Total_Retail_Price > 500; *making sure only observations in Ret. Pri. >500;
	id Customer_ID; *moves this to front of chart;
	var Order_ID Order_Type Quantity Total_Retail_Price; *only these variables will be displayed in results;
run;