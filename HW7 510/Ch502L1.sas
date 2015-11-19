*5.2 level 1
*#4)

*part a;
data Q1Birthdays;
   set orion.employee_payroll;
   BirthMonth=month(Birth_Date);
   if BirthMonth le 3;
run;

proc format;
*part b;
	value $gender
		'F'='Female'
		'M'='Male';
*part c;
	value mname
		1='January'
		2='February'
		3='March';
run;

*part d;
title1'Employees with Birthdays in Q1';

proc print data=Q1Birthdays;
	var Employee_ID Employee_Gender BirthMonth;
	format Employee_Gender $gender. BirthMonth mname;
run;
title;

		