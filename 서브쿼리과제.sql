select first_name, hire_date from employees
where department_id=(select department_id  from employees where last_name='Zlotkey')
    and not first_name=(select first_name from employees where last_name='Zlotkey');

select employee_id, first_name
from employees
where salary >(select avg(salary) from employees )
order by salary;
----------------이름에 u들어간사람 같은 부서에 일하는 사람찾기못햇음1!!!!!!!!
select employee_id, first_name
from employees
where department_id in(select department_id from employees where first_name like '%u%');

select e.first_name, d.department_id, e.job_id
from employees e 
join departments d on d.department_id=e.department_id
where d.location_id=1700;

select e.first_name, e.salary, e.manager_id
from employees e
join employees e2 on e.manager_id=e2.employee_id
where e.manager_id in(select employee_id from employees where last_name='King');

select *from employees where last_name='King';

select e.department_id, e.first_name, e.job_id, d.department_name
from employees e
join departments d on d.department_id=e.department_id
where d.department_name='Executive';

select department_name from departments;
