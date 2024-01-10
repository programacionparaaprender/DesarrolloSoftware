use Ordenanza;

declare @usuarioId int

insert into 
dbo.Usuario
(nombreusuario,
password,
nombres,
apellidos,
documento,
idequipo,
tarjeta,
areaId,
centroConstosId,
tipoUsuarioId,
usuarioSys,
fechaSys,
usuarioUpd,
fechaUpd,
estado,
nacionalidadId,
tipoDocumentoId)
values
(@nombreusuario,
@password,
@nombres,
@apellidos,
@documento,
@idequipo,
@tarjeta,
@areaId,
@centroConstosId,
@tipoUsuarioId,
@usuarioSys,
getdate(),
null,
null,
1,
@nacionalidadId,
@tipoDocumentoId);
--guarda la clave primaria de dato guardado
set @usuarioId = @@IDENTITY;

--merge dbo.Usuario H
--using(
--select 
--usuarioId usuarioId,
--nombreusuario nombreusuario,
--[password] password,
--nombres nombres,
--apellidos apellidos,
--documento documento,
--idequipo idequipo,
--tarjeta tarjeta,
--areaId areaId,
--centroConstosId centroConstosId,
--tipoUsuarioId tipoUsuarioId,
--usuarioSys usuarioSys,
--fechaSys fechaSys,
--usuarioUpd usuarioUpd,
--fechaUpd fechaUpd,
--estado estado,
--nacionalidadId nacionalidadId, 
--tipoDocumentoId tipoDocumentoId
--from
--dbo.Usuario U
--)HT
--on H.usuarioId = HT.usuarioId
--when matched then
--update dbo.Usuario
--set nombreusuario = @nombreusuario,
--[password] = @password,
--nombres = @nombres,
--apellidos = @apellidos,
--documento = @documento,
--idequipo = @idequipo,
--tarjeta = @tarjeta,
--areaId = @areaId,
--centroConstosId = @centroConstosId,
--tipoUsuarioId = @tipoUsuarioId,
--usuarioUpd = @usuarioUpd,
--fechaUpd = getdate(),
--estado = @estado,
--nacionalidadId = @nacionalidadId,
--tipoDocumentoId = @tipoDocumentoId
--when not matched then
--insert(nombreusuario,password,nombres,apellidos,documento,idequipo,tarjeta,areaId,centroConstosId,tipoUsuarioId,usuarioSys,fechaSys,usuarioUpd,fechaUpd,estado,nacionalidadId,tipoDocumentoId)
--values(@nombreusuario,@password,@nombres,@apellidos,@documento,@idequipo,@tarjeta,@areaId,@centroConstosId,@tipoUsuarioId,@usuarioSys,@fechaSys,@usuarioUpd,@fechaUpd,@estado,@nacionalidadId,@tipoDocumentoId)