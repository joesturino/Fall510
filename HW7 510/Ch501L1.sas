*5.1 level 1
*#1)

*part a, b, c;


proc print data=orion.employee_payroll;
	var Employee_ID Salary Birth_Date Employee_Hire_Date;
	format Salary dollar11.2 Birth_Date mmddyy10. 
		   Employee_Hire_Date date9.;
run;
