SELECT * FROM world_layoffs.layoffs;
create table layoffs_staging1
like world_layoffs.layoffs;
insert layoffs_staging1
select * from world_layoffs.layoffs;
select * from layoffs_staging1;

with duplicate_cte as(
select *,row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions)
as row_num from layoffs_staging1
)
select * from duplicate_cte where row_num>=1 and company=' E Inc.';
select * from layoffs_staging1;