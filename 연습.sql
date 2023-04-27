select first_name, job_id, 
case job_id when 'SA MAN' then 500
            when 'PU_CLERK' then 500
            when 'ST_CLERK' then 400
            when 'FI_ACCOUNT' then 400
            else 0
                    end as "보너스"
from employees; 
---------위랑 아래랑 같음
select first_name, job_id, 
case when job_id in('SA MAN','PU_CLERK') then 500
            when job_id in( 'ST_CLERK','FI_ACCOUNT') then 400
            else 0
                    end as "보너스"
from employees; 

select first_name, job_id, commission_pct,
decode (commission_pct, null, 500, 0) as 보녀스 from employees;

--1
select employee_id, first_name from employees;
--2
select * from employees;
--3
select employee_id as"사원번호", first_name as"사원이름", salary from employees;
--4
select first_name, salary, first_name||'의 월급은'||salary||'달러입니다'from employees;
--5
select distinct job_id from employees;
--6
select first_name, salary from employees order by salary ;
--7
select first_name, salary, job_id  from employees where salary=3000;
--8
select first_name, salary, job_id, hire_date, department_id  from employees where first_name='Steven';
--9
select first_name, nvl2(commission_pct, (salary+commission_pct)*12, salary*12), salary, commission_pct from employees where salary*12>=3600;
--10
select first_name, salary, job_id, department_id from employees where salary<=12000;
--11
select first_name, department_id, job_id from employees where job_id!='SA_MAN';
--12
select first_name, salary from employees where salary between 1000 and 3000;
--13
select first_name, salary from employees where salary not between 1000 and 3000;
--14
select first_name, hire_date from employees where hire_date like '06%';
--15
select first_name, salary from employees where first_name like'S%';
--16
select first_name, salary from employees where first_name like '%t';
--17
select first_name, salary from employees where first_name like '_m%';
--18
select first_name from employees where upper(first_name) like '%A%';
--19
select first_name, commission_pct from employees where commission_pct is null ;
--20
select first_name, salary, job_id from employees where job_id in('SA_MAN', 'PU_CLERK', 'IT_PROG');
--21
select first_name, salary, job_id from employees where job_id not in('SA_MAN', 'PU_CLERK', 'IT_PROG');
--22
select first_name, job_id, salary from employees where job_id='SA_MAN' and salary>=1200;
--23
select upper(first_name), lower(first_name), initcap(first_name) from employees;
--24
select first_name, salary from employees where lower(first_name)='alexander';
--25
select substr('SMITH',1,3) from dual;
--26
select first_name, length(first_name) from employees;
--27
select first_name ,instr(first_name, 'a') from employees;
--28
select first_name, lpad(salary, 10,'*') from employees;
--29
select first_name,salary, lpad(' ',salary/1000+1,'■') from employees;
--30
select round(876.567, 1) from dual;
--31
select trunc(876.567, 2) from dual;
--32
select mod(10,3) from dual;
--33
select mod(employee_id, 2) from employees;
--34
select employee_id, first_name from employees where mod(employee_id,2)=0 order by employee_id;
--35
