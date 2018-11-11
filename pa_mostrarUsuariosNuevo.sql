USE [TEST]
GO
/****** Object:  StoredProcedure [dbo].[pa_mostrarUsuarios]    Script Date: 11/11/2018 10:20:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter procedure pa_mostrarUsuariosNuevo(@id int)
AS 
set nocount on;
set transaction isolation level read
uncommitted
BEGIN transaction --inicio
declare @sConsulta nvarchar(max)
select @sConsulta = 'select id, nombre, pass from dbo.usuarios'+
case when @id = 0 then ' ' else '  WHERE id = '+convert(varchar,@id)+' ' end
execute sp_executeSQL @sConsulta
commit transaction
set nocount off;

exec pa_mostrarUsuariosNuevo 0
exec pa_mostrarUsuariosNuevo 1