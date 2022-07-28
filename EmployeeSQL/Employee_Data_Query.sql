--1. List the following details of each employee: 
--	 employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT hire_date, first_name, last_name
FROM employees
--split up dated element to call by employees hired in 1986
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY hire_date;

--3. List the manager of each department with the following information: 
--   department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
ORDER BY dept_no;

--4. List the department of each employee with the following information: 
--   employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no =  de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
ORDER BY emp_no;

--5. List first name, last name, and sex 
--   for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees e
WHERE first_name = 'Hercules' and last_name LIKE 'B%'
ORDER BY last_name;


--6. List all employees in the Sales department, including their:
--   employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no =  de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales'
ORDER BY emp_no;

--7. List all employees in the Sales and Development departments, including their:
--   employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no =  de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'
ORDER BY emp_no;

--8. List the frequency count of employee last names 
--   (i.e., how many employees share each last name) in descending order.