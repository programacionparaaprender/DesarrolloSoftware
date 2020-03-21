create procedure spInsertarProyectos
@user_id int,
@nombre nvarchar(80)
as
declare @id int
insert into dbo.proyectos(user_id,nombre,created_at) 
values(@user_id, @nombre, getdate());
set @id = @@IDENTITY;
select top 1 * from dbo.proyectos where id = @id;
          

--select top 1 * from dbo.proyectos 
----where user_id=? 
--order by  id desc