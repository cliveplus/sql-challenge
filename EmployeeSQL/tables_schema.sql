DROP TABLE titles;
DROP TABLE employees;
DROP TABLE departments;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE salaries;


--Titles table
CREATE TABLE titles (
	title_id VARCHAR(7) PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);

--Employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(7) NOT NULL references titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

--Departments table
CREATE TABLE departments (
	dept_no VARCHAR(7) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

--Department Managers table
CREATE TABLE dept_manager (
	dept_no VARCHAR(7) NOT NULL references departments(dept_no),
	emp_no INT NOT NULL
);

--Department Employees table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL references employees(emp_no),
	dept_no VARCHAR(7) NOT NULL references departments(dept_no)
);

--Salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL references employees(emp_no),
	salary INT NOT NULL
);