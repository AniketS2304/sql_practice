-- Create Employee Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Create Department Table
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Insert Departments
INSERT INTO Department VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Insert Employees
INSERT INTO Employee VALUES
(101, 'Alice', 2, 65000, '2020-01-15'),
(102, 'Bob', 1, 50000, '2019-03-22'),
(103, 'Charlie', 2, 72000, '2021-07-10'),
(104, 'David', 3, 55000, '2018-11-03');

-- 1. Get all employees with department name
SELECT e.emp_name, d.dept_name, e.salary
FROM Employee e
JOIN Department d ON e.department_id = d.department_id;

-- 2. Get highest paid employee in each department
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

-- 3. Get employees hired after 2020
SELECT emp_name, hire_date
FROM Employee
WHERE hire_date > '2020-01-01';

-- 4. Increase salary by 10% for IT department employees
UPDATE Employee
SET salary = salary * 1.10
WHERE department_id = 2;

-- 5. Delete employees with salary below 50,000
DELETE FROM Employee
WHERE salary < 50000;
