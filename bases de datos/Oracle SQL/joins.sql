select 
e.*,
d.department_name
from 
employees e
left join departments  d on e.department_id = d.department_id
where 1=1
order by LAST_NAME desc;

select 
e.*,
d.department_name
from 
employees e
join departments  d using(department_id)
where 1=1
order by LAST_NAME desc;