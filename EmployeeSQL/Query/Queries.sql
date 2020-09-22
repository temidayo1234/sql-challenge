--Query 1
SELECT emp.id, emp.first_name, emp.last_name, emp.sex, s.salary 
FROM employees as emp
INNER JOIN salaries as s ON emp.id=s.id;

--Query 2
SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees as emp
WHERE hire_date LIKE '%1986';

--Query 3
SELECT dept.id, dept.dept_name, dm.emp_no, emp.first_name, emp.last_name
FROM department_managers as dm
INNER JOIN departments as dept ON dept.id= dm.dept_no
INNER JOIN employees as emp ON emp.id= dm.emp_no;

--Query 4
SELECT emp.id, emp.last_name, emp.first_name, dept.dept_name
FROM employees as emp
INNER JOIN department_employees ON department_employees.emp_no=emp.id
INNER JOIN departments as dept ON dept.id=department_employees.dept_no;

--Query 5
SELECT emp.first_name, emp.last_name, emp.sex
FROM employees as emp
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--Query 6
SELECT emp.id, emp.last_name, emp.first_name, dept.dept_name
FROM departments as dept
INNER JOIN department_employees ON department_employees.dept_no=dept.id
INNER JOIN employees as emp ON emp.id=department_employees.emp_no
WHERE dept.dept_name LIKE 'Sales';

--Query 7
SELECT emp.id, emp.last_name, emp.first_name, dept.dept_name
FROM departments as dept
INNER JOIN department_employees ON department_employees.dept_no=dept.id
INNER JOIN employees as emp ON emp.id=department_employees.emp_no
WHERE dept.dept_name LIKE 'Sales' OR dept.dept_name LIKE 'Development';

--Query 8
SELECT COUNT(last_name) AS "Last Name Count", last_name AS "Last Name"
FROM employees as emp 
GROUP BY last_name
ORDER BY "Last Name Count" DESC;

