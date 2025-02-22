-- Drop table if exists
DROP TABLE IF EXISTS departments;

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	from_date DATE,
	to_date DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS employees;

-- Create new table
CREATE TABLE employees (
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS salaries;

-- Create new table
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS titles;

-- Create new table
CREATE TABLE titles (
	emp_no INT,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);