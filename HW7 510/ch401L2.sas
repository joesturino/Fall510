*4.1 level 2

*part a;

*proc print data=orion.customer_dim;
*run;

*///////////////////////////////////////////
*part b;

*proc print data=orion.customer_dim noobs;
	*where Customer_Age between 30 and 40;
	*run;

*///////////////////////////////////////////	
*part c;
	
*proc print data=orion.customer_dim noobs;
	*where Customer_Age between 30 and 40;
	*id Customer_ID;
	*run;
	
*////////////////////////////////////////////
*part d;	
proc print data=orion.customer_dim noobs;
	where Customer_Age between 30 and 40; *only data where age is between 30 and 40;
	id Customer_ID; *moves customer_id to front of chart;
	var Customer_Name Customer_Age Customer_Type; *only displays these variables;
	run;	