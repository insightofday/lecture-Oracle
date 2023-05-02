select * from employees;

select count(employee_id) as "�����" from employees;

select count(commission_pct) as"������ �޴� ���", count(distinct department_id)as "�μ���",  --�ߺ��� ����
count(distinct manager_id)as"�Ŵ��� ��"
from employees;

select department_id,to_char(sum(salary),'l999,999') as"�޿� �Ѱ�", round(avg(salary),2)as "��ձ޿�" from employees
group by department_id order by department_id;

select max(salary)as"�ִ밪",min(salary)as"�ּҰ�" from employees;

select job_id, sum(salary)as"�޿� �Ѱ�", avg(salary)as"��ձ޿�", max(salary), min(salary),count( job_id)as"�ο���" from employees
where department_id!=70 group by job_id having max(salary)>10000 order by job_id desc;

--1
select round(max(salary))as "Maximum",round(min(salary))as "Minimum",round(avg(salary))as "Average",round(sum(salary))as "Sum"
from employees;
--2
select job_id, round(max(salary))as "Maximum",round(min(salary))as "Minimum",round(avg(salary))as "Average",round(sum(salary))as "Sum"
from employees group by job_id order by job_id;
--3
select job_id, count(employee_id) from employees group by job_id ;
--4
select count(distinct manager_id)as "Number of Managers" from employees;
--5
select max(salary)-min(salary)as "DIFFERENCE" from employees;
--6
select manager_id, min(salary) from employees group by manager_id having min(salary)>=6000 and manager_id is not null order by min(salary) desc;
--7
select job_id, sum(decode(department_id, 20,salary,0))as "1",sum(decode(department_id,50,salary,0))as "2",sum(decode(department_id,80,salary,0))as "3",sum(decode(department_id,90,salary,0))as "4",sum(salary) from employees
group by job_id ;
having "1" is not null and "2" is not null and "3" is not null and "4" is not null

select department_id, salary, job_id from employees order by department_id;

select * from departments d, employees e
where e.department_id=d.department_id(+);--left join�����ǰ��̴ٳ���

select e.first_name,e.department_id, d.department_id, d.department_name from departments d, employees e
where e.department_id(+)=d.department_id;--right join�������ǰ��̴ٳ���

select e.first_name, e.salary, e.job_id, j.job_id ,j.min_salary, j.max_salary from employees e, jobs j
where e.salary between min_salary and max_salary; --����Ǵ� Į���� ���� ��쿡 ���� ���� 

select e.first_name, department_id, d.department_name from employees e join departments d using (department_id);--select e.department_id�°�ü�� using���� ���� ���� ���� ������ ��ü�� �����ϸ� �Ұ���
--using�� ������Ÿ���� �޶� �������(Į���� ������ ��). ��Ī�� ������ ����. 

select e2.employee_id, e2.first_name, e.employee_id, e.first_name  from employees e, employees e2 
where e2.employee_id=e.manager_id;

select e.first_name, e.department_id, d.department_name from employees e join departments d
    on e.department_id=d.department_id --join����
    and e.department_id=80;--���(?����

select * from countries;
select * from locations;
--1
select location_id,street_address,city, state_province,country_id ,country_name   
from locations 
    natural join countries;
--2
select e.last_name, e.department_id, d.department_name from employees e 
    left outer join departments d on e.department_id=d.department_id;

select e.last_name, department_id, d.department_name from employees e 
    left outer join departments d using (department_id);


--3
select l.city, e.last_name, e.job_id, e.department_id, d.department_name 
from locations l 
    join departments d on(l.location_id=d.location_id) 
        join employees e on (d.department_id=e.department_id)
where lower(city)='toronto' ;
--4
select e.last_name as"Employee", e.employee_id as"Emp#", e2.last_name as "Manager", e.manager_id as"Mgr#"from employees e
    join employees e2 on(e.manager_id=e2.employee_id);
    --join departments d on(d.department_id=e2.department_id);

--5
select e.last_name as"Employee", e.employee_id as"Emp#", e2.last_name as "Manager", e.manager_id as"Mgr#"from employees e
    left outer join employees e2 on(e.manager_id=e2.employee_id)
order by e.employee_id;
--6
select e.last_name as "1", e.department_id as"2", e2.last_name as"3" from employees e
        right outer join employees e2 on(e2.department_id=e.department_id)
        where e.employee_id!=e2.employee_id;
--7. ����, �޿��� ���� ������ �ʿ�� �մϴ�. ��� ����� �̸�, ����, �μ� �̸�, �޿��� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
select e.last_name, e.job_id, d.department_name, e.salary from employees e
    left outer join departments d
    on e.department_id=d.department_id;
    
    