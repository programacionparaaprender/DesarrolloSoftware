

select 
job_id, 
avg(salary), 
count(*)
from employees 
group by job_id
having avg(salary) > 10000
order by 2 desc;
