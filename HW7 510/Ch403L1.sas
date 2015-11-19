*4.3 level 1
*#9)

*part a, b, and c;

title1 'Austrailian Sales Employees';
title2 'Senior Sales Representatives';
footnote1 'Job_Title: Sales Rep. IV';

proc print data=orion.sales noobs;
	where Country='AU' and Job_Title contains 'Rep. IV';
	var Employee_ID First_Name Last_Name Gender Salary;
run;

*part d;

title;
footnote;
*//////////////////////////////////////////////////

*#10)

*part a;

*title 'Entry-level Sales Representatives';
*footnote 'Job_Title: Sales Rep. I';

*proc print data=orion.sales noobs;
	*where Country='US' and Job_Title='Sales Rep. I';
	*var Employee_ID First_Name Last_Name Gender Salary;
	*new line added here;
	*label Employee_ID="Employee ID" 
		First_Name="First Name" 
		Last_Name="Last Name" 
		Salary="Annual Salary";
*run;

*title;
*footnote;
*//////////////////////////////////////////

*part b;
title 'Entry-level Sales Representatives';
footnote 'Job_Title: Sales Rep. I';

proc print data=orion.sales noobs split=' ';
	where Country='US' and Job_Title='Sales Rep. I';
	var Employee_ID First_Name Last_Name Gender Salary;
	label Employee_ID="Employee ID" 
		First_Name="First Name" 
		Last_Name="Last Name" 
		Salary="Annual Salary";
run;

title;
footnote;










