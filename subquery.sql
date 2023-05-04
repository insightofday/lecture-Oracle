select round(max(salary))as "Maximum", round(min(salary))as "Minimum",round(sum(salary))as "Sum",round(avg(salary))as "Average"
from employees;

select round(max(salary))as "Maximum", round(min(salary))as "Minimum",round(sum(salary))as "Sum",round(avg(salary))as "Average"
from employees group by job_id;

select count(employee_id) from employees;

select count(manager_id) "Number of Managers" 
from employees;

select max(salary)-min(salary) "DIFFERENCE" 
from employees;


--9. ������ ��ȣ, �ش� �����ڿ� ���� ����� ���� �޿��� ǥ���Ͻÿ�. �����ڸ� �� �� ���� ���, ���� �޿��� 6,000 �̸��� �׷��� ���ܽ�Ű�� 
--����� �����޿��� ���� ������������ �����Ͻÿ�.
select manager_id, min(salary) from employees group by manager_id having min(salary)>=6000 and manager_id is not null
order by min(salary) desc;


--10. ������ ǥ���� ���� �ش� ������ ���� �μ� ��ȣ��(�μ� 20, 50, 80, 90) �޿��� �޿� �Ѿ��� ���� ǥ���ϴ� ���Ǹ� �ۼ��ϰ�, 
--�� ���� ������ �Ӹ����� �����Ͻÿ�
select job_id, sum(salary), sum(decode(department_id, 20, salary,0))as dept20,
                     sum(decode(department_id, 50, salary,0))as dept50,
                    sum(decode(department_id, 80, salary,0))as dept80,
                    sum(decode(department_id, 90, salary,0))as dept90 from employees group by job_id;
                    
