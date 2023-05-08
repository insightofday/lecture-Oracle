
create user haksa identified by yd2460;

alter session set"_oracle_script"=true;--C##안 붙여도 되게 하는 거

grant connect, resource to haksa;

grant create view, create synonym to haksa;

grant select on hr.departments to haksa;

