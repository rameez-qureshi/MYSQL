CREATE DATABASE temp1;
drop database temp1;
drop database if exists temp1;         -- to avoid error

CREATE DATABASE college;

CREATE DATABASE IF NOT EXISTS college;    -- to avoid error bcz error is not good in mysql

USE college;                       -- use this syntax to work in any database

CREATE TABLE students (            -- create table
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO students VALUES ( 1, "Ali", 19);        -- insert data in table
INSERT INTO students VALUES ( 2, "Affan", 20);

RENAME TABLE student TO students;                   -- rename database table name

SELECT * FROM students;                             -- show table

SHOW DATABASES;
SHOW TABLES;        -- show table of USE DATABASE

INSERT INTO students ( id, name, age)              -- insert more data at same time in table
VALUES
(3, "Azaan", 25),
(4, "Arhum", 17),
(5, "Aadi", 18);

