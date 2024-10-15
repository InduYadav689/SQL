SELECT * FROM sys.employee;
-- HAVING CLAUSE  STATEMENTS
select gender,avg(salary) from sys.employee group by gender having avg(salary)<60000;
select avg(age),gender from sys.employee group by gender having avg(age)<2800;
select * from sys.department;
select occupationl,avg(salary) from sys.department group by occupationl having avg(salary)<60000;
select occupationl,avg(salary) from sys.department where occupationl LIKE 'o__%' group by occupationl having avg(salary)>10000;
-- LIMITS STATEMENTS
select * from sys.employee limit 4;
select * from sys.employee limit 6,3;
-- ALIASING STATEMENTS
-- mostly for renaming for aggregate functions
select gender,avg(age) avg_age from sys.employee group by gender; 