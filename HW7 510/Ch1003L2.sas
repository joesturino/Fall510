*10.3 level 2
*#5)

*part a;
proc sort data=orion.product_list out=work.product_list;
	by Product_Level;
run;

*part b;

data work.listlevel;
	merge orion.product_level work.product_list;
	by Product_Level;
	keep Product_ID Product_Name Product_Level Product_Level_Name;
run;

*part c;
proc print data=work.listlevel noobs;
	where Product_Level=3;
run;