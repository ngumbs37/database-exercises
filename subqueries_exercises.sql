use employees;

select concat(first_name, ' ', last_name) as name, hire_date
from employees
where hire_date in (
  select hire_date
  from employees
  where emp_no = 101010
)
order by emp_no;

select title
from titles
where emp_no in (
  select emp_no
  from employees
  where first_name = 'aamod'
);

select title, count(title)
from titles
where emp_no in (
  select emp_no
  from employees
  where first_name = 'aamod'
)
group by title;


select first_name, last_name
from employees
where emp_no in (
  select emp_no
  from dept_manager
  where to_date > curdate()
  )
and gender ='f';

select dept_name
from departments
where dept_no in (
  select dept_no
  from dept_manager
  where to_date > curdate()
  and emp_no in (
    select emp_no
    from employees
    where gender = 'f'
    )
);

select first_name, last_name
from employees
where emp_no in (
  select emp_no
  from salaries
  where salary in (
    select max(salary)
    from salaries
  )
);

select salary, emp_no
from salaries
order by salary desc