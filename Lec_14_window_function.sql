# Windows Functions : 	It is use for organize data point 
# 						It cannot used with Aggressation function 
use pw_sql;

select * from country;
 
 # Give each Row as there Row Number for all data_point inside the dataset
 select 
 row_number() over (order by Continent) as Row_Number_order_by_continent,
 Name,Continent
 from Country;
 
 # Given each row as there there Row Number with based on Continent
 
 select 
 row_number() over (partition by Continent order by Name) as Row_Number_order_by_continent,
 Name,Continent
 from Country;
 
 
 # --------------------------------------------------------------------------------------------------
 
 # Rank function : Which work like row_number but only it gives you rank but row_number
select 
rank() over (order by Name) as Rank_Number_order_by_continent,
Name,Continent
from Country;


# Rank function : Which work like row_number but only it gives you rank but row_number
# 					If two row has same rank it will skip next rank like 36 36 assign 
#						rank of two datapoint the it will skip 37 rank it direactly give 38 rank
select LifeExpectancy,row_number() over (order by Name) as row_number_,
rank() over (partition by continent order by LifeExpectancy ) as Rank_Number_order_by_continent,
Name,Continent
from Country;

select LifeExpectancy,row_number() over (order by Name) as row_number_,
rank() over (partition by continent order by LifeExpectancy ) as Rank_Number_order_by_continent,
dense_rank() over (partition by continent order by LifeExpectancy ) as Dense_Rank_Number_order_by_continent,
Name,Continent
from Country;

select * from country;
# ---------------------------------------------------------------------------------------
# ntile(n) where n in number of cluster/group of entire dataa
# Break the entire data into 6 part accrouding to city population
select * from city;

select 
*,
ntile(4) over (order by Population) as Category
from city;

# ----------------------------------------------------------------------------------------------#

# lag()
select * from country;

select name,Population, lag(Population,1) over (order by Population desc) as Previous_population from country;

select name,Population, lag(Population,2) over (order by Population desc) as Previous_population from country;

# ----------------------------------------------------------------------------------------------------#
# lead()

select name,Population, lead(Population,1) over (order by Population desc) as Previous_population from country;

select name,Population, lead(Population,2) over (order by Population desc) as Previous_population from country;