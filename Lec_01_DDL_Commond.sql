-- Pratical 01 : In SQL 
-- DDL Commond 
-- Pravinsingh Korekar
-- 8767135153



-- Data Types in SQL :
	-- int : 
	-- varchar(size): A variable-length String.
	-- char(size) : a fixed-length string. if the data is smaller than the specified size, it's padded with spaces. 
	-- text: allows storing long text data.
	-- float/double: used for storing floating-point numbers or decimals.
	-- date : Represents a date in the formate YYYY-MM-DD
	-- datetime: store bote date and time information (YYYY-MM-DD HH:MM:SS)
	-- blob: Used to store binary data, such as images or files.
	-- decimal(size, decimals): fixed point numbers with a defined precision.

-- SQL Constraints :
	-- 1. NOT NULL: Ensures that columns cannot have NULL values.
	-- 2. UNIQUE: Guarantees all values in columns are unique.
	-- 3. PRIMARY KEY: A combination of NOT NULL and UNIQUE. It uniquely identifies a row in the table
	-- 4. FOREIGN KEY: Establishes a relationship between columns in two tables, enforcing referntial intergrity.
	-- 5. CHECK: Specifies a condition that each row must satisfy. example age>=18
	-- 6. DEFAULT: Assigns a default value to columns if no value is provided during insetion. 
	-- 7. AUTO_INCREMENT: Automatically generates unique values for columns, often used for primary keys.
	-- 8. UNIQUE KEY: Like UNIQUE, but can apply to multiple columns together 

-- Example: --> 
-- CREATE TABLE students (
--     student_id INT NOT NULL,
--     name VARCHAR(100) NOT NULL,
--     age INT,
--     CONSTRAINT pk_students PRIMARY KEY (student_id)
-- );


-- DDL Commands (Data Definition Language):
	-- 1. create
	-- 2. alter
	-- 3. drop
	-- 4. truncate 
	-- 5. rename
-- 1. Add a Column :
	-- ALTER TABLE students ADD grade INT;
-- 2. Modify a Column : 
	-- ALTER TABLE students MODIFY grade VARCHAR(10);
-- 3. Rename a Column : 
	-- ALTER TABLE students RENAME COLUMN grade TO final_grade;
-- 4. Drop a Column :
	-- ALTER TABLE students DROP COLUMN grade;
-- 5. Add a Constraint :
	-- ALTER TABLE students ADD CONSTRAINT unique_student_id UNIQUE (student_id);
-- 6. Rename a table
	-- ALTER TABLE students RENAME TO alumni;




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
