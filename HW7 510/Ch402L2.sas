*4.2 level 2
*#7)

*part a;
*sorts data by gender based on salary from highest to lowest;
proc sort data=orion.employee_payroll out=work.sort_sal;
	by Employee_Gender descending Salary;
run;
*////////////////////////////////////////////////////////

*part b;
*prints with no observation values by gender only showing 3 variables 
and a specific subset of those variables;
proc print data=work.sort_sal noobs;
	by Employee_Gender;
	var Employee_ID Salary Marital_Status;
	where Employee_Term_Date is missing and Salary > 65000;
run;
	


