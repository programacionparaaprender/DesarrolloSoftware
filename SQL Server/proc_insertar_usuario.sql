create procedure proc_insertar_usuario --Creación de Procedimiento
@nombre varchar(255),
@pass varchar(255)
as
insert into dbo.usuarios values(@nombre,@pass);