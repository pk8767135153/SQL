use pw_sql;

select * from city;

# Display the Data in an Order
select * from country;

select Name, Continent, Region, SurfaceArea,
Population, LifeExpectancy from country
order by SurfaceArea; # order in acending order

select Name, Continent, Region, SurfaceArea,
Population, LifeExpectancy from country
order by Continent desc;

select Name, Continent, Region, SurfaceArea,
Population, LifeExpectancy from country
order by Population desc;

select Name, Continent, Region, SurfaceArea,
Population, LifeExpectancy, round((SurfaceArea/Population),2) as Population_Density
from country
order by Population_Density desc;

select Name, Continent, Region, SurfaceArea,
Population, LifeExpectancy, round((SurfaceArea/Population),2) as Population_Density
from country
order by Region,Population_Density;
# This command arrange first Region wise and In region they arrange in Population Density wise