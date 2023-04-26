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

select first_name ||' '|| last_name as "이름",employee_id, salary from employees
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





--1부서 테이블 구조를 표시하시오
desc departments;

--2부서 테이블의 모든 데이터를 출력
select * from departments;

--3사원 테이블의 구조 표시
desc employees;

--4사원번호, 사원의 first_name, 업무코드, 입사일(별칭:startday) 순으로 출력
select employee_id, first_name, job_id, hire_date as startday from employees;

--5사원테이블의 업무코드 출력(중복값 제거)
select distinct job_id from employees;

--6업무ID와 first_name을 연결한 다음 ,와 공백으로 구분하여 표시하고 'employee and title'로 지정
select (job_id||', '||first_name) as "employee and title" from employees;

--7급여가 17,000을 넘는 사원의 이름과 급여 표시
select first_name, salary from employees where salary>17000;

--8사원번호가 100~180 사이인 사원의 이름과 부서번호 표시
select first_name, department_id from employees where employee_id between 100 and 180;

--9급여가 8000~15000 사이에 있지 않은 모든 사원의 이름과 급여 표시
select first_name, salary from employees where salary not between 8000 and 15000;

--10last_name이 Lee 와 Gee 인 사원의 last_name, 업무ID, 입사일 표시, 입사한지 오래된 사람부터 출력
select last_name, job_id, hire_date from employees where last_name in('Lee', 'Gee') order by hire_date; 

--11부서코드가 20,50에 속하는 모든 사원의 last_name, 부서번호를 표시 이름을 기준으로 알파벳 순서대로 출력
select last_name, department_id from employees where department_id in(20,50) order by last_name;

--12급여가 1000~15000사이이고, 부서코드가 50,80인 사원의 이름과 급여를 출력
select employee_id, salary from employees where salary between 1000 and 15000 and department_id in(50,80);

--13  2004년에 입사한 모든 사원의 이름과 입사일 표시
select first_name, hire_date from employees where hire_date between '2004/01/01' and '2004/12/31';
--select* from employees where hire_date like'04%';

--14관리자가 없는 모든 사원의 이름과 업무를 표시
select first_name, job_id from employees where manager_id is null;

--15추가수당을 받는 모든 사원의 이름, 급여, 추가수당을 표시. 급여, 추가수당을 기준으로 내림차순 정렬
select first_name, salary, commission_pct from employees order by salary, commission_pct;

--16first_name의 세번째 글자가 'a'인 모든 사원의 first_name 출력
select first_name from employees where first_name like  '__a%';

--17업무가 영업사원(SA_REP)또는 사무원(ST_CRERK)이면서 급여가 (7000, 10000)이 아닌 사원의 이름, 업무id, 급여 표시
select first_name, job_id, salary from employees where job_id in('SA_REP','ST_CLERK') and salary not in (7000,10000);

select employee_id, first_name, hire_date, department_id from employees
where hire_date like '02%'
minus
select employee_id, first_name,hire_date, department_id from employees
where department_id=100;

select sysdate from dual;

select lower('YKJHLHLH'), upper('jljsflwe'), initcap('jlllwei') from dual;

select first_name from employees where lower(first_name) like'%a%';--first_name 필드중 소문자로 바꾸었을 때 a가 있는 것

select first_name||'씨는'||job_id||'입니다'from employees;

select concat(job_id,concat(' ', first_name)) from employees; --공백을 합치려면 이중concat을 사용해야 함

select substr(job_id, 4) from employees; 

select substr('yedam', instr('yedam','m'),length('yedam')-1) from dual;

select lpad(first_name, 10, '*'), rpad(last_name, 10, '라') from employees; 

select trim('j' from lower(first_name)),first_name from employees;

select replace(job_id, '_', '★') from employees;

select job_id from employees;

select round(months_between(sysdate, '22/03/31')) from dual;

select add_months('23/03/31',6) from dual;

select next_day(sysdate,'토요일') from dual;
select * from nls_session_parameters;

alter session set nls_date_language=american;

select to_char(hire_date, 'year month ddd day') from employees;

select to_char(hire_date,'fmyyyy "년" mm dd hh: mi: ss') from employees;

select to_char(1234.567,'L000,0000.00') from dual;

select to_char(salary, '$000000000000000.0') from employees;

select hire_date, first_name from employees where hire_date=to_date('january 13, 2001', 'month dd, yyyy');

select hire_date from employees;







--1. 현재 날짜를 표시하는 질의를 작성하고 열 레이블을 Date로 지정하시오.
select sysdate as "Date" from dual;

--2. 각 사원에 대해 사원 번호, 이름, 급여 및 15% 인상된 급여를 정수로 표시하시오. 인상된 급여 열의 레이블을 New Salary로 지정하시오. 
select employee_id, first_name, round(salary), round(salary+salary*0.15) as "New Salary" from employees;

--3. 2번 질의를 수정하여 새 급여에서 이전 급여를 빼는 새 열을 추가하고 레이블을 Increase로 지정하고 수정한 질의를 실행하시오.
select employee_id, first_name, round(salary), round(salary+salary*0.15) as "New Salary", (round(salary*115)-round(salary)) as "increase" from employees;

--5. 이름이 J, A 또는 M으로 시작하는 모든 사원의 이름(대문자 표시) 및 이름 길이를 표시하는 질의를 작성하고 각 열에 적합한 레이블을 지정하시오. 결과를 사원의 이름에 따라 정렬하시오.
select upper (first_name) substr(1,1)in('J','A','M') as "j,a,m으로 시작하는 사람" , length(first_name) as "길이" from employees order by first_name;
--select upper(first_name) as"uppercase",length(first_name) as "length" from employees where substr(first_name, 1,1) in ('J','A','M') order by first_name; 


--6. 각 사원의 이름을 표시하고 근무 달 수(입사일로부터 현재까지의 달 수)를 계산하여 열 레이블을 MONTHS_WORKED로 지정하시오. 
   --결과는 정수로 반올림하여 표시하고 근무 달 수를 기준으로 정렬하시오.
select first_name, round(MONTHS_BETWEEN(sysdate,hire_date))as"MONTHS_WORKED" from employees order by "MONTHS_WORKED";

--7. 모든 사원의 last_name 및 급여를 표시하기 위한 query를 작성합니다. 급여가 15자 길이로 표시되고 왼쪽에 $ 기호가 채워지도록 형식을 지정하시오. 열 레이블을 SALARY 로 지정합니다.
select last_name, Lpad(salary, 15, '$') as "SALARY" from employees;

select salary from employees;
--8. 부서 90의 모든 사원에 대해 성(last_name) 및 재직 기간(주 단위)을 표시하도록 query 를 작성하시오. 주를 나타내는 숫자 열의 레이블로 TENURE를 지정하고 주를 나타내는 숫자 값을 소수점 왼쪽에서 truncate 하시오. 
  -- 그리고 직원 재직 기간의 내림차순으로 레코드를 표시합니다.
select last_name, trunc((sysdate-hire_date)/7) as"TENURE" from employees where department_id=90 order by (sysdate-hire_date)/7 desc;

--9.이름,업무일, 업무시작요일 열레이블을 day로 지정 월요일부터 출력
select first_name,hire_date, to_char(hire_date,'day') as day from employees order by to_char(hire_date-1,'d');
--위아래 같은 값이 출력됨
select first_name, hire_date, to_char(hire_date, 'Day') day from employees order by to_char(hire_date -1,'d');
