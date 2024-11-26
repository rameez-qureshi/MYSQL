CREATE DATABASE college_connection6;
USE college_connection6;

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

SELECT * FROM students;

ALTER TABLE students
ADD COLUMN age INT;                              -- add column

ALTER TABLE students
ADD COLUMN age INT NOT NULL DEFAULT 20;          -- add column

ALTER TABLE students
RENAME TO stuentsssss;                           -- rename column

ALTER TABLE students
MODIFY COLUMN age VARCHAR(2);                    -- alter column

ALTER TABLE students
CHANGE age stu_age INT;                          -- ranme column

ALTER TABLE students
DROP COLUMN stu_age;                             -- del column

TRUNCATE TABLE students;         -- del data of table
DROP TABLE students;             -- del table