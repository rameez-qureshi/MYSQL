CREATE DATABASE college_connection5;
USE college_connection5;

CREATE TABLE courses (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id)
    ON UPDATE CASCADE           -- when course id update on table course auto update on teacher table
    ON DELETE CASCADE
);

INSERT INTO courses
(id,name)
VALUES
(101,"English"),
(102,"Math"),
(103,"Science");

INSERT INTO teacher
VALUES
(01,"Shahid",101),
(02,"Haseen",102),
(03,"Raees",103);

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

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

SELECT * FROM courses;
SELECT * FROM teacher;

UPDATE courses        -- update course name
SET id=104
WHERE id=103;