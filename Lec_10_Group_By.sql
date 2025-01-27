use pw_sql;

select * from country;

select 
round(avg(Population)/1000000,2) as Avg_Population,
round(avg(LifeExpectancy),2) as Avg_LifeExpectancy,
round(avg(GNP)/10000,2) as Avg_GNP,
round(sum(SurfaceArea)/1000000,2) as Total_Surface
from country;

 
# Count the Number of Country
select count(Name) as No_Of_Country_Count, 
count(distinct Name) No_Of_Country_Count_With_Distinct from country;



# I want to Avg_Population, Avg_LifeExpectancy, Avg_GNP 
# and TotalSurface these data I want Continent wise
select
Continent,
round(avg(Population)/1000000,2) as Continent_Avg_Population,
round(avg(LifeExpectancy),2) as Avg_LifeExpectancy,
round(avg(GNP)/10000,2) as Avg_GNP,
round(sum(SurfaceArea)/1000000,2) as Total_Surface
from country
group by(Continent);

# This will work but not understable
select
round(avg(Population)/1000000,2) as Avg_Population,
round(avg(LifeExpectancy),2) as Avg_LifeExpectancy,
round(avg(GNP)/10000,2) as Avg_GNP,
round(sum(SurfaceArea)/1000000,2) as Total_Surface
from country
group by(Continent);



# I want to apply the condition using having because where will not take sql with group by
select
Continent ,
round(avg(Population)/1000000,2) as Avg_Population,
round(avg(LifeExpectancy),2) as Avg_LifeExpectancy,
round(avg(GNP)/10000,2) as Avg_GNP,
round(sum(SurfaceArea)/1000000,2) as Total_Surface
from country
group by Continent
having Total_surface < 25;

# Difference Between Where and Having : Where apply on unfiltered data or raw data but Having is apply on fillterd data.
# Group By working on simile like pivot table in excel

# We want the Population density Continent wise and GNP_Per_Capita Continent wise
select
Continent,
Population/SurfaceArea  as Population_Density,
round((GNP* 1000000)/Population,2) as GNP_Per_Capita 
from country
group by(Continent);
select * from country;

