
create user haksa identified by yd2460;

alter session set"_oracle_script"=true;--C##�� �ٿ��� �ǰ� �ϴ� ��

grant connect, resource to haksa;

grant create view, create synonym to haksa;

grant select on hr.departments to haksa;

