-- JOINING MULTIPLE TABLES TOGETHER
SELECT * FROM sys.table t inner join sys.department d on t.DeptID=d.DeptID inner join sys.employee e on e.empID=t.DeptID;
-- UNIONS STATEMENTS
SELECT firstname,lastname,'young' as label
 from sys.employee 
 where age<35
union 
SELECT firstname,lastname, 'male staff' as label
 from sys.employee 
 where gender='Male'
union 
select firstname,lastname,'high paid salary' as label 
from sys.department 
where salary<88000;
