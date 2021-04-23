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

