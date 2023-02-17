USE employees;

/* How many departments are there available */
SELECT COUNT(DISTINCT dept_no)
FROM dept_emp;

/* What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?*/
SELECT SUM(salary)
FROM salaries
WHERE from_date > '1997-01-01';

/* 1. Which is the lowest employee number in the database?

2. Which is the highest employee number in the database?*/

SELECT MIN(emp_no)
FROM employees;

SELECT MAX(emp_no)
FROM employees;

/* What is the average annual salary paid to employees who started after the 1st of January 1997?, Round to a precision of cents.*/
SELECT ROUND(AVG(salary), 2)
FROM salaries
WHERE from_date > '1997-01-01';

/* Create a duplicate table of the departments table as ‘departments_dup’. Select the department number and name from the ‘departments_dup’ table and add a third column where you name the 
department number (‘dept_no’) as ‘dept_info’. If ‘dept_no’ does not have a value, use ‘dept_name’.*/


CREATE TABLE departments_dup AS
SELECT *
FROM departments;

SELECT dept_no, dept_name, coalesce(dept_no, dept_name) as dept_info
FROM departments_dup;

/*Modify the code obtained from the previous exercise in the following way. Apply the IFNULL() function to the values from the first and 
second column, so that ‘N/A’ is displayed whenever a department number has no value, and ‘Department name not provided’ is shown if there is no value for ‘dept_name’.*/
SELECT IFNULL(dept_no, 'N/A'), IFNULL(dept_name, 'Department name not provided') 
FROM departments_dup;

