SELECT * FROM world_layoffs.layoffs;
create table duplicate_tuple like world_layoffs.layoffs; 
show tables
select  * from duplicate_tuple ;

insert into duplicate_tuple select * from world_layoffs.layoffs ;
select * from duplicate_tuple;

select *,row_number() over(partition by 
company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions)
as row_num 
from duplicate_tuple;



with duplicate_cte as(
select *,row_number() over(partition by 
company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions)
as row_num 
from duplicate_tuple )
select * from duplicate_cte where row_num>1


