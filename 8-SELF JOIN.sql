CREATE DATABASE college_8;
USE college_8;

CREATE TABLE  employee (
	emp_id INT PRIMARY KEY,
    name VARCHAR(50),
	manager_id INT
);

INSERT INTO employee
( emp_id, name, manager_id)
VALUES
(101,"Ali",105),
(102,"Affan",104),
(103,"Ayaan",NULL),
(104,"Sameez",105),
(105,"Basheer",103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.emp_id = b.manager_id;

SELECT a.name as Manage_Name, b.name      -- show column name MANAGER NAME in result
FROM employee as a
JOIN employee as b
ON a.emp_id = b.manager_id;


SELECT name FROM employee    -- any column from table 1
UNION                        -- use to join anything
SELECT name FROM employee;   -- any column from table 2  -- we have not 2nd table so we use same table

SELECT name FROM employee
UNION ALL                       -- use to join anything -- this show repeat names of same table
SELECT name FROM employee;