USE employees;

SELECT concat(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB_
From employees
LIMIT 10;

#Index Exercise
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;