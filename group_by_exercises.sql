use employees;
 select 'unique titles in the titles table' as 'Exercise 1';
 select distinct title from titles;

 select 'unique employees whose last name starts AND ends with ''E''' as 'Exercise 2';
select last_name, first_name, count(*) as dups from employees
where last_name like 'e%'
  and last_name like '%e'
  group by last_name, first_name
  having dups > 1
  order by dups desc, last_name;


  select 'employees with a ''q'' in their last name but not ''qu''' as 'Exercise 3';
select last_name, count(last_name) from employees
where last_name like '%q%'
  and last_name not like '%qu%'
  group by last_name;


select 'Number of employees for each gender with first names ''Irena'', ''Vidya'', or ''Maya''' as 'Exercise 6';
select count(*) as 'Number_of_Employess', gender from employees
where (first_name = 'Irena'
  or first_name =  'Vidya'
  or first_name =  'Maya')
  group by gender;