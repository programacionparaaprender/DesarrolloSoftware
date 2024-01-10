USE [TEST]
GO
/****** Object:  StoredProcedure [dbo].[pa_mostrarUsuariosNuevo]    Script Date: 16/12/2018 02:23:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter procedure pa_mostrarUsuariosTabla(@id int)
AS 
set nocount on;
set transaction isolation level read
uncommitted
BEGIN transaction
declare @sConsulta nvarchar(max)
select @sConsulta = '
declare @tablaTemporal table(codigo int, usuario varchar(50), pass varchar(50))
insert @tablaTemporal 
exec pa_mostrarUsuariosNuevo '+convert(varchar,@id)+'
select codigo,usuario,pass from @tablaTemporal'
execute sp_executeSQL @sConsulta
commit transaction
set nocount off;

exec pa_mostrarUsuariosTabla 0