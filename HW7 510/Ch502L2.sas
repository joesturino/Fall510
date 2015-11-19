*5.2 level 2
*#5);

proc format;
*part b;
	value $gender
		'F'='Female'
		'M'='Male'
		other='Invalid Code';
*part c;
	value Salrange .='Missing Salary'
		20000-<100000='Below $100,000'
		100000-500000='$100,000 or more'
		other='Invalid Salary';
		
*part a, d;
title1 'Salary and Gender Values';
title2 'for Non-Sales Employees';

proc print data=orion.nonsales;
   var Employee_ID Job_Title Salary Gender;
   format Salary salrange. gender $gender.; 
run;
title;






