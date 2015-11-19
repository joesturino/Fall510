*5.1 level 2
*#2)

*part a;

title1 'US Sales Employees';
title2 'Earning Under $26,000';

proc print data=orion.sales noobs;
	where Country='US' and Salary<26000;
	var Employee_ID First_Name Last_Name Job_Title Salary Hire_Date;
	label Employee_ID='Employee_ID'
		  First_Name='First Name'
		  Last_Name='Last Name'
		  Job_Title='Title'
		  Hire_Date='Date Hired';
	format Salary dollar11. Hire_Date monyy7.;
run;
title;
footnote;
		  
		   