

select first_name || ' ' || last_name
from employees
where 1=1
and employee_id in (
select 
manager_id 
from 
employees 
group by manager_id
having 1=1
and 
count(employee_id) >= 5
)