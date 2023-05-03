select e.department_id, d.department_name, e.employee_id, e.first_name, e.salary from employees e 
    left join departments d
    on d.department_id=e.department_id where salary>13000;

    
select e.department_id, d.department_name, e.employee_id, e.first_name, e.salary from employees e, departments d
where e.department_id=d.department_id and salary>13000;

select department_id, d.department_name, e.employee_id, e.first_name, e.salary from employees e 
    natural join departments d;
    -----------------------위랑 아래랑 같은 결과가 나옴
select e.department_id, d.department_name, e.employee_id, e.first_name, e.salary from employees e 
    join departments d
    on e.department_id=d.department_id where e.manager_id=d.manager_id;




select d.department_id, d.department_name, round(avg(e.salary)), round(max(e.salary)), count(employee_id) from departments d  
     join employees e  on e.department_id=d.department_id group by d.department_id,d.department_name;


select d.department_id, d.department_name, round(avg(e.salary)), round(max(e.salary)),count(employee_id) from departments d, employees e where d.department_id=e.department_id
group by d.department_id, d.department_name;


select e.department_id, d.department_name, e.employee_id, e.first_name, j.job_title, e.salary from employees e
left join departments d on e.department_id=d.department_id
left join jobs j on e.job_id=j.job_id;
-------------두개같음
select e.department_id, d.department_name, e.employee_id, e.first_name, j.job_title, e.salary from employees e, departments d, jobs j 
where e.department_id=d.department_id(+)
and e.job_id=j.job_id(+);


select e.department_id, d.department_name, e.employee_id, e.first_name, e.manager_id, e.salary, e.job_id, e2.employee_id, e2.first_name, j.min_salary, j.max_salary from employees e
right join departments d on d.department_id=e.department_id--이렇게 하면 department가 없는 사원 한 명은 배제 된다
--아래 조건을 충족시키는 시퀄을 작성하려면 full join departments d on d.department_id=e.department_id 해야 함
left join employees e2 on e.manager_id=e2.employee_id
left join jobs j on e.salary between j.min_salary and max_salary
order by e.department_id, e.employee_id;

select e.department_id, d.department_name, e.employee_id, e.first_name, e.manager_id, e.salary, e.job_id, j.min_salary, j.max_salary, e.employee_id, e.first_name
from employees e, departments d, jobs j, employees e2
where e.department_id(+)=d.department_id
and e.salary between min_salary(+)and max_salary(+)
and e.manager_id=e2.employee_id(+)
order by e.department_id, e.employee_id;
