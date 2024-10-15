SELECT * FROM sys.department;
select DeptID,AVG(salary) from sys.department GROUP BY DeptID  ORDER by DeptID;
select * from sys.department;
select DeptID,Sum(salary) from sys.department Group by DeptID order by DeptID;
select occupationl,avg(salary) from sys.department group by occupationl order by avg(salary);
-- order by clause
select * from sys.employee order by gender,age;
select * from sys.employee order by age,gender;# here gender is not order 
select * from sys.employee order by 5,4;# Here 5 coloumn-gender and 4 column-age



 
