*4.2 level 1
*#5)

*part a;

*proc sort data=orion.employee_payroll
		  out=work.sort_salary;
	*by Salary;
*run;			


*//////////////////////////////////////

*part b;

*proc sort data=orion.employee_payroll out=work.sort_salary;
	*by Salary;
*run;	
*new piece;		
*proc print data=work.sort_salary;
*run;

*////////////////////////////////////////////////////////////
*#6)

*part a;
*sorts data by employee gender in descending order of salary;
proc sort data=orion.employee_payroll out=work.sort_salary2;
	by Employee_Gender descending Salary;
run;
*////////////////////////////////////////////////////////////
*part b;
*prints the data in groups by geneder;
proc print data=work.sort_salary2;
	by Employee_Gender;
run;









