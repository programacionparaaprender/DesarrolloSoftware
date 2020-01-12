
/*mostrar jobs con min_salary mayores a 10000 */
select
*
from
jobs
where min_salary > 10000;


/*mostrar empleados entre el añoo 2002 y 2005*/
select
first_name,
hire_date
from
employees
where to_char(hire_date, 'YYYY') between '2002' and '2005'
order by hire_date;

select
*
from 
jobs;

select
e.first_name,
e.hire_date
from
employees e
--natural join jobs j
where 1=1
and JOB_ID in ('IT_PROG','SA_MAN')
--to_char(hire_date, 'YYYY') between '2002' and '2005'
order by hire_date;