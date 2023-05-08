create view employees_vu(employee_id, employee, department_id)
as select employee_id, first_name, department_id
from employees;--1

drop view employees_vu;



select * from employees_vu;--2




create view dept50
as select employee_id empno, first_name employee, department_id as deptno
from employees;--3





select * from dept50;
desc dept50;--4





create view salary_vu 
as select e.first_name as "Employee", e.department_id as "Department", e.salary as"Salary", j.job_id "Grade(job_id)"
from employees e 
join departments d on d.department_id=e.department_id 
join jobs j on e.salary between j.min_salary and j.max_salary
order by "Employee";

drop view salary_vu;
select * from salary_vu;--5






create sequence dept_id_seq
increment by 10
start with 300
maxvalue 1000;

select * from user_sequences;--6





select * from dept;
delete dept where id>=300;

INSERT INTO dept
values(dept_id_seq.NEXTVAL, 'Education');

insert into dept
values(dept_id_seq.NEXTVAL, 'Administration');
select * from dept;--7






create index dept_name_idx
on dept (name);
select * from user_ind_columns
where table_name='DEPT';--8




create synonym e for employees;
select * from e;--9





create table prof(
profno  number(4) primary key,
name    varchar2(15) not null,
id      varchar2(15) not null,
hiredate    date,
pay     number(4));

desc prof;--9






insert into prof
values('1001','Mark','m1001','07/03/01',800);

insert into prof
values('1003','Adam','a1003','11/03/02','');

insert into prof
values('1004','Tom','t1004','20/05/05',900);
commit;

update prof
set pay=1200 where profno=1001;
delete prof where profno=1004;

select * from prof;
commit;--10




create index prof_name_idx on prof(name);--인덱스생성

alter table prof drop primary key ;

alter table prof 
add constraint prof_no_pk primary key(profno);--프라이머리키를 특정 이름으로 생성

alter table prof add gender char(3);--열추가

alter table prof modify(name varchar2(20));--자료형의 길이 변경

desc prof;--11






