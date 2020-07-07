-- Data Analysis

-- 1
select 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
from employees as e
	join salaries as s
		on e.emp_no = s.emp_no
;

-- 2
select
	first_name,
	last_name,
	hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
;

-- 3
select
	d.dept_name,
	dm.dept_no,
	e.emp_no,
	e.first_name,
	e.last_name
from departments as d
	join dept_manager as dm
		on d.dept_no = dm.dept_no
	join employees as e
		on dm.emp_no = e.emp_no
;

-- 4
select
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from departments as d
	join dept_emp as de
		on d.dept_no = de.dept_no
	join employees as e
		on de.emp_no = e.emp_no
;

-- 5
select
	first_name,
	last_name,
	sex
from employees
where first_name = 'Hercules' and last_name like 'B%'
;

-- 6
select
	de.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
from departments as d
	join dept_emp as de
		on d.dept_no = de.dept_no
	join employees as e
		on de.emp_no = e.emp_no
where d.dept_name = 'Sales'
;

-- 7
select
	de.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
from departments as d
	join dept_emp as de
		on d.dept_no = de.dept_no
	join employees as e
		on de.emp_no = e.emp_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
;

-- 8
select
	last_name,
	count(last_name)
from employees
group by last_name
order by 2 desc
;
