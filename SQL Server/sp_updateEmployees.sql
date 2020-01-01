create procedure sp_updateEmployees
@EmployeesId int,
@EmployeeName nvarchar(max),
@DepartmentName nvarchar(max), 
@Gender nvarchar(max), 
@City varchar(20)
as

update dbo.Employees
set FirstName = @EmployeeName,
Gender = @Gender,
City = @City
where
Id = @EmployeesId 