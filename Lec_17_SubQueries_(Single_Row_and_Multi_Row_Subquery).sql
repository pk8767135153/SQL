use pw_sql;


## =-                      Write Subquery for filtering data 					-= ##
# ---------------------------------------------------------------------------------- # 
/*
	Single Row Subquery : That query always return single row as a output
		Problem : Find all city which has population greater than average population 
	note : In single row subquery we use equal ('=') to operation because there is only one value
*/
select * from city;
# Getting avarage of population 
select avg(population) from city;
# 350468.2236
select CountryCode,Name, Population from city
where Population >= (select avg(Population) from city);

# ------------------------------------------------------------------------------


/*
	Multi Row Subquery : 
		Those subquery gives multiple row as a output 
	note:	Multi row subquery we use 'IN' clause because there is bunch of value 
			we cannot compare one value into bunch of values
		
	Problem : Feach those city which loacted in asia Continent and whose city 
		solution : city_name present in city table but continent present in country table 
    
*/

select * from city;
select CountryCode,Name,Population from city
where CountryCode in
(select Code from country 
where Continent = "Asia");

select Code from country 
where Continent = "Asia";


-- ----------------------------------------------------------------------------------------------------------
--  -- > Single Row Subquery and Multi Row Subquery 

/*
Problem : Feach those city which loacted in asia Continent and whose city has more population compare to avarage population cityes
		solution : city_name present in city table but continent present in country table 
*/
select CountryCode,Name,Population from city
where CountryCode in
(select Code from country 
where Continent = "Asia") 
and Population >= (select avg(Population) from city);


## =-                      Write Subquery for Feaching data 					-= ##
# ---------------------------------------------------------------------------------- # 

select * from city;
select * from country;
/*
	Feach column from another table using subquery 
    Key Point Comman Column (foreign key) maching where where clause
*/

select CountryCode, Name, Population as city_Population,
(select Name from country
where city.CountryCode = country.Code) as Country_Name
from city;

select CountryCode, Name, Population as city_Population,
(select Name from country
where city.CountryCode = country.Code) as Country_Name,
(select  Region from country
where city.CountryCode = country.Code) as Country_Region
from city;
