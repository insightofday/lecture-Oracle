select * from user_ind_columns where table_name='EMPLOYEES';

create index emp_hire_date_ind
on employees (hire_date);

drop index emp_hire_date_ind;

select * from user_sequences;


create sequence dept_seq1
increment by 2
start with 500
maxvalue 7000
nocache;

insert into dept
values(dept_seq1.NEXTVAL, 'AAA');

select * from dept;

drop sequence dept_seq1;

create synonym e for employees;

select * from e;

select* from user_synonyms;

drop synonym e;

select * from system_privilege_map;

select * from user_tab_privs_made;