create procedure proc_insertar_usuario --Creaci�n de Procedimiento
@nombre varchar(255),
@pass varchar(255)
as
insert into dbo.usuarios values(@nombre,@pass);