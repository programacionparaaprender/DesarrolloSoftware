--create procedure mostrar_autor --Creación de Procedimiento
--@nombre varchar(255) = 'William' --valor por defecto
--as
--select * from autores where nombre = @nombre; -- Sentencias del procedimiento

--exec mostrar_autor 'William';

--create procedure insertar_autor --Creación de Procedimiento
--@nombre varchar(255),
--@apellido varchar(255)
--as
--insert into autores values(@nombre,@apellido); -- Sentencias del procedimiento

--exec insertar_autor 'Luis', 'Correa';

exec mostrar_autor 'Luis';