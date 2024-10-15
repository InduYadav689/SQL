-- WINDOW FUNCTIONS....
SELECT * from employee e join department d on e.empID=d.empID ;
SELECT e.firstname,d.lastname,gender,avg(salary) over(partition by gender) from employee e join department d on e.empID=d.empID  ;

SELECT e.firstname,d.lastname,gender,avg(salary) OVER(PARTITION BY gender) from employee e join department d on e.empID=d.empID  ;
select occupationl,avg(salary) over(partition by occupationl order by empID) from department;
select * from department;
select firstname,lastname,gender,avg(age) over(partition by gender) from employee;

SELECT e.firstname,d.lastname,gender,avg(salary) OVER(PARTITION BY gender order by e.firstname) from employee e join department d on e.empID=d.empID  ;
select firstname,lastname,gender,sum(age) over(partition by gender  order by empID) as rolling_total from employee;


select e.empID,e.firstname,e.lastname,e.gender,d.salary, row_number() over(partition by gender order by salary desc) as row_num  ,
 rank() over(partition by gender  order by salary desc) as rank_num,
 dense_rank() over(partition by gender  order by salary desc) dense_num
 from department d join employee e on e.empID=d.empID
 -- CTE- STATEMENTS
with CTE_example as (
 SELECT e.gender,avg(salary),min(d.salary),max(d.salary)
 from employee e join department d on e.empID=d.empID
 group by gender)
 select * from CTE_example;
 
 
 with cte_example as(
 select empID,firstname,age from employee where age<35),
 with cte_example2 as(
 select empID,firstname,dateofbirth from employee where dateofbirth>'1982-01-01')
 select * from cte_example  join cte_example2 t on  cte_example.empID=cte_example2 .empID;
 
 
 -- TEMP TABLES
 create temporary table salary_table(
 firstname varchar(30),
 lastname varchar(45),
 favourite_movie  varchar(60)
 )
 insert into salary_table values('rachana','yadav','you are my destiny');
 select * from salary_table;

 
create temporary table salary
select * from department where salary>50000;
select * from salary;


-- create procedure statements

create procedure  salary2()
select * from department where salary>30000;
call department.salary();

DELIMITER $$
create procedure employee_age(indu int)
BEGIN 
	select * from employee  where empID=indu;
END $$

DELIMITER ;
call employee_age(1);

