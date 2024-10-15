SELECT * FROM sys.employee;
select * from sys.employee where dateofbirth>='1980-01-01' and gender!='Female';
select * from sys.employee where (firstname='Tom' and age=36) or age>55;
-- LIKE statement
-- %-anything can be  and _- specific no of digits
select * from sys.employee where lastname LIKE 'H__%';
select * from sys.employee where firstname LIKE 't_%';
select * from sys.employee where dateofbirth LIKE '1986%';
