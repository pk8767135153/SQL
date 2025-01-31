use school;
insert into departments values (20336,"Problem Solving Using DSA Deparment","Ms.Vabhavi Pawar","$600,000",1012);
###								Basic Queries 														###
# -----------------------------------------------------------------------------------------------------#
# 1 : -> List all students who are older than 20.
select * from students
where student_age >= 20
order by student_age;
# -----------------------------------------------------------------------------------------------------#

# 2 : -> Find the names of all courses offered by the Computer Science department.
 select departments.Course_id,
(select course_name from courses 
where courses.course_id = departments.Course_id) as Computer_Science_Department_Course
from departments
where Department_name = "computer science";
# -----------------------------------------------------------------------------------------------------#

# 3 : -> Retrieve the names and cities of students from the state of Maharashtra. 
select student_name, student_city from students
where student_state = "Maharashtra";
# -----------------------------------------------------------------------------------------------------#

# 4 : -> Display the names of all teachers who teach courses with a duration of more than 10 weeks
select * from courses;
select course_teacher, course_duration from courses 
where 
(select replace(course_duration,"weeks","") as duration) >= 10;
# -----------------------------------------------------------------------------------------------------------------#

# 5 : -> Show the student ID,student_name and math scores of all students, sorted by math score in descending order.

select students.student_id, student_name, 
(select math from marks 
where marks.student_id = students.student_id) as math_marks
from students
order by math_marks desc;
# -----------------------------------------------------------------------------------------#

# 6 : -> List the names of all departments with a budget greater than $400,000
select Department_name
from departments
where replace(replace(department_budget,"$",""),",","") >= "400000";
# -----------------------------------------------------------------------------------------#

# 7 : -> Calculate the average age of all students.
select round(avg(student_age),2) as Average_Age_of_the_student from students;
# -----------------------------------------------------------------------------------------#

# 8 : -> Find the total budget of all departments.
select sum(replace(replace(department_budget,"$",""),",","")) as Total_Budget from departments;
# -----------------------------------------------------------------------------------------#

# 9 : -> Count the number of students enrolled in each course.
select students.course_code, 
(select course_name from courses
where courses.course_id = students.course_code) as course_name,
count(student_id) as Student_Counts
from students
group by course_code;
# -------------------------------------------------------------------------------------------#


# 10 : -> Find the highest math score among all students
select marks.Student_ID, 
(select student_name from students
where marks.student_id = students.student_id) as Student_name,
math as "math's marks"
from marks
where math = (select max(math) from marks);
# ---------------------------------------------------------------------------------#

# 11. : -> Determine the number of students in each city.
select student_city, 
count(student_id) as Number_of_students_belongs_to_specific_city from students
group by (student_city);
# ----------------------------------------------------------------------------------- # 

# 12. : -> List the number of students in each department.
select course_code, 
(select course_name from courses 
 where students.course_code = courses.course_id) as Course_Name,
count(student_id) as No_of_Students from students
group by course_code;
# --------------------------------------------------------------------------- #
# 13. : -> Find the average math score for students in each city, but only include cities with more than 10 students.
select * from marks left join students on marks.student_id = students.student_id;
select student_city, avg(math) as average_math_marks 
from marks left join students on marks.student_id = students.student_id
group by (student_city)
having count(students.student_id) > 10;
# --------------------------------------------------------------------------------------------------#
# 14. : ->  Retrieve the student's name, course name, and department name for all students.
select students.student_name,
course_name,
department_name from students 
left join courses  
on students.course_code = courses.course_id 
left join departments
on  departments.course_id = courses.course_id; #Data Structures and Algorithms
# ------------------------------------------------------------------------------------- #

# 15. : -> List all courses and the names of the teachers who teach them.
select course_name, course_teacher from courses;

# --------------------------------------------------------------------------------- #
# 16. : -> Find all students who are enrolled in courses offered by the Computer Science department.
select student_id, student_name, 
(select department_name from departments
 where departments.course_id = students.course_code) as Deparment from students
where course_code = (
select course_id from courses
where courses.course_id = (
select course_id from departments 
where department_name = "Computer Science")) ;
# ---------------------------------------------------------------------------------------------- #

# 17. : -> Find the names of students who have scored higher than the average math score
select students.student_id, student_name, Math 
from students left join marks
on marks.student_id = students.student_id
where  math > (select avg(math) from marks);

# 18. : -> Find the student(s) with the highest average score across all subjects.
select students.student_id, student_name,
((math+cpp+dsa+"computer networks"+english)/5) as avearage_marks_all_subject 
from marks left join students
on marks.student_id = students.student_id
where ((math+cpp+dsa+"computer networks"+english)/5) > (select avg(((math+cpp+dsa+"computer networks"+english)/5)) from marks);
# -----------------------------------------------------------------------------------------#

# 18. : -> Find the second highest math score. (A classic interview question!)
select * from marks
where math < (select max(math) from marks)
order by math desc 
limit 1; 
# ---------------------------------------------------------------------------------------------#

# 19. : -> Create a view that shows the student's name, course name, and marks for all students. 
create view student_view as
select students.student_id,student_name,math,cpp,dsa,
english
from students left join marks
on students.student_id = marks.student_id;

# select student_view 
select * from student_view;
# ---------------------------------------------------------------------------------------#

 
# 1. Find the total number of students enrolled.
select count(*)  as total_number_of_students from students;

# 2. I need name of the student which locate in Maharashtra
select student_id,student_name,student_city,student_state from students
where student_state = "Maharashtra"
order by student_city;

# 3. How many students belong to maharashtra
select count(*) as number_of_students_belongs_to_Maharashtra from students
where student_state =  "Maharashtra";
 
 # 4. Count how many students are enrolled in each course with course name
select course_code, 
(select Course_name from courses
where course_code = course_id) as Course_Name,
count(student_id) as Student_counts from students
group by(course_code);

# 5. List the students who are older than 20 years
select * from students
where student_age >= 20;
# Number Of student which age >=20 
select count(*) as "Number_of_Students age >= 20" from students
where student_age >=20;

# 6. Number of state 
select count(distinct student_state) as No_Of_state from students;


# 7. Fetch the details of students whose names start with the letter "A".
select student_name from students
where student_name like "A%";

# -----------------------------------------------------#

select * from students;
select * from departments;
select * from courses;

 

 