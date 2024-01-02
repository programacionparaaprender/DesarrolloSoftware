use TEST
DECLARE @Description AS nvarchar(max) 
declare @cadena as nvarchar(max)
select @cadena = ''
select @Description = ''

DECLARE ProdInfo CURSOR FOR 
SELECT u.nombre FROM dbo.usuarios u
OPEN ProdInfo
FETCH NEXT FROM ProdInfo INTO @cadena
WHILE @@fetch_status = 0
BEGIN
    PRINT @cadena
	select @Description += '['+@cadena+'],'
    FETCH NEXT FROM ProdInfo INTO @cadena
END
CLOSE ProdInfo
DEALLOCATE ProdInfo
select @Description = SUBSTRING(@Description,1,len(@Description)-1)
print @description