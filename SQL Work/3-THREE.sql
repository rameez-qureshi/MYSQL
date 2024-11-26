CREATE DATABASE callege;
USE callege;

CREATE TABLE  student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
( rollno, name, marks, grade, city)
VALUES
( 101, "Ali", 45, "A", "Karachi") ,
( 102, "Affan", 39, "C", "Lahore") ,
( 103, "Anas", 46, "A", "Islamabad") ,
( 104, "Arhum", 42, "B", "Multan") ,
( 105, "Aliyan", 41, "B", "Peshawar") ,
( 106, "Azaan", 36, "C", "Karachi") ;

SELECT * FROM student;                      -- * select all columns
SELECT name,marks FROM student;
SELECT name,marks FROM student WHERE marks>40;
SELECT * FROM student WHERE city="Karachi";
SELECT * FROM student WHERE marks>40 AND city="Karachi";             -- AND both condition true of student table
SELECT * FROM student WHERE marks>40 OR city="Multan";               -- OR anyone condition true of student table
SELECT * FROM student WHERE marks BETWEEN 41 AND 45;
SELECT * FROM student WHERE city IN ( "Lahore", "Multan", "USA");
SELECT * FROM student WHERE city NOT IN ( "Lahore", "Multan", "USA") ;
SELECT * FROM student LIMIT 3 ;
SELECT * FROM student WHERE marks<40 LIMIT 2 ;
SELECT * FROM student ORDER BY marks ASC;        -- marks in ascending order
SELECT * FROM student ORDER BY marks DESC;        -- marks in deascending order
SELECT * FROM student ORDER BY marks DESC LIMIT 3;
SELECT COUNT(marks) FROM student ;                -- COUNT, MAX, MIN, SUM, AVG       ( CLAUSE )
SELECT city, COUNT(rollno) FROM student GROUP BY city;          -- count number of students from  every city
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city ASC;

SELECT city, COUNT(rollno) FROM student GROUP BY city HAVING MAX(marks)>40 ;    -- show cities which marks>40 and also show all no of students 


-- GENERAL ORDER

-- SELECT coulmn(s)
-- FROM tablename
-- WHERE condition
-- GROUP BY coulmn(s)
-- HAVING condition
-- ORDER BY coulmn(s) ASC;

SELECT city
FROM student
where grade = "A"
GROUP BY city
HAVING MAX(marks) > 40
ORDER BY city ASC;