select * from employees where commission_pct is not null;

select employee_id, first_name, salary, hire_date, department_id from employees order by salary;

select employee_id, last_name, to_char(hire_date,'YYYY-MM-DD'), salary from employees;

select e.employee_id, e.first_name, e.department_id, d.department_name from employees e join departments d on e.department_id=d.department_id;

select round(avg(salary)),department_id from employees group by department_id order by round(avg(salary));

select employee_id, first_name, salary, job_id, department_id from employees
where department_id=(select department_id from employees where employee_id=142);

select employee_id, last_name, hire_date, add_months(hire_date, 6)from employees;

create table sawon(s_no number(4), 
name        varchar2(15) not null,
id          varchar2(15) not null,
hiredate     date,
pay         number(4));
 desc sawon;
 select * from sawon;
insert into sawon(S_no, name, id, hiredate, pay)
values(101,'Jason','ja101','17/09/01',800);

insert into sawon(S_no, name, id, hiredate)
values(104,'Min','m104','14/07/02');

savepoint insert1;

rollback to insert1;

update sawon set pay=700 where s_no=104;
commit;

drop table sawon;----ddl이라서 롤백불가 ---
rollback;

