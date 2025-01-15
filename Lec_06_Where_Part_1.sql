# Filter The Data 
## used where and having command
### Relational Operator :-> ( >,<,>=,<=,<>[not equal to])


# where is used most of the cased
# having is mostly used when group by is used
use pw_sql;

select * from city;

select * from city
where Population > 500000;

select * from city
where Population = 500000;

select * from city
where Name = "Pune";

select * from country;

select Name,Continent,Region,SurfaceArea,Population,
round((Population/SurfaceArea),2) as PopulationDensity 
from country;

# Here round((Population/SurfaceArea),2) is working but we replace by PopulationDensity is not working
select Name,Continent,Region,SurfaceArea,Population,
round((Population/SurfaceArea),2) as PopulationDensity 
from country where round((Population/SurfaceArea),2) > 10000;

# Here PopulationDensity is not working 
select Name,Continent,Region,SurfaceArea,Population,
round((Population/SurfaceArea),2) as PopulationDensity 
from country where PopulationDensity> 10000;

select Name, Region, Population, LifeExpectancy from country
where LifeExpectancy <= 70
order by LifeExpectancy;

select Name, Region, Population, LifeExpectancy from country
where LifeExpectancy <> 70
order by LifeExpectancy desc;

select Name,Region,Population,LifeExpectancy from country
where LifeExpectancy <> 70; #<> --> Not equal to operand
 
 select Name, Region, Population, LifeExpectancy from country
 where Name = "India";
 
select Name, Region, Population, LifeExpectancy from country
where Name > "India"
order by Name;

select Name, Region, Population, LifeExpectancy from country
where Name >= "India"
order by Name desc;

select Name, Region, Population, LifeExpectancy from country
where Name <= "India"
order by Name;

select Name, Region, Population, LifeExpectancy from country
where Name <= "India"
order by Name desc;