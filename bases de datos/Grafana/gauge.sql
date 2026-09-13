SELECT
  count(distinct ed.BusinessEntityID) as measurement,
  ed.Department as outcome
from [AdventureWorks2019].[HumanResources].[vEmployeeDepartment] ed
group by ed.Department
order by 1 desc