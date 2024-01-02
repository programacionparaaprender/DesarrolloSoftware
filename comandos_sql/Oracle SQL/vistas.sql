

create or replace view empleados_depts as 
select first_name || ' ' || last_name as Nombre,
department_name, city, country_name
from 
employees 
natural join departments
natural join countries
natural join locations;

select * from empleados_depts;

select * from empleados_depts
where department_name like 'F%';

drop view empleados_depts;