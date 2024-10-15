-- STRING FUNCTIONS
-- LENGTH
select firstname,length(firstname) from sys.employee;
-- TRIM
select firstname,trim( firstname ) from sys.employee;
-- left trim
select firstname,ltrim(  firstname) from sys.employee;
select firstname,rtrim(    firstname    ) from sys.employee;
-- SUBSTRING
select firstname,substring(firstname,3) from sys.employee;
select lastname,substring(lastname,3,1) from sys.employee;
-- CONCATENATION
select firstname,lastname,concat(firstname," ",lastname) from sys.employee;
-- REPLACE
select lastname,replace(lastname,'r','e') from sys.employee;
-- UPPER AND LOWER -- LEFT AND RIGHT
select UPPER('sindhu');
select lower('YADAV');
select left('parvathiparameshwar',8);
select right('parvathiparameshwar',11);
-- LOCATE
select locate('d','Alexander');
-- Case statements
select firstname,lastname,salary,
CASE
	when salary>50000 and salary<60000 then salary+(salary*0.05)
END AS New_salary,
CASE
	when DeptID=6 then salary+(salary*0.10)
end as Bonus
from department;
select * from department;
-- SUBQUERIES STATEMENTS
select * from employee
where empID in (
select empID from department where empID=deptID
);
select * from employee
where empID in (
select empID from department where deptID=1
);
select * from sys.table t inner join sys.department d on t.DeptID=d.DeptID in 
(select DeptID from employee where t.DeptID=d.DeptID); 
select * from employee;
select firstname,salary,(select MAX(salary) from employee where max(salary)=salary) from employee;
select * from employee where salary =(select Max(salary) from employee where salary< (select max(salary) from employee ) )
select firstname,salary from employee order by salary desc;
select gender,avg(age),min(age),max(age),count(age) from employee group by gender;
select gender,avg(`max(age)`),avg(`min(age)`) from(
select gender,avg(age),min(age),max(age),count(age) from employee group by gender
) as aggregate_table group by gender;

select avg(`max(age)`),avg(`min(age)`) from(                                          # retrieving required columns with avg from another query
select gender,avg(age),min(age),max(age),count(age) from employee group by gender
) as aggregate_table ;

select gender,avg(`max(age)`) as avg_max_age,avg(`min(age)`) as avg_min_age from(
select gender,avg(age),min(age),max(age),count(age) from employee group by gender      # using alias names
) as aggregate_table group by gender;


