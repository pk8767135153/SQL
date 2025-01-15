-- Lec 03  : DQL Command 
-- Pratical 03 

--  Use pw_sql database
use pw_sql;

-- Select every columns from city
SELECT * FROM city;

-- select every columns from country
SELECT * FROM country; 
--  Calculate Population Density with 2 decimal point and change columns name as Population_Density
select Name, Continent, Region, SurfaceArea, Population, GNP, round(Population/SurfaceArea,2) as Population_Density from country;

# This Order By Descending Order by according Population Density columns
select Name, Continent, Region, SurfaceArea, Population, GNP, 
round(Population/SurfaceArea,2) as Population_Density 
from country
order by Population_Density desc;

# Add Limit it work like head() in pandas 
select Name, Continent, Region, SurfaceArea, Population, GNP, 
round(Population/SurfaceArea,2) as Population_Density 
from country
order by Population_Density desc
limit 3;

## Country with highes per capita income 
select Name, Continent,Population
GNP, round(GNP*1000000/Population,2) as Per_Capita_Income
 from country
 order by Per_Capita_Income desc
 limit 5;

# Display the data of countries within 11 to 15 as per Per_Capita_Income
select Name, Continent,Population
GNP, round(GNP*1000000/Population,2) as Per_Capita_Income
 from country
 order by Per_Capita_Income desc
 limit 10
 offset 160;
# offset : --> Ignore the n data point from start at top position

# 	India	Asia	1013662000	441.09 rank -- 159
select * from country;
