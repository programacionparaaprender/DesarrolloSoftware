create procedure Representantes_Nivel2 as --Creaci�n de Procedimiento
select * from representantes where idnivel = 2 -- Sentencias del procedimiento

create procedure Representantes_Nivel2 (IN idnivel INT)
BEGIN
select * from representantes where idnivel = 2;
END

exec Representantes_Nivel2; --Ejecuci�n del procedimiento