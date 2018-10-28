USE [TEST]
GO
create procedure pa_mostrarUsuarios(@id int)
AS 
BEGIN
select id, nombre, pass from dbo.usuarios WHERE (id = @id OR @id=0)
END