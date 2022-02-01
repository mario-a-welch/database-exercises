USE employees;

#Shows all the employees with the same hire date as employee 101010 using a subquery
SELECT employees.first_name AS 'First Name', employees.last_name AS 'Last Name', employees.hire_date AS 'Hire Date'
FROM employees
WHERE employees.hire_date IN (
    SELECT employees.hire_date
    FROM employees
    WHERE employees.emp_no = 101010
    );

#Shows all the titles held by all employees with the first name 'Aamod'
SELECT *
FROM titles
WHERE titles.emp_no IN (
    SELECT employees.emp_no
    FROM employees
    WHERE employees.first_name = 'Aamod'
          );

#Shows all the current department managers that are female
SELECT employees.first_name AS 'First Name', employees.last_name AS 'Last Name'
FROM employees
WHERE employees.emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
    WHERE dept_manager.to_date LIKE '9999%'
    )     AND employees.gender = 'F';

#Bonus
#Shows all the department names that currently have female managers
SELECT departments.dept_name
FROM departments
WHERE departments.dept_no IN (
    SELECT dept_manager.dept_no
    FROM dept_manager
    WHERE dept_manager.to_date LIKE '9999%'
    AND dept_manager.emp_no IN (
        SELECT employees.emp_no
        FROM employees
        WHERE employees.gender = 'F'
        )
    ) ORDER BY departments.dept_name;

#Shows the first and last name of the employee with the highest salary
SELECT employees.first_name AS 'First Name', employees.last_name AS 'Last Name'
FROM employees
WHERE employees.emp_no IN (
    SELECT salaries.emp_no
    FROM salaries
    WHERE salaries.salary = (SELECT MAX(salary) FROM salaries)
    );