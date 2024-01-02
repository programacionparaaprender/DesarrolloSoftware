create procedure dbo.spDeleteEmplyeesById
@EmployeeId int  
as  
begin  
update Employees 
set estado = 0
where  
Id = @EmployeeId    
end