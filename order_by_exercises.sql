use employees;
select 'First Irena Reutenauer and last Vidya Simmen' as 'Exercise 1';
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya') order by first_name ;

select 'First Irena Acton and last Vidya Zweizig' as 'Exercise 2';
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya') order by first_name, last_name ;

select 'First Irena Acton and last Maya Zyda' as 'Exercise 3';
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya') order by last_name, first_name ;

select 'employees whose last name starts or ends with ''E''' as 'Exercise 1-4';
select first_name, last_name from employees
where last_name like 'e%'
   or last_name like '%e'
order by emp_no;



select 'First Maya Zyda and last Irena Acton' as 'Exercise 5-1';
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name desc;

select 'employees whose last name starts or ends with ''E''' as 'Exercise 5-2';
select first_name, last_name from employees
where last_name like 'e%'
or last_name like '%e'
order by emp_no desc;

select 'employees hired in the 90s and born on Christmas' as 'Exercise 6';
select birth_date, first_name, last_name, hire_date from employees
where hire_date between '1990-01-01' and '1999-12-31'
  and birth_date like '%-12-25'
order by birth_date, hire_date desc;
