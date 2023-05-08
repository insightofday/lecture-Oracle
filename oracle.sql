create user AAA identified by aaa;

grant create session, create table, create view to AAA;
revoke create session from aaa ;

alter session set "_oracle_script"=true;

drop user c##AAA;