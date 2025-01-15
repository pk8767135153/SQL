# Logical Operators --> AND , OR
use pw_sql;

select * from country
limit 1;

select Name, Continent, IndepYear, Population, LifeExpectancy, GNP from country
limit 5;

### Dispaly the data of all asian countries where population > 10mm

select Name, Continent, IndepYear, Population, LifeExpectancy, GNP from country
where Continent = "Asia" and Population > 10000000
order by Population
limit 5;

select Name, Continent, IndepYear, Population, LifeExpectancy, GNP from country
where Continent = "Asia" and Population > 10000000 and Name = 'India';


select Name, Continent, IndepYear, Population, LifeExpectancy, GNP from country
where Continent = "Asia" or Population > 10000000;


select Name, Continent, IndepYear, Population, LifeExpectancy, GNP from country
where (Continent = "North America" or Population > 10000000) and Name = 'India';


select Name, Continent, IndepYear, Population, LifeExpectancy, GNP from country
where (Continent = "North America" and Population > 10000000) or Name = 'India';

select Name, Continent, IndepYear, Population, LifeExpectancy, GNP from country
where Continent = "North America" or  Continent = 'Asia' or Continent = 'Africa'
order by Continent;

