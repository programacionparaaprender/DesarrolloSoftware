create procedure numero_representantes --Creación de Procedimiento
@count int output --Parametro de salida
as
set @count = (select count(nombre) from representantes); -- Sentencias del procedimiento
return @count;
use editorialweb;

declare @count int;
exec @count = numero_representantes;
select @count as 'Cantidad de Representantes';

select count(nombre) from representantes;
