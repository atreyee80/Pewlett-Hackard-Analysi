select * from titles;
select * from salaries;
--select employee first-name and last_name who were born between 1951 to 1955---
SELECT first_name,last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-01';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
select * from employees;

-- Retirement eligibility with hired date between 1985 and 1988
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND hire_date BETWEEN '1985-01-01' AND '1988-12-31';

--Count The  Retirement eligibility with hired date between 1985 and 1988
SELECT COUNT(first_name)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND hire_date BETWEEN '1985-01-01' AND '1988-12-31';

select * from retirement_info
--to drop table ----
DROP TABLE retirement_info
--create retirement_info table with emp_no,first_name and last_namr--
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
select  * from retirement_info

select dept_no,first_name,last_name 
from dept_emp,retirement_info
where dept_emp.emp_no = retirement_info.emp_no
;
select * from departments;
select * from dept_manager;

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

select * from retirement_info;
select * from dept_emp;


-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
    retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;


-- Joining departments and dept_manager tables using alias method --
--d for departments and dm for department_manger---
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments As d
INNER JOIN dept_manager As dm
ON d.dept_no = dm.dept_no;


--Left Join for retirement_info and dept_emp tables and create a new table current_emp--
select ri.emp_no,
ri.first_name,
ri.last_name,
de.to_date
INTO current_emp
from retirement_info as ri
left join dept_emp as de
On ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');
drop table current_emp

select  * from current_emp

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;
select * from dept_emp