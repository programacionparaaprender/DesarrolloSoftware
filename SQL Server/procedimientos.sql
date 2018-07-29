ALTER procedure [dbo].[mostrar_autor] --Creación de Procedimiento
@nombre varchar(255) = 'William'
as
select * from autores where nombre = @nombre; -- Sentencias del procedimiento

--exec mostrar_autor 'William';


ALTER procedure [dbo].[insertar_autor] --Creación de Procedimiento
@nombre varchar(255),
@apellido varchar(255)
as
insert into autores values(@nombre,@apellido); -- Sentencias del procedimiento
