create FUNCTION fn_mostrarUsuarios(@id int)
RETURNS @TABLE TABLE
(id int,
nombre varchar(255),
pass varchar(255))
AS 
BEGIN
INSERT INTO @TABLE
 select id, nombre, pass from dbo.usuarios WHERE (id = @id OR @id=0)
RETURN 
END
GO
