---Data Analysis Question 1
select emp.first_name, emp.last_name, emp.sex, sal.salary
from employees as emp
INNER JOIN salaries as sal ON emp.emp_no = sal.emp_no

---Data Analysis Question 2
select first_name, last_name, hire_date
from employees where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'

---Data Analysis Question 3
SELECT 
    emp.first_name AS manager_first_name,
    emp.last_name AS manager_last_name,
    depts.dept_no AS dnum,
    depts.dept_name AS dname,
    dept_manager.emp_no AS manager_employee_number
FROM 
    employees AS emp
INNER JOIN 
    dept_manager ON emp.emp_no = dept_manager.emp_no
INNER JOIN 
    depts ON dept_manager.dept_no = depts.dept_no
	
--Question 4
SELECT 
e.emp_no as employee_number,
e.last_name,
e.first_name,
de.dept_no as department_number,
d.dept_name as department_name
FROM
employees e
JOIN 
dept_emp de ON e.emp_no = de.emp_no
JOIN 
depts d on de.dept_no = d.dept_no
	
--Question 5
SELECT first_name,last_name, sex
from employees
where first_name = 'Hercules'
and last_name LIKE 'B%'

--Question 6
SELECT
e.emp_no as employee_number,
e.last_name,
e.first_name
FROM
employees as e
JOIN
dept_emp as de ON e.emp_no = de.emp_no
JOIN 
depts ON de.dept_no = depts.dept_no
WHERE
depts.dept_name = 'Sales'

--Question 7
SELECT
e.emp_no as employee_number,
e.last_name,
e.first_name,
d.dept_name as department_name
FROM
employees e
JOIN
dept_emp de ON e.emp_no = de.emp_no
JOIN
depts d ON de.dept_no = d.dept_no
WHERE
d.dept_name IN ('Sales', 'Development')
--Question 8
SELECT
last_name,
COUNT(*) as frequency
FROM 
	employees
GROUP BY 
	last_name
ORDER BY
	frequency DESC, last_name