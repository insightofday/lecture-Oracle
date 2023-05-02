----------------------------

select first_name, job_id from employees where job_id=(select job_id from employees where employee_id=147);

select department_id from employees where lower(first_name)= 'david';

select first_name, department_id, salary from employees where department_id in(select department_id from employees where first_name='David');

select first_name, job_id,salary from employees
    where salary> (select min(avg(salary)) from employees 
                    group by job_id);
    
select first_name, job_id, salary
from employees
where salary>all(select avg(salary)
                from employees
                group by department_id);