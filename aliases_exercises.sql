USE employees;

SELECT concat(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB_
From employees
LIMIT 10;