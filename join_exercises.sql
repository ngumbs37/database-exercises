use employees;

select * from departments;

select * from dept_emp
where to_date = '9999-01-01';


select departments.dept_name as 'Department Name',concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from dept_manager
left join employees on dept_manager.emp_no = employees.emp_no
left join departments on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date = '9999-01-01'
order by `Department Name`;

select departments.dept_name as 'Department Name',concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from dept_manager
left join employees on dept_manager.emp_no = employees.emp_no
left join departments on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date = '9999-01-01'
and employees.gender = 'f'
order by `Department Name`;

select titles.title as 'Title', count(*)
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
join titles on titles.emp_no = dept_emp.emp_no
where titles.to_date = '9999-01-01'
and departments.dept_name = 'customer service'
group by titles.title
order by titles.title;


select departments.dept_name as 'Department Name',
       concat(employees.first_name, ' ', employees.last_name) as 'Name',
       salaries.salary as Salary
from dept_manager
left join employees on dept_manager.emp_no = employees.emp_no
left join departments on dept_manager.dept_no = departments.dept_no
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date = '9999-01-01'
and salaries.to_date = '9999-01-01'
order by `Department Name`;

select concat(employee.first_name, ' ', employee.last_name) as 'Employee Name',
       dep.dept_name as 'Department Name',
       concat(manager.first_name, ' ', manager.last_name) as 'Manager Name'
from employees as employee
       join dept_emp demp on employee.emp_no = demp.emp_no
       join departments dep on demp.dept_no = dep.dept_no
       join dept_manager dm on dep.dept_no = dm.dept_no
       join employees manager on manager.emp_no = dm.emp_no
where demp.to_date = '9999-01-01'
and dm.to_date = '9999-01-01'
order by dep.dept_name;
