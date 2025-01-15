-- Lec 03  : DQL Command 
-- Pratical 03 

--  Use pw_sql database
use pw_sql;

-- Select every columns from city
SELECT * FROM city;

-- select every columns from country
SELECT * FROM country;

--  Select specific columns form country table
SELECT Name, Continent, Region, SurfaceArea, Population, GNP FROM country;

--  Select All columns and Name columns  --> data + Name(column) 
SELECT *, Name FROM country;

-- Column Name shoud be lower case because sql is not case sencitive language 
SELECT Name, continent, region, surfaceArea, population, gnp FROM country;

-- Column Name shoud be Upper Case because sql is not case sencitive language
SELECT Name, Continent, Region, SurfaceArea, Population, GNP FROM country;

--  Calculate Population Density
select Name, Continent, Region, SurfaceArea, Population, GNP, Population/SurfaceArea from country;

--  Calculate Population Density with 2 decimal point
select Name, Continent, Region, SurfaceArea, Population, GNP, round(Population/SurfaceArea,2) from country;

--  Calculate Population Density with 2 decimal point and change columns name as Population_Density
select Name, Continent, Region, SurfaceArea, Population, GNP, round(Population/SurfaceArea,2) as Population_Density from country;
