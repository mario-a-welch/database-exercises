USE employees;

#Shows each department along with the name of the current manager for that department
SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
FROM employees
        JOIN dept_manager
            ON dept_manager.emp_no = employees.emp_no
        JOIN departments
            ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date LIKE '9999%'
ORDER BY departments.dept_name;

#Shows all departments currently managed by women
SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
FROM employees
        JOIN dept_manager
            ON dept_manager.emp_no = employees.emp_no
         JOIN departments
            ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date LIKE '9999%'
AND employees.gender = 'F'
ORDER BY departments.dept_name;

#Shows current titles of employees currently working in the Customer Service department
SELECT titles.title AS title, COUNT(titles.title) AS Total
FROM titles
         JOIN dept_emp
              ON dept_emp.emp_no = titles.emp_no
WHERE dept_emp.dept_no = 'd009'
AND dept_emp.to_date LIKE '9999%'
AND titles.to_date LIKE '9999%'
GROUP BY titles.title;

#Shows current salary of all current managers
SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, salaries.salary AS Salary
FROM employees
        JOIN salaries
            ON salaries.emp_no = employees.emp_no
        JOIN dept_manager
            ON dept_manager.emp_no = salaries.emp_no
        JOIN departments
            ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date LIKE '9999%'
AND salaries.to_date LIKE '9999%'
ORDER BY departments.dept_name;

#Bonus
#Shows the names of all current employees, their department name, and their current managers name
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Employee_Name, departments.dept_name AS Department_Name, CONCAT(mgmt.first_name, ' ', mgmt.last_name) AS Manager
FROM employees
    JOIN dept_emp
        ON dept_emp.emp_no = employees.emp_no
    JOIN departments
        ON departments.dept_no = dept_emp.dept_no
    JOIN dept_manager
        ON dept_manager.dept_no = departments.dept_no
    JOIN employees AS mgmt
        ON mgmt.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date LIKE '9999%'
AND dept_emp.to_date LIKE '9999%';