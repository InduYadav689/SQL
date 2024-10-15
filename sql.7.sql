-- JOINS in sql 
SELECT * FROM sys.employee e right outer join sys.department d on e.empID=d.deptID;
SELECT * FROM sys.employee e left outer join sys.department d on e.empID=d.deptID;
SELECT * FROM sys.employee e  inner join sys.department d on e.empID=d.deptID;
SELECT e.empID,age,occupationl FROM sys.employee e inner join sys.department d on e.empID=d.deptID;
-- self join
select * from sys.employee e1 join sys.employee e2 on e1.empID=e2.empID;
select * from sys.employee e1 join sys.employee e2 on e1.empID+1=e2.empID;

