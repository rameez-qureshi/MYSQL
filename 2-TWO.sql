CREATE DATABASE College_system;
USE College_system;

CREATE TABLE temp1 (
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR (20),
    PRIMARY KEY (id, name)      -- combination of both is unique
);

CREATE TABLE emp (
	id INT,
    salary INT DEFAULT 20000
);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;
