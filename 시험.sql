--1
select employee_id,first_name, job_id, hire_date from employees;
--2
select distinct manager_id from employees where manager_id is not null;
--3
select employee_id, first_name, salary, department_id from employees where salary between 7000 and 12000 and substr(first_name, 1,1)in ('H');
--4
select employee_id, first_name, hire_date, substr(email, 1,3) as "EMAIL", length(email) as"EMAIL LENGTH" from employees where hire_date>='05/01/01';
--5----------------------------------------------------------------------------------------------------------------
select first_name, hire_date, add_months(hire_date, 6),next_day(hire_date, 6),trunc(months_between(sysdate, hire_date)), last_day(hire_date)+1
from employees order by hire_date;

--6,(to_char(sysdate-hire_date, 'YY-MM-DD'))
select employee_id, first_name, to_char(hire_date,'DD/MM/YYYY DAY'),to_char(salary*commission_pct,'$999,999.99')  from employees 
where commission_pct is not null order by salary*commission_pct desc;
--7
select employee_id, first_name, job_id, salary, department_id from employees where department_id in (50, 60) and salary>5000;
--8
select employee_id, job_id, phone_number, department_id from employees where substr(phone_number, 1,3)=515;
--9
select employee_id, first_name, 
decode(commission_pct,null, salary*12, (salary*commission_pct+salary)*12)as "연봉",
to_char(hire_date, 'yy')as "입사한 연도",nvl2(commission_pct,'COMM', 'NOCOMM') as"비고" ,department_id from employees order by department_id, "연봉";

--10
select employee_id, first_name, department_id,
case when department_id=20 then 'Canada'
    when department_id=80 then 'UK'
    else 'USA'
    end as"근무지역" from employees;