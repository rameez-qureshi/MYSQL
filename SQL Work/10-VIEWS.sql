
-- we create views to hide some column from tables

CREATE DATABASE college_10;
USE college_10;

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
( 106, "Azaan", 36, "C", "Karachi");

CREATE VIEW Manager_Ali AS              -- create view for school manager
SELECT rollno,name FROM students;

SELECT * FROM Manager_ALi;

CREATE VIEW Teacher AS                  -- create view for school teacher
SELECT rollno,name,grade,marks FROM students;

SELECT * FROM Teacher
WHERE marks >40;

DROP VIEW Manager_ALi;    -- we can delete view like we can del tabless

