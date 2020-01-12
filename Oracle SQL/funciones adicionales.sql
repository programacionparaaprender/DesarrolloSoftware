-- decode(x, m1, r1, m2, r2, r3...)


select country_id, country_name, region_id,
decode(region_id, 1, 'Europa', 2, 'América', 3, 'Asia', 'Otro') Region
from countries
where 1=1
;

--GREATEST(lista de expresiones)
select
GREATEST('01-APR-08','30-DIC-08','20-ENE-10') from dual;

select
last_name,
salary,
GREATEST(salary * 0.15, 500) bono
from employees
where 1=1
and department_id in (30, 10) 
order by last_name;

--least toma el menor
select
LEAST('01-APR-08','30-DIC-08','20-ENE-10') from dual;
 
