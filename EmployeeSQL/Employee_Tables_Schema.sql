departments as d
--
dept_no PK VARCHAR
dept_name VARCHAR


dept_emp as de
--
emp_no INTEGER FK >- employees.emp_no
dept_no VARCHAR FK >- departments.dept_no


dept_manager as dm
----
dept_no VARCHAR FK >- departments.dept_no
emp_no INTEGER FK >- employees.emp_no


employees as e
--
emp_no PK INTEGER
emp_title_id VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE


salaries as s
--
emp_no INTEGER FK >- employees.emp_no
salary INTEGER


titles as t
--
title_id PK VARCHAR 
title VARCHAR
