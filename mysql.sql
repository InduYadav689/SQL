SELECT * FROM world_layoffs.layoffs;
select * from new_layoffs;
insert into new_layoffs select * from world_layoffs.layoffs; 
select * from new_layoffs;

with new_layoffs_cte as(
select *,row_number()over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions)
as row_num from new_layoffs
)
select * from new_layoffs;