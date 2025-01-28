use pw_sql;

select * from world_country;
select * from world_city;
select * from world_country_language;


# Number of city in world_city table

# select count(CountryCode) as Number_Of_City from world_city; # --> This code also count repeted countrycode
select count(distinct CountryCode) as Number_Of_Country_in_world_city from world_city; # --> This code count only unique CountryCode
# 232 Unique Number_Of_Country_in_world_city 

select count(distinct Code) as Number_Of_Country_in_world_country from world_country;
# 239 unique  Number_Of_Country_in_world_country

select count(distinct CountryCode) as Number_Of_Country_in_world_Language from world_country_language;
# 233 unique  Number_Of_Country_in_world_country_language
/* 	Wrong Logic
	select Name,District,Language,IsOfficial,Percentage
	from world_city inner join world_country_language
	on world_city.CountryCode = world_country_language.CountryCode;
*/


/*
Inner Join ::-->
# make the table which as country name , city name , city population and country population 
 select world_country.Name as country_name,
world_city.Name as city_name, 
world_city.Population as city_population,
world_country.Population as country_Population 
from world_city inner join world_country 
on world_city.CountryCode = world_country.code;
*/

select world_country.Name as country_name,
world_city.Name as city_name, 
world_city.Population as city_population,
world_country.Population as country_Population 
from world_city inner join world_country 
on world_city.CountryCode = world_country.code;
# ---------------------------------------------------------------------------#
/*
	Left Join :
		It take all the data from Left table provide corresponding data from Right table.
		Problem Statement: We need to count number of city according each country in 
		number of city is null that ok for this time
*/

 # ------------------------------------------------------------------------------------------------------#
select world_city.countrycode,
count(distinct world_city.Name) as Number_of_City,
count(distinct District) as Number_of_District
from world_country left join world_city
on 
world_country.code = world_city.countrycode
group by world_city.countrycode;
 -- ----------------------------------------------------------#

/*
	Right Join :: --> 
		It take all the data from right table provide corresponding data from left table
*/

select world_city.countrycode,
count(distinct world_city.Name) as Number_of_City,
count(distinct District) as Number_of_District
from world_country right join world_city
on 
world_country.code = world_city.countrycode
group by world_city.countrycode;

select world_city.countrycode,
count(distinct world_city.Name) as Number_of_City,
count(distinct District) as Number_of_District
from  world_city  right join  world_country
on 
world_country.code = world_city.countrycode
group by world_city.countrycode;
# --------------------------------------------------------------------------------------

# Full Join 
SELECT Region
FROM world_country
FULL JOIN world_city
ON world_city.CountryCode = world_country.Code;
 

select * from world_country;
select * from world_city;
select * from world_country_language;
