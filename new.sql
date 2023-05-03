create TABLE DEPT
(deptno number(4) primary key,
dname   varchar2(30) not null,
loc number(4));

insert into dept(deptno, dname, loc)
    values(10,'accountnit',1700);
    
insert into dept values(40,'sales',null);

insert into dept(deptno, dname)
    values(80,'accountnit');

select * from dept;
desc departments;

insert into dept
    select department_id, department_name, location_id from departments
    where department_id>100;
    
delete from dept where deptno=10;
commit;

rollback;

update dept set loc=2000 where deptno=170;

drop table dept;



create table s_emp(
empid   number(6),
empname char(20),
mgr number(6),
sal number(8,2),
deptid  number(4)
);
desc s_emp;

select * from s_emp;

insert into s_emp
select employee_id, first_name, manager_id, salary, department_id from employees where department_id=30;

commit;

update s_emp set sal=5000 where empid=117;

update s_emp set empname='yedam' where empid=118;
update s_emp set deptid=(select department_id from employees where first_name='Lex') where empid=117;

select first_name, department_id from employees order by first_name;

update s_emp set empname=(select first_name from employees where employee_id=125) where empid=115;

insert into s_emp values(111, 'hong gil ddong', null, 3320, 100);

delete s_emp where empid=111;

