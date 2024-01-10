
--permite detectar en que base de datos se encuentra un procedimiento almacenado
EXEC sp_msforeachdb 'if exists(select 1 from [?].sys.objects where name=''spInsertaTipoEmpladoDefecto'') select ''?'' as FoundInDatabase from [?].sys.objects where name=''spInsertaTipoEmpladoDefecto'''