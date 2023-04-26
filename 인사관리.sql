select *
from tab;

select * from countries;

desc employees;

select distinct first_name as name, department_id from employees;

select last_name as name, salary, salary*1.1 as us
from employees;

select employee_id, first_name||' '||last_name as name, salary, salary*12+commission_pct as "year sal"
from employees;

select distinct department_id from employees;

select * from employees
where hire_date<'06/01/01';

select * from employees
where department_id not in (30, 100, 80);

select first_name||' '||last_name as name, salary from employees
where first_name like 'J____';













select * from departments
where manager_id!=(100||200);

select * from departments
where department_name like 'A%';

select * from departments
where location_id between 1400 and 1600;

select first_name ||' '|| last_name as "�̸�",employee_id, salary from employees
where salary+200 >=22000;

select * from employees
where hire_date between '07/01/01' and '07/12/31';

select * from employees
where employee_id>=150;







select * from employees
where commission_pct is not null;

select * from employees
where salary>20000 
    or department_id=80;

select * from employees
where department_id=80
order by salary desc;

select * from employees
where department_id!=80 and salary between 10000 and 15000
order by salary asc;





--1�μ� ���̺� ������ ǥ���Ͻÿ�
desc departments;

--2�μ� ���̺��� ��� �����͸� ���
select * from departments;

--3��� ���̺��� ���� ǥ��
desc employees;

--4�����ȣ, ����� first_name, �����ڵ�, �Ի���(��Ī:startday) ������ ���
select employee_id, first_name, job_id, hire_date as startday from employees;

--5������̺��� �����ڵ� ���(�ߺ��� ����)
select distinct job_id from employees;

--6����ID�� first_name�� ������ ���� ,�� �������� �����Ͽ� ǥ���ϰ� 'employee and title'�� ����
select (job_id||', '||first_name) as "employee and title" from employees;

--7�޿��� 17,000�� �Ѵ� ����� �̸��� �޿� ǥ��
select first_name, salary from employees where salary>17000;

--8�����ȣ�� 100~180 ������ ����� �̸��� �μ���ȣ ǥ��
select first_name, department_id from employees where employee_id between 100 and 180;

--9�޿��� 8000~15000 ���̿� ���� ���� ��� ����� �̸��� �޿� ǥ��
select first_name, salary from employees where salary not between 8000 and 15000;

--10last_name�� Lee �� Gee �� ����� last_name, ����ID, �Ի��� ǥ��, �Ի����� ������ ������� ���
select last_name, job_id, hire_date from employees where last_name in('Lee', 'Gee') order by hire_date; 

--11�μ��ڵ尡 20,50�� ���ϴ� ��� ����� last_name, �μ���ȣ�� ǥ�� �̸��� �������� ���ĺ� ������� ���
select last_name, department_id from employees where department_id in(20,50) order by last_name;

--12�޿��� 1000~15000�����̰�, �μ��ڵ尡 50,80�� ����� �̸��� �޿��� ���
select employee_id, salary from employees where salary between 1000 and 15000 and department_id in(50,80);

--13  2004�⿡ �Ի��� ��� ����� �̸��� �Ի��� ǥ��
select first_name, hire_date from employees where hire_date between '2004/01/01' and '2004/12/31';
--select* from employees where hire_date like'04%';

--14�����ڰ� ���� ��� ����� �̸��� ������ ǥ��
select first_name, job_id from employees where manager_id is null;

--15�߰������� �޴� ��� ����� �̸�, �޿�, �߰������� ǥ��. �޿�, �߰������� �������� �������� ����
select first_name, salary, commission_pct from employees order by salary, commission_pct;

--16first_name�� ����° ���ڰ� 'a'�� ��� ����� first_name ���
select first_name from employees where first_name like  '__a%';

--17������ �������(SA_REP)�Ǵ� �繫��(ST_CRERK)�̸鼭 �޿��� (7000, 10000)�� �ƴ� ����� �̸�, ����id, �޿� ǥ��
select first_name, job_id, salary from employees where job_id in('SA_REP','ST_CLERK') and salary not in (7000,10000);

select employee_id, first_name, hire_date, department_id from employees
where hire_date like '02%'
minus
select employee_id, first_name,hire_date, department_id from employees
where department_id=100;

select sysdate from dual;

select lower('YKJHLHLH'), upper('jljsflwe'), initcap('jlllwei') from dual;

select first_name from employees where lower(first_name) like'%a%';--first_name �ʵ��� �ҹ��ڷ� �ٲپ��� �� a�� �ִ� ��

select first_name||'����'||job_id||'�Դϴ�'from employees;

