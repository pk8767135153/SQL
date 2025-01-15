-- Pratical 01 : In SQL 
-- DDL Commond 
-- Pravinsingh Korekar
-- 8767135153

-- Create Data Base PW_SQL
-- create database PW_SQL;
create database sql_database;

-- Use the SQL_database 
use sql_database;

-- create table 
create table courses
(
	course_id int,
    course_name varchar(50),
    mode_of_delivery varchar(20),
    student_in_taken int,
    faculty varchar(50)
);

-- select the all table  
-- select * from courses

-- Change the Name Of columns  
alter table courses change student_in_taken enroll_student int;

-- Change the Data Type of the columns 
alter table courses change course_id course_id varchar(20);

-- Add New columns in the courses table 
alter table courses add column loaction varchar(20); 

-- Change the columns name 
alter table courses rename courses;
select * from courses;
create table drop_table(
name varchar(20),
id int unique
);
-- drop table pw_courses
drop table drop_table;

-- create pw_skill database 
create database skill;
-- drop the data base 
drop database skill;

select * from courses
