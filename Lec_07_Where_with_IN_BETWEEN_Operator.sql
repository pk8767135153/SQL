use pw_sql;

select * from country
limit 4;

## -------------------------------------------------------------------------------------------#

## IN Operator

#This below code is not efficient so there for we use IN Operator
select * from country
where Continent = 'Asia' or Continent = 'Africa' or Continent = 'Europe';

# This below code is efficient 
# IN Operator useful for checking multiple condition but on the same column 
select * from country
where Continent in ('Asia','Africa','Europe');

# Check Two columns condition 
select * from country
where Continent in ('Asia','Africa','Europe') and IndepYear in (1947,1946,1948);


### -------------------------------------------------------------------------------------#

# BETWEEN Operator :

# Syntax : --> where col_name between start_point and end_point
 
select * from country
limit 2;

# Between Operation on LifeExpectancy
select Name, Region, Continent, LifeExpectancy 
from country
where LifeExpectancy between 80 and 100;


# Change the position of start_point and end_point
# syntax will be correct but logic will be wrong 
# it start from 100 and go towords 80 that will be wrong
select Name, Region, Continent, LifeExpectancy 
from country
where LifeExpectancy between 100 and 80;
# for this case it will return NULL

# Between Opeator on text data 
select  Name, Continent, Region from country
where Name between 'China' and 'India'
order by Name;

# syntax will be write but logic will be worng
select  Name, Continent, Region from country
where Name between 'India' and 'China'
order by Name;
