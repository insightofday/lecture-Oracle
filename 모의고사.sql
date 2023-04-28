desc departments;
select * from departments;
--2
select employee_id, first_name, salary, hire_date, department_id from employees order by department_id asc, salary desc;
--3
select commission_pct from employees where commission_pct is not null;
---4
select first_name, salary from employees where salary not between 5000 and 12000;
--5
select first_name, hire_date, job_id from employees where substr(hire_date, 1, 2) in(02,05,07); 
--6
select first_name, job_id, salary, department_id from employees where substr(job_id, 1,2) in('SA','MK');
--7
select lpad(last_name, 999999999999999999999999999999999999,'*') from employees;
--8
select employee_id, first_name, salary, round(salary*1.15)as "New Salary" from employees order by "New Salary" desc;
--9
select employee_id, last_name, hire_date, add_months(hire_date, 6) from employees;
--10
select first_name, department_id, job_id, hire_date, salary from employees where job_id in('IT_PROG','FI_MGR')
and salary not between 10000 and 15000 order by department_id, hire_date;
--11
select employee_id, first_name, case  when department_id=40 then 'seoul'
                                       when department_id=50 then 'pusan'
                                       else 'daegu'
                                       end as "辟公瘤开"
                                       from employees;
                                       
select employee_id, first_name, department_id, decode(department_id, 40,'seoul',50,'pusan','daegu')as "辟公瘤开"
from employees;