select concat(job_id,concat(' ', first_name)) from employees; --������ ��ġ���� ����concat�� ����ؾ� ��

select substr(job_id, 4) from employees; 

select substr('yedam', instr('yedam','m'),length('yedam')-1) from dual;

select lpad(first_name, 10, '*'), rpad(last_name, 10, '��') from employees; 

select trim('j' from lower(first_name)),first_name from employees;

select replace(job_id, '_', '��') from employees;

select job_id from employees;

select round(months_between(sysdate, '22/03/31')) from dual;

select add_months('23/03/31',6) from dual;

select next_day(sysdate,'�����') from dual;
select * from nls_session_parameters;

alter session set nls_date_language=american;

select to_char(hire_date, 'year month ddd day') from employees;

select to_char(hire_date,'fmyyyy "��" mm dd hh: mi: ss') from employees;

select to_char(1234.567,'L000,0000.00') from dual;

select to_char(salary, '$000000000000000.0') from employees;

select hire_date, first_name from employees where hire_date=to_date('january 13, 2001', 'month dd, yyyy');

select hire_date from employees;







--1. ���� ��¥�� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� �� ���̺��� Date�� �����Ͻÿ�.
select sysdate as "Date" from dual;

--2. �� ����� ���� ��� ��ȣ, �̸�, �޿� �� 15% �λ�� �޿��� ������ ǥ���Ͻÿ�. �λ�� �޿� ���� ���̺��� New Salary�� �����Ͻÿ�. 
select employee_id, first_name, round(salary), round(salary+salary*0.15) as "New Salary" from employees;

--3. 2�� ���Ǹ� �����Ͽ� �� �޿����� ���� �޿��� ���� �� ���� �߰��ϰ� ���̺��� Increase�� �����ϰ� ������ ���Ǹ� �����Ͻÿ�.
select employee_id, first_name, round(salary), round(salary+salary*0.15) as "New Salary", (round(salary*115)-round(salary)) as "increase" from employees;

--5. �̸��� J, A �Ǵ� M���� �����ϴ� ��� ����� �̸�(�빮�� ǥ��) �� �̸� ���̸� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� �� ���� ������ ���̺��� �����Ͻÿ�. ����� ����� �̸��� ���� �����Ͻÿ�.
select upper (first_name) substr(1,1)in('J','A','M') as "j,a,m���� �����ϴ� ���" , length(first_name) as "����" from employees order by first_name;
--select upper(first_name) as"uppercase",length(first_name) as "length" from employees where substr(first_name, 1,1) in ('J','A','M') order by first_name; 


--6. �� ����� �̸��� ǥ���ϰ� �ٹ� �� ��(�Ի��Ϸκ��� ��������� �� ��)�� ����Ͽ� �� ���̺��� MONTHS_WORKED�� �����Ͻÿ�. 
   --����� ������ �ݿø��Ͽ� ǥ���ϰ� �ٹ� �� ���� �������� �����Ͻÿ�.
select first_name, round(MONTHS_BETWEEN(sysdate,hire_date))as"MONTHS_WORKED" from employees order by "MONTHS_WORKED";

--7. ��� ����� last_name �� �޿��� ǥ���ϱ� ���� query�� �ۼ��մϴ�. �޿��� 15�� ���̷� ǥ�õǰ� ���ʿ� $ ��ȣ�� ä�������� ������ �����Ͻÿ�. �� ���̺��� SALARY �� �����մϴ�.
select last_name, Lpad(salary, 15, '$') as "SALARY" from employees;

select salary from employees;
--8. �μ� 90�� ��� ����� ���� ��(last_name) �� ���� �Ⱓ(�� ����)�� ǥ���ϵ��� query �� �ۼ��Ͻÿ�. �ָ� ��Ÿ���� ���� ���� ���̺�� TENURE�� �����ϰ� �ָ� ��Ÿ���� ���� ���� �Ҽ��� ���ʿ��� truncate �Ͻÿ�. 
  -- �׸��� ���� ���� �Ⱓ�� ������������ ���ڵ带 ǥ���մϴ�.
select last_name, trunc((sysdate-hire_date)/7) as"TENURE" from employees where department_id=90 order by (sysdate-hire_date)/7 desc;

--9.�̸�,������, �������ۿ��� �����̺��� day�� ���� �����Ϻ��� ���
select first_name,hire_date, to_char(hire_date,'day') as day from employees order by to_char(hire_date-1,'d');
--���Ʒ� ���� ���� ��µ�
select first_name, hire_date, to_char(hire_date, 'Day') day from employees order by to_char(hire_date -1,'d');
