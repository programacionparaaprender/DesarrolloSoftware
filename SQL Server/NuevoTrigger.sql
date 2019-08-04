--CREATE TRIGGER NuevoTrigger
---- create or alter
--ON dbo.Books
---- { tabla | vista }
----{ FOR | AFTER | INSTEAD OF }
--FOR
----{ [ INSERT ] [ , ] [ UPDATE ] [ , ] [ DELETE ] }
--INSERT
--AS
--Begin
----Instrucciones T-SQL

--End

Create Trigger NuevoTrigger
on dbo.Books for delete
As
-- Se cuentan cuantos registros se eliminaron
IF (Select COUNT(*) from Deleted)>1
BEGIN
Raiserror('NO PUEDE ELIMINAR MÁS DE UN REGISTRO',16,1)
Rollback Tran
END
go

Create Trigger tgActualizarBooks
on dbo.Books for update
As
-- Se cuentan cuantos registros se eliminaron
IF (Select COUNT(*) from Deleted)>1
BEGIN
Raiserror('NO PUEDE ACTUALIZAR MÁS DE UN REGISTRO',16,1)
Rollback Tran
END
go


--https://www.manualsqlserver.com/?p=385
--Para crear un Trigger DDL se utiliza:

--CREATE TRIGGER NombreTrigger
--ON { ALL SERVER | BaseDatos }
--{ FOR | AFTER } { TipoEvento | GrupoEventos } [ ,…n ]
--AS
--Begin
--Instrucciones T-SQL
--End