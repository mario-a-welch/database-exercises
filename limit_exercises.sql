USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

select emp_no
FROM employees.salaries
ORDER BY salary DESC
LIMIT 5;

select emp_no
FROM employees.salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;