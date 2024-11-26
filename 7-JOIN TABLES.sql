CREATE DATABASE college_7;
USE college_7;

CREATE TABLE  students (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE senior_students (
	id INT PRIMARY KEY,
    sname VARCHAR(50)
);

INSERT INTO students
( id, name )
VALUES
(101,"Ali"),
(102,"Affan"),
(103,"Ayaan"),
(104,"Adsfsdfs"),
(105,"Bsadasd");

INSERT INTO senior_students
( id, sname )
VALUES
(102,"RAZA"),
(105,"HAROON"),
(106,"MIRZA");

SELECT * FROM students;
SELECT * FROM senior_students;

SELECT *
FROM students
INNER JOIN senior_students
ON students.id = senior_students.id;        -- Show same students data

SELECT *
FROM students as s                          -- give shortcut name
INNER JOIN senior_students as ss            -- give shortcut name
ON s.id = ss.id;                            -- Show same students data

SELECT *                           -- show all data of left table and same of right table.
FROM students as s                 -- left table
LEFT JOIN senior_students as ss    -- right table
ON s.id = ss.id;

SELECT *                           -- show all data of right table and same of left table.
FROM students as s
RIGHT JOIN senior_students as ss
ON s.id = ss.id;

SELECT *                           -- show all data of both table. but this command not work in this software
FROM students as s
FULL JOIN senior_students as ss
ON s.id = ss.id;

SELECT *                           -- we use this method to show all data bcz previous command not work
FROM students as s
LEFT JOIN senior_students as ss    -- use LEFT JOIN or EIGHT JOIN to use FULL JOIN
ON s.id = ss.id
UNION
SELECT *
FROM students as s
RIGHT JOIN senior_students as ss
ON s.id = ss.id;

SELECT *                           -- remove all data of right table and remove same data of both table then
FROM students as s                 -- show remain data of left table
LEFT JOIN senior_students as ss
ON s.id = ss.id
WHERE ss.id IS NULL;

SELECT *                           -- remove all data of right table and remove same data of both table then
FROM students as s                 -- show remain data of right table
RIGHT JOIN senior_students as ss
ON s.id = ss.id
WHERE s.id IS NULL;

SELECT *                           -- we use this method to remove same data of both table and see remaining data
FROM students as s
LEFT JOIN senior_students as ss
ON s.id = ss.id
WHERE ss.id IS NULL
UNION
SELECT *
FROM students as s
RIGHT JOIN senior_students as ss
ON s.id = ss.id
WHERE s.id IS NULL;