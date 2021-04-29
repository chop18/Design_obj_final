#Use CREATE DATABSE to initilize a database.
#If not exisists tells MySQL to ignore the line of code if the identifier already exists.
#Statements should end in semicolones
CREATE DATABASE if not exists Test;

#Initilizes the database so we can begin creating tables
use Test;

#General syntax for creating a table CREATE TABLE if not exists table_name (column_name column_type).
#column_type can vary, and can include integers (int) and characters (varchar). There is a rather long list of data types SQL handles.
#Some common data types are: CHAR, INT, BIGINT, DECIMAL(M, D), and DATE
#Number often proceed data type indicating the maximum space the entry should take up. Example INT(2) could not hold value 100.

#Creating a table
#You can set key as well further ensuring data base integerity
#Values can be null unless stated otherwise
CREATE TABLE if not exists Employee (name VARCHAR(20) NOT NULL, age INT(2), job_title VARCHAR(20), salary INT(6), PRIMARY KEY (name));

#Adding values to a table

INSERT INTO Employee (name, age, job_title, salary)
VALUES ("John Smith", 32, "Programmer", 100000); 

#SELECTING VALUES
SELECT * FROM Employee;

#Specific Selects
SELECT name FROM Employee
WHERE age = 32;

#Adding more rows
INSERT INTO Employee (name, age, job_title, salary)
VALUES ("Jane Doe", 25, "Teacher", 40000); 
INSERT INTO Employee (name, age, job_title, salary)
VALUES ("Fred McDonald", 42, "Lawayer", 200000); 

#UPDATING multiple rows
UPDATE Employee
SET salary = salary * .1
WHERE salary>=100000;

SELECT * FROM Employee