use pw_sql;

select * from city;

select Name,Population,
if(Population<350468.2236,"Below Avg. of Glable Population","Above Avg. Of Global Population")
as Population_status from city;

select
if(Population<350468.2236,"Below Avg. of Glable Population","Above Avg. Of Global Population")
as Population_status ,
count(Name) as No_Of_Cities
from city
group by Population_status;



select * from sakila_address;
select * from employees;
insert into employees(emp_id,emp_name,salary) values 
(103,"Suraj",27000),
 (104,"Sunil",30000),
  (105,"Akash",20000);
select * from employees;

select * , ifnull(age,21) as ifnull_col from employees;



select * from country;

# nullif(para1,para2)
# If para1 equal to para2 then return null
# If para1 not equal to para2 then return para1
select Name , nullif(GNP,GNPOld) as check_GNP from country;


select Name, isnull(nullif(GNP,GNPOld)) as check_GNP from country;