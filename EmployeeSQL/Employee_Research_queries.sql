--Number 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--Number 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date::text LIKE '1986%';

--Number 3
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d, dept_manager dm, employees e
WHERE d.dept_no = dm.dept_no
AND dm.emp_no = e.emp_no;

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
	JOIN employees e
	ON dm.emp_no = e.emp_no;

--Number 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d, dept_emp de, employees e
WHERE d.dept_no = de.dept_no
AND de.emp_no = e.emp_no;

--Number 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Number 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_emp de
ON d.dept_no = de.dept_no
	JOIN employees e
	ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

--Number 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_emp de
ON d.dept_no = de.dept_no
	JOIN employees e
	ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--Number 8
SELECT last_name, COUNT(last_name) As "Total"
FROM employees
GROUP BY last_name
ORDER BY "Total" DESC;