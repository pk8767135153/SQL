-- Lec_02_DML_Command.sql
-- Pratical 02 : In SQL 
-- DML Commond 
-- Pravinsingh Korekar
-- 8767135153



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