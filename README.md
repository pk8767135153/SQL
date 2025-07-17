# SQL

### DDL , DML, DQL, <br><br>
<hr>
  - Limit and Order by <br>
  - Relation Operator : [ <> not equal to] <br>
  - Logical Operator : AND,OR    <br>
  - IN and BETWEEN Operator     <br>



--------------------------------------------------------------------------------------------------------------------
The LIKE operator in SQL is used to search for a specified pattern in a column. It is often used with wildcard characters to perform flexible matching. Here's a quick overview:

Syntax
Copy the code
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;

Wildcards
%: Represents zero, one, or multiple characters.
Example: WHERE name LIKE 'A%' (matches names starting with 'A').
_: Represents a single character.
Example: WHERE name LIKE 'J_n' (matches 'Jan', 'Jon', etc.).
[ ]: Matches any single character within the brackets.
Example: WHERE name LIKE 'J[aeiou]n' (matches 'Jan', 'Jen', etc.).
[^ ]: Matches any single character not within the brackets.
Example: WHERE name LIKE 'J[^aeiou]n' (matches 'Jyn', 'Jbn', etc.).
Examples

Basic Pattern Matching

Copy the code
SELECT * FROM employees
WHERE name LIKE 'S%';


Retrieves all employees whose names start with 'S'.

Using _ for Single Character

Copy the code
SELECT * FROM products
WHERE code LIKE 'A_1';


Matches codes like 'AB1', 'AC1', etc.

Combining Wildcards

Copy the code
SELECT * FROM customers
WHERE address LIKE '%Street%';


Finds addresses containing the word 'Street'.

The LIKE operator is case-insensitive in some databases (e.g., MySQL) but case-sensitive in others (e.g., PostgreSQL). Always check your database's behavior!
