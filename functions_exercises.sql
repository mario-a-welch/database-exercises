USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY  first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no DESC;


SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, '', last_name) AS 'Full_Name' FROM employees WHERE last_name Like 'e%e';

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC;

SELECT first_name, last_name, DATEDIFF(now(), hire_date)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;