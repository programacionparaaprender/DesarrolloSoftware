alter procedure dbo.spGetEmployees
as
begin
select 
EmployeeId = E.Id,
EmployeeName = E.FirstName,
E.Gender,
E.City
from 
Employees E 
where 1=1
and estado = 1

end