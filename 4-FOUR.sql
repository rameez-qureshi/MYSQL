CREATE DATABASE college_connection4;
USE college_connection4;

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

UPDATE student 
SET grade = "F"
WHERE grade = "C";

SET SQL_SAFE_UPDATES=0;   -- set safe mode off bcz if give error on previous line
SET SQL_SAFE_UPDATES=1;   -- set safe mode again ON

SELECT * FROM student;

UPDATE student SET marks=37 WHERE rollno=106 ;     -- update anything of students from data 
UPDATE student SET marks=37 WHERE name="Azaan" ;
UPDATE student SET grade = "B" WHERE marks BETWEEN 41 AND 44 ;
UPDATE student SET marks = marks + 1;       -- All student marks +1
UPDATE student SET marks = marks - 1;       -- All student marks -1

DELETE FROM student WHERE marks<35 ;
DELETE FROM student WHERE name="Azaan" ;    -- del Azaan student name data