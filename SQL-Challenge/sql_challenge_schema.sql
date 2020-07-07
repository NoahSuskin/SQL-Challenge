-- Create Schema

create table departments (
	dept_no varchar primary key,
	dept_name varchar
);

create table titles (
	title_id varchar,
	title varchar,
	primary key(title_id)
);

create table employees (
	emp_no int,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	primary key(emp_no),
	foreign key(emp_title_id) references titles(title_id)
);

create table dept_emp (
	emp_no int,
	dept_no varchar,
	primary key(emp_no, dept_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table dept_manager (
	dept_no varchar,
	emp_no int,
	primary key(emp_no, dept_no),
	foreign key(dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no)
);

create table salaries (
	emp_no int,
	salary int,
	primary key(emp_no),
	foreign key(emp_no) references employees(emp_no)
);
