use employees;
select 'Employees with first names ''Irena'', ''Vidya'', or ''Maya'''as 'Exercise 1-1';
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya');

select 'employees whose last name starts with ''E''' as 'Exercise 1-2';
select first_name, last_name from employees where last_name like 'e%';

select 'employees hired in the 90s' as 'Exercise 1-3';
select first_name, last_name, hire_date from employees where hire_date between '1990-01-01' and '1999-12-31';

select 'employees born on Christmas' as 'Exercise 1-4';
select first_name, last_name, birth_date from employees where birth_date like '%-12-25';

select 'employees with a ''q'' in their last name' as 'Exercise 1-5';
select first_name, last_name from employees where last_name like '%q%';