use pw_sql;
select * from country;

select Population from country;

# sum function on Population Columns
select sum(Population) as Total_word_Population_in_mn from country;

# Avarage Of Popualtion
select avg(Population) as Avarage_Of_Population_in_mn from country;

# Avarage Of Popualtion upto 2 decimal point
select round(avg(Population),2) as Avarage_Of_Population_in_mn from country;

select * from country;
select round(avg(Population)/1000000,2) as Avg_Population,
round(avg(LifeExpectancy),2) as Avg_LifeExpectancy,
round(avg(GNP)/10000,2) as Avg_GNP,
round(sum(SurfaceArea)/1000000,2) as Tota_Surface
from country;

select 
count(Name) as Number_Of_Country,
count(Continent) as Number_Of_Continent # 239 which is not possiable we know Continents are 7
from country;

select 
count(Name) as Number_Of_Country,
count(distinct Continent) as Number_Of_Continent # which is not possiable we know Continents are 7
from country;


# count(features_name) : return number of values
# count(distinct features_name) : return number unique value
select * from country
limit 2;

