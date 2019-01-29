use employees;

select 'first 10 distinct last name sorted in descending order' as 'Exercise 1';
SELECT DISTINCT last_name
FROM employees
order by last_name desc limit 10;

select 'employees hired in the 90s and born on Christmas' as 'Exercise 2';
select first_name, last_name from employees
where hire_date between '1990-01-01' and '1999-12-31'
  and birth_date like '%-12-25'
order by birth_date, hire_date desc limit 5;

select 'employees hired in the 90s and born on Christmas' as 'Exercise 2';
select first_name, last_name from employees
where hire_date between '1990-01-01' and '1999-12-31'
  and birth_date like '%-12-25'
order by birth_date, hire_date desc limit 5 offset 45;