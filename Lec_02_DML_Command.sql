-- Lec_02_DML_Command.sql
-- Pratical 02 : In SQL 
-- DML Commond 
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

use pw_sql;

create table school
(
	student_id int unique,
    student_name varchar(30) not null,
    school_name varchar(40) default("Maharashtra Vidyalaya Barshi"),
    student_marks int check(student_marks >=35),
    primary key(student_id)
);

insert into school values
(101,"Pravinsingh Korekar","Sant Dnyaneshwar High School",71),
(102,"Suraj Korekar","Sant Dnyaneshwar High School",80);
select * from school;

insert into school(student_id,student_name,student_marks) values(106,"Vabhavi Pawar",87);
select * from school;

-- insert into school(student_id,student_name,student_marks) values(104,"Sujit Sharma",20);
-- It return error that is check constraint is violated means we apply that condition is not True 
select * from school;

insert into school(student_id,student_name) values(106,"Vabhavi Pawar");
-- Here also same error happen beacuse we cannot put null value in student_marks

select * from school;

-- Update Data Point 
UPDATE school 
SET student_name = "PVK"
WHERE student_id = 106;

select * from school;
