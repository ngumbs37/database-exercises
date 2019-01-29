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


select 'Employees with first names ''Irena'', ''Vidya'', or ''Maya'' and are a male' as 'Exercise 2-1 and 2-2';
select first_name, last_name from employees
where (first_name = 'Irena'
  or first_name =  'Vidya'
  or first_name =  'Maya')
  and gender = 'm';

select 'employees whose last name starts or ends with ''E''' as 'Exercise 2-3';
select first_name, last_name from employees
where last_name like 'e%'
   or last_name like '%e';

select 'employees whose last name starts AND ends with ''E''' as 'Exercise 2-4';
select first_name, last_name from employees
where last_name like 'e%'
  and last_name like '%e';

select 'employees hired in the 90s and born on Christmas' as 'Exercise 2-5';
select first_name, last_name, hire_date from employees
where hire_date between '1990-01-01' and '1999-12-31'
  and birth_date like '%-12-25';

select 'employees with a ''q'' in their last name but not ''qu''' as 'Exercise 2-6';
select first_name, last_name from employees
where last_name like '%q%'
  and last_name not like '%qu%';