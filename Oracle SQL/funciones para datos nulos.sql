

select 
last_name, NVL(department_id, 0)

from employees
order by 2;

select 
last_name, NVL(department_id, 0)
from employees
where 1=1
and NVL(department_id, 0) = 0
order by 2;

select 
last_name, NVL(department_id, 0)

from employees
where 1=1
and first_name like 'T%';


select first_name, salary, NVL(commission_pct, 0) "commission_pct",
NVL2(commission_pct, salary + salary * commission_pct, salary) "Compensación"
from employees
where 1=1
order by 2;

--regresara la primera expresión que no sea nula
--coalesce(x1, x2, x3)
select 
last_name, 
salary, 
commission_pct as comm, 
coalesce( salary + salary * commission_pct, salary + 100, 900) "Comisión"
from employees
where 1=1
order by 2;

