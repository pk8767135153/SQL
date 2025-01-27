# String Function
# concat()
# replace()
# Left/Right
# Upper/Lower
# substring
# Trim/Ltrim/Rtrim
# Reverse
# Length

use pw_sql;

select * from sakila_actor;
# Concat Tow string
select concat("Hello","Pravin");

# Concat Two Columns
select first_name, last_name, concat(first_name," ",last_name) from sakila_actor;


# Concat Two Columns which contian all string in lower case
select first_name, last_name, concat(lower(first_name)," ",lower(last_name)) from sakila_actor;

# Concat Two Columns which contian all string in Upper case
select first_name, last_name, concat(upper(first_name)," ",upper(last_name)) from sakila_actor;

select first_name, last_name, replace (last_name,"MANSFIELD","Korekar") as replaceName from sakila_actor
where first_name = "ED";

# Replace
select "Pravinsingh Arun Korekar" as Me, replace("Pravinsingh Arun Korekar","Pravinsingh","Priyanka") as sister;

# Concat Two Columns which contian First string in Upper case and second string in lower case
select first_name, last_name, concat(upper(first_name)," ",lower(last_name)) from sakila_actor;

# right() & left() function
select Name, left(Name,3) as First_3_letter_of_country, Continent from country;
select Name, right(Name,3) as Last_3_letter_of_country, Continent from country;

# Substring Function
select * from employees;

# substring()
select emp_name, email, substring(email,1,7) from employees;

# Trim()
select * from sakila_actor;
select concat("    		",first_name,"       ",last_name,"      ") as full_name from sakila_actor;
select trim(concat("    		",first_name,"       ",last_name,"      ")) as full_name from sakila_actor;
select rtrim(concat("    		",first_name,"       ",last_name,"      ")) as Last_Space_rtrim_full_name from sakila_actor;   # Remove last_space remove
select ltrim(concat("    		",first_name,"       ",last_name,"      ")) as Start_Space_ltrim_full_name from sakila_actor; # Remove Start Space
 
 
 # reverse()
 select * from country;
 select Name,Population,reverse(Population) from country;
 select Name, reverse(Name) from country;
 
 # length
 
 select Name, length(Name) as Number_Of_Charater_in_country_name from country;
 

