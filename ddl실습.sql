select* from dict;
select table_name from user_tables;
select distinct object_type from user_objects;
select * from user_catalog;

select * from all_tables;--user�� ���� �ƴ����� ��밡���� ��� table��(sys�Ҽ�)

select * from user_tab_comments;

comment on table regions is '';--���� ���� ������ �ּ�(Ŀ��Ʈ)�� ������

select * from user_col_comments;

comment on column regions.region_id is'comment test';

select * from user_constraints;

select * from user_cons_columns;

create view v10(employee_id, first_name, salary) as select employee_id, first_name, salary*12
from employees where department_id=30;

select * from v10;

create or replace view v10 (employee_id, first_name, salary, department_id)
as select employee_id, first_name, salary, department_id from employees
where department_id=20;


rollback;

create table MY_EMPLOYEE (id number(4) constraint my_employee_id not null, last_name varchar2(25), first_name varchar2(25), userid varchar2(8), salary number(9,2));

desc MY_EMPLOYEE;

select * from my_employee;

update my_employee set last_name= 'Drexler' where id=3;

update my_employee set salary=1000 where salary<900;
select * from my_employee;

delete my_employee where first_name='Betty';
select * from my_employee;
--------------------savepoint����� commit�� �ؼ� transaction�� ����Ǹ� savepoint�� �����
savepoint step_16;

delete my_employee;

rollback to step_16;
select* from my_employee;
commit;


desc dept;
select * from dept;

-----------------select from ��¼���̰� ����������!!!!!!!!!!!!!_________________________
insert into dept (select department_id, department_name from departments);

create table emp(id number(7),
last_name varchar2(25),
first_name varchar2(25),
dept_id number(7)constraint emp_dep_id_fk
references dept(id));
desc emp;

select * from employees2;

create table employees2 (
select employee_id  as id from employees,
select first_name from employees,
select last_name from employees,
select salary from employees,
select department_id as dept_id from employees );

create table employees2(
select employee_id, first_name, last_name, salary, department_id from employees);

create table employees2 (
select employee_id as id, frist_name, last_name, salary, department_id as dept_id from employees );



create table employees2 as select employee_id id, first_name, last_name, salary, department_id dept_id
from employees;

alter table employees2 read write;
insert into employees2 values(34,'Grant','Miracie',5678,10);

drop table employees2;