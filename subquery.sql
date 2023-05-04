select round(max(salary))as "Maximum", round(min(salary))as "Minimum",round(sum(salary))as "Sum",round(avg(salary))as "Average"
from employees;

select round(max(salary))as "Maximum", round(min(salary))as "Minimum",round(sum(salary))as "Sum",round(avg(salary))as "Average"
from employees group by job_id;

select count(employee_id) from employees;

select count(manager_id) "Number of Managers" 
from employees;

select max(salary)-min(salary) "DIFFERENCE" 
from employees;


--9. 관리자 번호, 해당 관리자에 속한 사원의 최저 급여를 표시하시오. 관리자를 알 수 없는 사원, 최저 급여가 6,000 미만인 그룹은 제외시키고 
--결과를 최저급여에 대한 내림차순으로 정렬하시오.
select manager_id, min(salary) from employees group by manager_id having min(salary)>=6000 and manager_id is not null
order by min(salary) desc;


--10. 업무를 표시한 다음 해당 업무에 대해 부서 번호별(부서 20, 50, 80, 90) 급여와 급여 총액을 각각 표시하는 질의를 작성하고, 
--각 열에 적합한 머리글을 지정하시오
select job_id, sum(salary), sum(decode(department_id, 20, salary,0))as dept20,
                     sum(decode(department_id, 50, salary,0))as dept50,
                    sum(decode(department_id, 80, salary,0))as dept80,
                    sum(decode(department_id, 90, salary,0))as dept90 from employees group by job_id;
                    
