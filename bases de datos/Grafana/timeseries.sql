 with data as (
  select
    hiredate as hiredate,
    count(1)  as BusinessEntityId
  from [AdventureWorks2019].[HumanResources].[Employee]
  group by hiredate
)

select
  hiredate as time,
  sum(BusinessEntityId) over (order by hiredate asc rows between unbounded preceding and current row) as 'Metric'
from data
where hiredate BETWEEN '2006-01-01T00:00:00Z' AND '2014-01-01T05:23:09Z'
order by 1;