

--create procedure Representantes_Nivel2 as --Creaci�n de Procedimiento
--select * from representantes where idnivel = 2 -- Sentencias del procedimiento

--drop proc Representantes_Nivel2; --Elimina el procedimiento

--exec Representantes_Nivel2; --Ejecuci�n del procedimiento
use editorialweb;

if OBJECT_ID('Representantes_Nivel2') is not null
	select 'Existe' as 'Nombre' from dual;