use pw_sql;
select * from sakilafilm
limit 2;

# How many movie title starting from A
select * from sakilafilm
where title = "A";

# we write above command useing like
select * from sakilafilm
where title like "A";
# The above command find The movie name which movie name having "A" 
# but this is not our answer so there we use concetp like
select * from sakilafilm
where title like "A%";

# Write the commond which movie title end with A
select * from sakilafilm
where title like "%A";
# sql not case senctive 
select * from sakilafilm
where title like "%a";
# There is 22 Rows which movie title end with a 

# How many movie title contain a at somewhere in title (including start position and end position)
select * from sakilafilm
where title like "%a%";

# How many movie title does not contain a 
select * from sakilafilm 
where title not like "%a%";

# Find How many movie used special_feature as "Deleted Scenes"
select * from sakilafilm
where special_features like "Deleted Scenes";

# Find how many movie belong to Drama and Documentary category movie

# Drama Category
select * from sakilafilm
where description like "%drama%";

# Documentary Category
select * from sakilafilm 
where description like "%documentary%";
select * from sakilafilm;


# select new table sakila_actor
select * from sakila_actor;

# find which actorer first name contain  H at Third Position 
select  * from sakila_actor
where first_name like "__h%";

# find which actorer first name contain  H at Third Position and it has only 4 charter first_name 
select  * from sakila_actor
where first_name like "__h_";


# find which actor name start from start from N and it has 4 charter in the first name
select * from sakila_actor
where first_name like "n___";

select * from sakila_actor
where first_name like "nick%";

select * from sakila_actor;