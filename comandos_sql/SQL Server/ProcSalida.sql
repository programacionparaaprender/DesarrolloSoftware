--create procedure numero_autores --Creación de Procedimiento
--@count int output --Parametro de salida
--as
--set @count = (select count(nombre) from autores); -- Sentencias del procedimiento

use editorialweb;

declare @count int;
exec numero_autores @count output;
select @count as 'Cantidad de Autores';