--deli1--
--1--
select emp_no,first_name,last_name from employees
--2--
select title,from_date,to_date from titles
--4--
select employees.emp_no,employees.first_name,employees.last_name,employees.birth_date,
titles.title,titles.from_date,titles.to_date
from employees,titles
where employees.emp_no = titles.emp_no
--5--
select employees.emp_no,employees.first_name,employees.last_name,employees.birth_date,
titles.title,titles.from_date,titles.to_date
from employees,titles
where employees.emp_no = titles.emp_no
and employees.birth_date between  '1952-01-01' and '1955-12-31'
--3--

select distinct 
e.emp_no, e.first_name,e.last_name,
       t.title,t.from_date,t.to_date
into retirement_title
from employees as e,
titles as t
where e.emp_no = t.emp_no 
and e.birth_date Between '1952-01-01' and '1955-12-31'
order by e.emp_no
select * from retirement_title

--7--
--run the step 3 to see if it matches with the given fig
drop table retirement_title

--6--
--export to csv
--8--
--copy to emp_datbase
--9--
select emp_no,first_name,last_name,title from retirement_title

--10--
select distinct on (e.emp_no) 
e.emp_no, e.first_name,e.last_name,
       t.title
--into Unique_Titles
from employees as e,
titles as t
where e.emp_no = t.emp_no
and e.birth_date Between '1952-01-01' and '1955-12-31'
order by e.emp_no, from_date desc
--11--
--create table Unique_Titles
--12--

---Sort the Unique Titles table in ascending order by the employee number and descending order by to_date
select distinct on (e.emp_no) 
e.emp_no, e.first_name,e.last_name,
       t.title
--into Unique_Titles
from employees as e,
titles as t
where e.emp_no = t.emp_no
and e.birth_date Between '1952-01-01' and '1955-12-31'
order by e.emp_no, emp_no asc ,to_date desc
select * from unique_titles
--14--
--see if the fig matches
--13--
--export to unique_titles csv
--15--
select title, count(*)
from
(select distinct on (emp_no) * from retirement_title
order by emp_no, from_date desc) retire
group by title
--16--
select count title from retiring_title
--17--
--create Retiring_Titles--17
select title, count(*)

--into Retiring_Title
from
(select distinct on (emp_no) * from retirement_title
order by emp_no, from_date desc) retire
group by title
--18--
--Group the table by title, then sort the count column in descending order--18
select count(*),title
--into Retiring_Title
from
(select distinct on (emp_no) * from retirement_title
order by emp_no, from_date desc) retire 
group by title
order by count(*) desc
--20--
--match with the given fig
--19--
--export to retiring_titles.csv






------------------------------------------------
select distinct on (e.emp_no) 
e.emp_no, e.first_name,e.last_name,
       t.title,t.from_date,t.to_date
--into retirement_title
from employees as e,
titles as t
where e.emp_no = t.emp_no
and e.birth_date Between '1952-01-01' and '1955-12-31'
order by e.emp_no, from_date desc

--retrieve info from retirement_title and store in a new table Unique Titles
select distinct on (e.emp_no) 
e.emp_no, e.first_name,e.last_name,
       t.title
into Unique_Titles
from employees as e,
titles as t
where e.emp_no = t.emp_no
and e.birth_date Between '1952-01-01' and '1955-12-31'
order by e.emp_no, from_date desc

---Sort the Unique Titles table in ascending order by the employee number and descending order by to_date
select distinct on (e.emp_no) 
e.emp_no, e.first_name,e.last_name,
       t.title
--into Unique_Titles
from employees as e,
titles as t
where e.emp_no = t.emp_no
and e.birth_date Between '1952-01-01' and '1955-12-31'
order by e.emp_no, emp_no asc ,to_date desc

select title, count(*)
from
(select distinct on (emp_no) * from retirement_title
order by emp_no, from_date desc) retire
group by title

--create Retiring_Titles--17
select title, count(*)
into Retiring_Title
from
(select distinct on (emp_no) * from retirement_title
order by emp_no, from_date desc) retire
group by title

--Group the table by title, then sort the count column in descending order--18
select count(*),title
into Retiring_Title
from
(select distinct on (emp_no) * from retirement_title
order by emp_no, from_date desc) retire 
group by title
order by count(*) desc

drop table retiring_title

--Deliverable 2--
--1--
select   emp_no,first_name,last_name,birth_date from employees
--2--
select   from_date,to_date from dept_emp
--3--
select   title from titles
--4--
select   distinct on (emp_no) first_name,last_name,birth_date from employees
--5 and 6--
select employees.emp_no,employees.first_name,employees.last_name,
       employees.birth_date,dept_emp.from_date,dept_emp.to_date
from employees,dept_emp
where employees.emp_no = dept_emp.emp_no

--7--
select employees.emp_no,employees.first_name,employees.last_name,
       employees.birth_date,titles.title,titles.from_date,titles.to_date
from employees,titles
where employees.emp_no = titles.emp_no	   
--8--
select employees.emp_no,employees.first_name,employees.last_name,
       employees.birth_date,titles.title,titles.from_date,titles.to_date
from employees,titles
where employees.emp_no = titles.emp_no
and employees.birth_date between '1965-01-01'and '1965-12-31'
--9--
select  employees.emp_no employees,first_name,employees.last_name,
       employees.birth_date,titles.from_date,titles.to_date,titles.title
from employees,titles
where employees.emp_no = titles.emp_no
and employees.birth_date between '1965-01-01'and '1965-12-31'

----new deli2---
--6--
select employees.emp_no,employees.first_name,employees.last_name,
       employees.birth_date,dept_emp.from_date,dept_emp.to_date
from employees,dept_emp
where employees.emp_no = dept_emp.emp_no
--7--
select employees.emp_no,employees.first_name,employees.last_name,
       employees.birth_date,titles.title,titles.from_date,titles.to_date
from employees,titles
where employees.emp_no = titles.emp_no	
--1--
select   emp_no,first_name,last_name,birth_date from employees
--2--
select   from_date,to_date from dept_emp
--3--
select   title from titles
--9--
select  employees.emp_no ,employees.first_name,employees.last_name,
       employees.birth_date,titles.from_date,titles.to_date,titles.title
from employees,titles
where employees.emp_no = titles.emp_no
and employees.birth_date between '1965-01-01'and '1965-12-31'
order by employees.emp_no asc
--4--
--select   distinct on (emp_no) first_name,last_name,birth_date from employees
select  distinct on (emp_no)employees.emp_no ,employees.first_name,employees.last_name,
       employees.birth_date,titles.from_date,titles.to_date,titles.title
from employees,titles
where employees.emp_no = titles.emp_no
and employees.birth_date between '1965-01-01'and '1965-12-31'
order by employees.emp_no asc
--8--
select distinct on (emp_no)employees.emp_no,employees.first_name,employees.last_name,
       employees.birth_date,titles.title,titles.from_date,titles.to_date
from employees,dept_emp,titles
where employees.emp_no = titles.emp_no and employees.emp_no = dept_emp.emp_no
and employees.birth_date between '1965-01-01'and '1965-12-31'
and  dept_emp.to_date = ('9999-01-01');

--5--
select distinct on (emp_no)employees.emp_no,employees.first_name,employees.last_name,
       employees.birth_date,titles.title,titles.from_date,titles.to_date
into mentorship_eligibility
from employees,dept_emp,titles
where employees.emp_no = titles.emp_no and employees.emp_no = dept_emp.emp_no
and employees.birth_date between '1965-01-01'and '1965-12-31'
and  dept_emp.to_date = ('9999-01-01');
select * from dept_emp
drop table mentorship_eligibility