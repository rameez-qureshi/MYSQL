CREATE DATABASE college_9;
USE college_9;

CREATE TABLE  students (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO students
( rollno, name, marks, grade, city)
VALUES
( 101, "Ali", 45, "A", "Karachi") ,
( 102, "Affan", 39, "C", "Lahore") ,
( 103, "Anas", 46, "A", "Islamabad") ,
( 104, "Arhum", 42, "B", "Multan") ,
( 105, "Aliyan", 41, "B", "Peshawar") ,
( 106, "Azaan", 36, "C", "Karachi") ;

SELECT AVG(marks)
FROM students;   -- want to find class average marks

SELECT name, marks
FROM students
WHERE marks > 41.5000;   -- student name and marks those marks is greater than class average

SELECT name, marks                -- SUB QUERIES 1
FROM students
WHERE marks > ( SELECT AVG(marks) FROM students );   -- this is called SUB QUERIES

--  This is DYNAMIC query means this update automatically -- we not need to take avg and enter.

SELECT rollno,name
FROM students
WHERE rollno % 2 = 0 ;    -- show name of even rollno students

SELECT rollno,name
FROM students
WHERE rollno IN ( 102, 104, 106) ;    -- show name of listed rollno students

SELECT rollno,name                -- SUB QUERIES 2
FROM students
WHERE rollno IN (
	SELECT rollno
	FROM students
	WHERE rollno % 2 = 0
) ;                             -- This is DYNAMIC use this query to not need change in future

SELECT * FROM students WHERE city = "Karachi";

SELECT MAX(marks)                -- SUB QUERIES 3
FROM (SELECT * FROM students WHERE city = "Karachi") AS temp;    -- we need to use "AS" if we use subquery in FROM.
-- we can make a temporary table so we not write oiginal table name

SELECT ( SELECT MAX(marks) FROM students ), name              -- SUB QUERIES 4
FROM students;

-- we can use sub wuery in every keyword
-- but it is good to use sub query in WHERE keyword
