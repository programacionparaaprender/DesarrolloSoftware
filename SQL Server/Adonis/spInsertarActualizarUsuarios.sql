alter procedure dbo.spInsertarActualizarUsuarios
@id int,
@username nvarchar(80),
@email nvarchar(254),
@password nvarchar(60)
as
if(@id <> 0)
	begin
	update dbo.users
	set password = @password,
	updated_at = getdate()
	where id = @id
	end
else
	begin
	insert into dbo.users(username,email,password,created_at)
	values(@username, @email, @password, getdate());
	end
--merge dbo.users H
--using( 
--select id as id,
--username as username, 
--email as email,
--password as password
--from dbo.users 
--where 1=1 and id = @id
--)  HT on HT.id = H.id
--when matched then
--update set 
--password = @password,
--updated_at = getdate()
--when not matched then
--insert(username,email,password,created_at)
--values(@username, @email, @password, getdate());
