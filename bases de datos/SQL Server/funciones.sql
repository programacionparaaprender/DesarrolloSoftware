create FUNCTION FN_LISTA_LIBROS2(@NOMBRE VARCHAR(255))
RETURNS @TABLE TABLE
(nombre VARCHAR(255))
AS 
BEGIN
INSERT INTO @TABLE
 select nombre 
 from dbo.libros WHERE (nombre = @NOMBRE OR @NOMBRE='')
RETURN 
END
GO

--use editorialweb;
--select * from FN_LISTA_LIBROS2('');