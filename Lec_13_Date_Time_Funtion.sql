use pw_sql;

select * from sakila_rental;

# Access the current Data which sql access from our local machine
select current_date();

# Access the current Time which sql access from our local machine
select current_time();

# Access the current Data as well as time which sql access from our local machine
# current_timestamp() and now() both are working same
select current_timestamp();
select now();

# ----------------------------------------------------------------------------------------
select * from sakila_rental;

# Access only date in rental_date column which from of now() or current_timestamp()
select rental_date, 
date(rental_date) as Only_rental_date
from sakila_rental;

# Access only time in rental_date column which from of now() or current_timestamp()
select rental_date,
time(rental_date) as Only_rental_time 
from sakila_rental;

# Access only Day in rental_date column which from of now() or current_timestamp()
select rental_date,
date(rental_date) as Only_Date,
day(rental_date) as Only_rental_Day,
month(rental_date) as Only_rental_Month,
year(rental_date) as Only_rental_Year,
time(rental_date) as Only_rental_time,
hour(rental_date) as Only_rental_hours,
minute(rental_date) as Only_rental_minute,
second(rental_date) as Only_rental_sec
from sakila_rental;

# -------------------------------------------------------------------------------

# date_add(column_name, interval no_of_day unit) 
# interval is a function which define interval for adding and substracting the date
# where
#	1. column_name is that column which contain dates
#	2. no_of_day : How many dates you want to add in the given date 
# 	3. unit : like adding day for day, adding year for year, adding month for month

select date(rental_date) as retal_date_only,
date_add(date(rental_date), interval 3 day) as submission_date
from sakila_rental;

# --------------------------------------------------------------------------------------

# date_sub(column_name, interval no_of_day unit) 
# Substract the date
# interval is a function which define interval for adding and substracting the date
# where
#	1. column_name is that column which contain dates
#	2. no_of_day : How many dates you want to add in the given date 
# 	3. unit : like adding day for day, adding year for year, adding month for month

select date(rental_date) as retal_date_only,
date_sub(date(rental_date), interval 3 day) as Assign_date
from sakila_rental;

# for monlth
select date(rental_date) as retal_date_only,
date_sub(date(rental_date), interval 1 month) as Assign_month
from sakila_rental;

# for year
select date(rental_date) as retal_date_only,
date_sub(date(rental_date), interval 3 year) as Assign_year
from sakila_rental;

# ----------------------------------------------------------------------------

# Difference between two date's

# datediff(rental_date,return_date)  here rental_date in previous date and return_date next date so it return negative value
select date(rental_date) as rental_date,
date(return_date) as return_date,
datediff(rental_date,return_date) as Holding_days
from sakila_rental;

# datediff(return_date,rental_date)  here rental_date in previous date and return_date next date so it return Positive value
select date(rental_date) as rental_date,
date(return_date) as return_date,
datediff(return_date,rental_date) as Holding_days
from sakila_rental;

select customer_id,
avg(datediff(return_date,rental_date)) as Average_Holding_days
from sakila_rental
group by customer_id;

# Return status
select customer_id,
if (avg(datediff(return_date,rental_date))>7, "Late", "Not-Late") as Returning_Status
from sakila_rental
group by customer_id;

# Return status
select customer_id,
if (avg(datediff(return_date,rental_date))>7, "Late", "Not-Late") as Returning_Status
from sakila_rental
group by customer_id
having Returning_Status = "Late";

select * from sakila_rental;