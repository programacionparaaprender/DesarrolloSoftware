USE [QuirkyBookProject]
GO

/****** StoredProcedure [dbo].[sp_GetDepartment]    Script Date: 24/12/2019 10:43:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure dbo.spGetEmployeesByDepartmentId
@DepartmentId int
as
begin
select 
EmployeeId = E.Id,
EmployeeName = E.FirstName,
D.DepartmentId, 
DepartmentName = D.Name 
from 
Employees E 
inner join Departament D on E.DepartmentId = D.DepartmentId
where
D.DepartmentId = @DepartmentId

end