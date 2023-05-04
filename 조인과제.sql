select e.last_name, e.department_id, d.department_name from employees e
left join departments d on d.department_id=e.department_id;

select l.city, e.last_name, e.job_id, e.department_id, d.department_name from locations l
left join departments d on d.location_id=l.location_id
left join employees e on e.department_id=d.department_id
where l.city='Toronto';

select e.last_name "Employee", e.employee_id "Emp#", e2.last_name "Manager", e2.employee_id "Mgr#"
from employees e
join employees e2 on e.manager_id=e2.employee_id;

select e.last_name "Employee", e.employee_id "Emp#", e2.last_name "Manager", e2.employee_id "Mgr#"
from employees e
left join employees e2 on e.manager_id=e2.employee_id;
