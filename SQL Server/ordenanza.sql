
--drop database Ordenanza;
--create database Ordenanza;

use Ordenanza;

create table Area 
(
	areaId int identity(1, 1),
	nombre varchar(30),
	areaPadreId int not null,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKareaId PRIMARY KEY (areaId),
	CONSTRAINT FKAreaareaPadreId FOREIGN KEY (areaPadreId) REFERENCES Area(areaId)
);

create table Marca
(
	marcaId int identity(1, 1),
	nombre varchar(20),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKmarcaId PRIMARY KEY (marcaId)
);

create table Dispositivo
(
	dispositivoId int identity(1, 1),
	nombre varchar(20),
	direccionIp varchar(30),
	marcaId int,
	pushActivo bit,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKdispositivoId PRIMARY KEY (dispositivoId),
	CONSTRAINT FKMarcamarcaId FOREIGN KEY (marcaId) REFERENCES Marca(marcaId)
);

create table CentroCostos
(
	centroConstosId int identity(1, 1),
	nombre varchar(30),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKcentroConstosId PRIMARY KEY (centroConstosId)
);

create table TipoUsuario
(
	tipoUsuarioId int identity(1, 1),
	nombre varchar(20),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKtipoUsuarioId PRIMARY KEY (tipoUsuarioId)
);

create table Nacionalidad
(
	nacionalidadId int identity(1, 1),
	nombre varchar(30),
	estado int default 1,
	CONSTRAINT PKnacionalidadId PRIMARY KEY (nacionalidadId)
);

create table TipoDocumento
(
	tipoDocumentoId int identity(1, 1),
	nombre varchar(30),
	estado int default 1,
	CONSTRAINT PKtipoDocumentoId PRIMARY KEY (tipoDocumentoId)
);

create table Usuario
(
	usuarioId int identity(1, 1),
	nombreusuario varchar(30),
	[password] varchar(30),
	nombres varchar(50),
	apellidos varchar(50),
	documento varchar(20),
	idequipo varchar(30),
	tarjeta varchar(50),
	areaId int not null,
	centroConstosId int not null,
	tipoUsuarioId int ,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	nacionalidadId int,
	tipoDocumentoId int,
	CONSTRAINT PKusuarioId PRIMARY KEY (usuarioId),
	CONSTRAINT FKUsuariotipoDocumentoId FOREIGN KEY (tipoDocumentoId) REFERENCES TipoDocumento(tipoDocumentoId),
	CONSTRAINT FKUsuarionacionalidadId FOREIGN KEY (nacionalidadId) REFERENCES Nacionalidad(nacionalidadId),
	CONSTRAINT FKUsuariotipoUsuarioId FOREIGN KEY (tipoUsuarioId) REFERENCES TipoUsuario(tipoUsuarioId),
	CONSTRAINT FKUsuarioareaId FOREIGN KEY (areaId) REFERENCES Area(areaId),
	CONSTRAINT FKCentroCostoscentroConstosId FOREIGN KEY (centroConstosId) REFERENCES CentroCostos(centroConstosId)
);

create table AreaAprobador
(
	areaAprobadorId int identity(1, 1),
	areaId int,
	usuarioId int,
	nivel int,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKareaAprobadorId PRIMARY KEY (areaAprobadorId),
	CONSTRAINT FKAreaAprobadorusuarioId FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId),
	CONSTRAINT FKAreaAprobadorareaId FOREIGN KEY (areaId) REFERENCES Area(areaId)
);

create table Contrato
(
	contratoId int identity(1, 1),
	fechaInicio date,
	fechaFin date,
	usuarioId int not null,
	diasVacaciones int default 30,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKcontratoId PRIMARY KEY (contratoId),
	CONSTRAINT FKContratousuarioId FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId),
);

create table Feriados
(
	feriadosId int identity(1, 1),
	dia date,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKferiadosId PRIMARY KEY (feriadosId),
);

create table Vacaciones
(
	vacacionesId int identity(1, 1),
	fechaInicio date,
	fechaFin date,
	contratoId int not null,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKvacacionesId PRIMARY KEY (vacacionesId),
	CONSTRAINT FKVacacionescontratoId FOREIGN KEY (contratoId) REFERENCES Contrato(contratoId)
);

create table RostroDigital
(
	rostroDigitalId int identity(1, 1),
	rostroId int,
	marcaId int,
	Rostro nvarchar(max),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKrostroDigitalId PRIMARY KEY (rostroDigitalId),
	CONSTRAINT FKRostroDigitalmarcaId FOREIGN KEY (marcaId) REFERENCES Marca(marcaId)
);

create table HuellaDigital
(
	HuellaDigitalId int identity(1, 1),
	HuellaId int,
	marcaId int,
	Huella nvarchar(max),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKHuellaDigitalId PRIMARY KEY (HuellaDigitalId),
	CONSTRAINT FKHuellaDigitalmarcaId FOREIGN KEY (marcaId) REFERENCES Marca(marcaId)
);

create table Marcacion
(
	marcacionId int identity(1, 1),
	hora time(5),
	dia date,
	fecha datetime,
	dispositivoId int,
	usuarioId int ,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKMarcacionId PRIMARY KEY (marcacionId, usuarioId, dia, hora),
	CONSTRAINT FKMarcaciondispositivoId FOREIGN KEY (dispositivoId) REFERENCES Dispositivo(dispositivoId),
	CONSTRAINT FKUsuariousuarioId FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId)
);


create table Horario
(
	horarioId int identity(1, 1),
	nombre varchar(20),
	madrugada bit,
	color varchar(50),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKhorarioId PRIMARY KEY (horarioId)
);

create table TipoIncidencia
(
	tipoIncidenciaId int identity(1, 1),
	nombre varchar(30),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKtipoIncidenciaId PRIMARY KEY (tipoIncidenciaId),
);

create table Incidencia
(
	incidenciaId int identity(1, 1),
	nombre varchar(20),
	color varchar(50),
	tipoIncidenciaId int not null,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKincidenciaId PRIMARY KEY (incidenciaId),
	CONSTRAINT FKIncidenciatipoIncidenciaId FOREIGN KEY (tipoIncidenciaId) REFERENCES TipoIncidencia(tipoIncidenciaId)
);

create table HorarioIncidencia
(
	horarioIncidenciaId int identity(1, 1),
	inicio time(5),
	fin time(5),
	margenInicio int,
	margenFin int,
	horarioId int,
	incidenciaId int,
	estado int default 1,
	CONSTRAINT PKhorarioIncidenciaId PRIMARY KEY (horarioIncidenciaId),
	CONSTRAINT FKHorarioIncidenciahorarioId FOREIGN KEY (horarioId) REFERENCES Horario(horarioId),
	CONSTRAINT FKIncidenciaincidenciaId FOREIGN KEY (incidenciaId) REFERENCES Incidencia(incidenciaId)
);

create table HorarioContrato
(
	horarioContratoId int identity(1, 1),
	horarioId int,
	contratoId int,
	dia date,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKhorarioContratoId PRIMARY KEY (horarioContratoId),
	CONSTRAINT FKHorarioContratocontratoId FOREIGN KEY (contratoId) REFERENCES Contrato(contratoId),
	CONSTRAINT FKHorarioUsuariohorarioId FOREIGN KEY (horarioId) REFERENCES Horario(horarioId)
);

--create table TipoHorasExtras
--(
--	tipoHorasExtrasId int identity(1, 1),
--	nombre varchar(30),
--	usuarioSys int not null,
--	fechaSys datetime not null,
--	usuarioUpd int null,
--	fechaUpd datetime null,
--	estado int default 1,
--	CONSTRAINT PKtipoHorasExtrasId PRIMARY KEY (tipoHorasExtrasId)
--);

--create table HorasExtras
--(
--	horasExtrasId int identity(1, 1),
--	incidenciaId int,
--	minutos int,
--	horarioContratoId int,
--	nivelAprobacion int,
--	tipoHorasExtrasId int,
--	usuarioSys int not null,
--	fechaSys datetime not null,
--	usuarioUpd int null,
--	fechaUpd datetime null,
--	estado int default 1,
--	CONSTRAINT PKhorasExtrasId PRIMARY KEY (horasExtrasId),
--	CONSTRAINT FKTipoHorasExtrastipoHorasExtrasId FOREIGN KEY (tipoHorasExtrasId) REFERENCES TipoHorasExtras(tipoHorasExtrasId),
--	CONSTRAINT FKHorasExtrasincidenciaId FOREIGN KEY (incidenciaId) REFERENCES Incidencia(incidenciaId),
--	CONSTRAINT FKHorasExtrashorarioContratoId FOREIGN KEY (horarioContratoId) REFERENCES HorarioContrato(horarioContratoId)
--);

--create table Compensaciones
--(
--	compensacionesId int identity(1, 1),
--	incidenciaId int,
--	horarioContratoId int,
--	nivelAprobacion int,
--	usuarioSys int not null,
--	fechaSys datetime not null,
--	usuarioUpd int null,
--	fechaUpd datetime null,
--	estado int default 1,
--	CONSTRAINT compensacionesId PRIMARY KEY (compensacionesId),
--	CONSTRAINT FKCompensacionesincidenciaId FOREIGN KEY (incidenciaId) REFERENCES Incidencia(incidenciaId),
--	CONSTRAINT FKCompensacioneshorarioContratoId FOREIGN KEY (horarioContratoId) REFERENCES HorarioContrato(horarioContratoId)
--);

create table TipoProceso
(
	tipoProcesoId int identity(1, 1),
	nombre varchar(30),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKtipoProcesoId PRIMARY KEY (tipoProcesoId)
);

create table Procesos
(
	 procesosId int identity(1, 1),
	 tipo int,
	 porcentaje int,
	 tipoProcesoId int ,
	 usuarioSys int not null,
	 fechaSys datetime not null,
	 usuarioUpd int null,
	 fechaUpd datetime null,
	 estado int default 1,
	 CONSTRAINT PKprocesosId PRIMARY KEY (procesosId),
	 CONSTRAINT FKProcesostipoProcesoId FOREIGN KEY (tipoProcesoId) REFERENCES TipoProceso(tipoProcesoId)
);

create table Subprocesos
(
	subprocesoId int identity(1, 1),
	procesosId int,
	tipo int,
	parametros nvarchar(max),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKsubprocesoId PRIMARY KEY (subprocesoId),
	CONSTRAINT FKSubprocesosprocesosId FOREIGN KEY (procesosId) REFERENCES Procesos(procesosId)
);

create table RostroDigitalTemp
(
	rostroDigitalTempId int identity(1, 1),
	procesosId int,
	rostroId int,
	marcaId int,
	Rostro nvarchar(max),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKrostroDigitalTempId PRIMARY KEY (rostroDigitalTempId),
	CONSTRAINT FKRostroDigitalTempmarcaId FOREIGN KEY (marcaId) REFERENCES Marca(marcaId),
	CONSTRAINT FKRostroDigitalTempprocesosId FOREIGN KEY (procesosId) REFERENCES Procesos(procesosId)
);

create table UsuarioTemp
(
	usuarioTempId int identity(1, 1),
	nombreusuario varchar(30),
	[password] varchar(30),
	tipoUsuario int,
	tarjeta varchar(50),
	idequipo varchar(30),
	procesosId int,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKusuarioTempId PRIMARY KEY (usuarioTempId),
	CONSTRAINT FKRUsuarioTempTempprocesosId FOREIGN KEY (procesosId) REFERENCES Procesos(procesosId)
);

create table MarcacionTemp
(
	marcacionTempId int identity(1,1),
	hora time(5),
	dia date,
	fecha datetime,
	dispositivoId int,
	procesosId int,
	usuarioId int ,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKmarcacionTempId PRIMARY KEY (marcacionTempId),
	CONSTRAINT FKMarcacionTempdispositivoId FOREIGN KEY (dispositivoId) REFERENCES Dispositivo(dispositivoId),
	CONSTRAINT FKMarcacionTempusuarioId FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId),
	CONSTRAINT FKMarcacionTempprocesosId FOREIGN KEY (procesosId) REFERENCES Procesos(procesosId)
);

--insert into
--dbo.CentroCostos
--(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values
--('Pago',1,getdate(),null,null);

--insert into
--dbo.Area
--(nombre,areaPadreId,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values
--('Area1',1,1,getdate(),null,null);

--insert into 
--dbo.TipoUsuario(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values('Administrador',1,getdate(),null,null);


--insert into 
--dbo.Nacionalidad
--(nombre)
--values('Peruana');

--insert into 
--dbo.TipoDocumento
--(nombre)
--values('DNI');

--insert into
--dbo.Usuario
--(nombreusuario,[password],nombres,apellidos,documento ,idequipo  ,tarjeta    ,areaId,centroConstosId,tipoUsuarioId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd,estado,nacionalidadId,tipoDocumentoId)
--values
--('admin'      ,'123456' ,'luis'  ,'correa' ,'46464646','46464646','[0000000]',1     ,1              ,1            ,1         ,getdate(),null      ,null    ,1     ,1             ,1);

--insert into 
--dbo.Horario(nombre,madrugada,color,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values('HorarioTrabajo', 0, 'background-color:black',1,getdate(),null,null);

--insert into 
--dbo.TipoIncidencia(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values('Trabajo',1,getdate(),NULL,NULL);

--insert into 
--dbo.TipoIncidencia(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values('Descanso refrigerio',1,getdate(),NULL,NULL);


--insert into 
--dbo.Incidencia
--(nombre          ,inicio ,fin    ,margenInicio,margenFin,color,tipoIncidenciaId,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values
--('Trabajo mañana','08:30','13:00',30,30,'background-color:blue',1,1,getdate(),null,null);

--insert into 
--dbo.Incidencia
--(nombre,inicio,fin,margenInicio,margenFin,color,tipoIncidenciaId,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values
--('Rerigerio','13:00','14:00',30,30,'background-color:red',2,1,getdate(),null,null);


--insert into 
--dbo.Incidencia
--(nombre,inicio,fin,margenInicio,margenFin,color,tipoIncidenciaId,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values
--('Trabajo tarde','14:00','18:30',30,30,'background-color:orangered',1,1,getdate(),null,null);

--insert into 
--dbo.HorarioIncidencia
--(horarioId,incidenciaId)
--values
--(1,1);

--insert into 
--dbo.HorarioIncidencia
--(horarioId,incidenciaId)
--values
--(1,2);

--insert into 
--dbo.HorarioIncidencia
--(horarioId,incidenciaId)
--values
--(1,3);


--insert into
--dbo.Contrato
--(fechaInicio,fechaFin,usuarioId,diasVacaciones,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
--values
--('2010-01-02','2011-01-01',1,30,1,getdate(),null,null);

--insert into 
--dbo.HorarioContrato
--(horarioId,contratoId,dia          ,usuarioSys,fechaSys  , usuarioUpd,fechaUpd,estado)
--values
--(1        , 1        , '2010-01-04',1         , getdate(), null      , null   , 1);


--insert 
--into dbo.Marca
--(nombre    ,usuarioSys, fechaSys ,usuarioUpd,fechaUpd,estado)
--values
--('GRANDING', 1        , getdate(),null      ,null    ,1)

--insert
--into dbo.Dispositivo
--(nombre       ,direccionIp  ,marcaId,pushActivo,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('192.168.253','192.168.253',1      , 1        ,         1, getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('08:30','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('08:30','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('13:00','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('14:00','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('18:30','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

--IF OBJECT_ID (N'dbo.fnGetExistenMarcaciones', N'FN') IS NOT NULL  
--    DROP FUNCTION fnGetExistenMarcaciones;  
--GO  
--CREATE FUNCTION dbo.fnGetExistenMarcaciones(
--@UsuarioId int,
--@inicio time(5),
--@fin time(5),
--@dia date,
--@margenInicio int,
--@margenFin int
--)  
--RETURNS int   
--AS   
---- Returns the stock level for the product.  
--BEGIN  
--    DECLARE @ret int;  
--select 
--	@ret = count(*) 
--	from 
--	dbo.Marcacion 
--	M where 1=1 
--	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
--	and M.usuarioId = @UsuarioId
--	and (
--	M.hora between 
--	@inicio 
--	and 
--	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
--	or 
--	M.hora between 
--	@fin
--	and 
--	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
--	) 
--     IF (isnull(@ret,0) = 0)   
--        SET @ret = 0;  
--    RETURN @ret;  
--END; 

--IF OBJECT_ID (N'dbo.fnPrimerMarcacion', N'FN') IS NOT NULL  
--    DROP FUNCTION dbo.fnPrimerMarcacion;  
--GO  
--CREATE FUNCTION dbo.fnPrimerMarcacion(
--@UsuarioId int,
--@inicio time(5),
--@fin time(5),
--@dia date,
--@margenInicio int,
--@margenFin int
--)  
--RETURNS time(5)   
--AS   
---- Returns the stock level for the product.  
--BEGIN  
--    DECLARE @ret time(5);  
--select top 1
--	@ret = M.hora 
--	from 
--	dbo.Marcacion 
--	M where 1=1 
--	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
--	and M.usuarioId = @UsuarioId
--	and (
--	M.hora between 
--	@inicio 
--	and 
--	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
--	or 
--	M.hora between 
--	@fin
--	and 
--	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
--	)
--	order by M.hora asc
--     IF (@ret = null)   
--        SET @ret = '00:00';  
--    RETURN @ret;  
--END; 

--IF OBJECT_ID (N'dbo.fnSegundaMarcacion', N'FN') IS NOT NULL  
--    DROP FUNCTION dbo.fnSegundaMarcacion;  
--GO  
--CREATE FUNCTION dbo.fnSegundaMarcacion(
--@UsuarioId int,
--@inicio time(5),
--@fin time(5),
--@dia date,
--@margenInicio int,
--@margenFin int
--)  
--RETURNS time(5)   
--AS   
---- Returns the stock level for the product.  
--BEGIN  
--    DECLARE @ret time(5);  
--select top 1
--	@ret = M.hora 
--	from 
--	dbo.Marcacion 
--	M where 1=1 
--	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
--	and M.usuarioId = @UsuarioId
--	and (
--	M.hora between 
--	@inicio 
--	and 
--	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
--	or 
--	M.hora between 
--	@fin
--	and 
--	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
--	)
--	order by M.hora desc
--     IF (@ret = null)   
--        SET @ret = '00:00';  
--    RETURN @ret;  
--END; 


--IF OBJECT_ID (N'dbo.fnExistePrimerMarcacion', N'FN') IS NOT NULL  
--    DROP FUNCTION dbo.fnExistePrimerMarcacion;  
--GO  
--CREATE FUNCTION dbo.fnExistePrimerMarcacion(
--@UsuarioId int,
--@inicio time(5),
--@dia date,
--@margenInicio int
--)  
--RETURNS int   
--AS   
---- Returns the stock level for the product.  
--BEGIN  
--    DECLARE @ret int;  
--select top 1
--	@ret = count(*)
--	from 
--	dbo.Marcacion 
--	M where 1=1 
--	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
--	and M.usuarioId = @UsuarioId
--	and 
--	M.hora between 
--	@inicio 
--	and 
--	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
--     IF (isnull(@ret,0) = 0)   
--        SET @ret = 0;
	
--	--IF (@ret = 1)   
-- --       SET @ret = 0;

--    RETURN @ret;  
--END; 

--IF OBJECT_ID (N'dbo.fnExisteSegundaMarcacion', N'FN') IS NOT NULL  
--    DROP FUNCTION dbo.fnExisteSegundaMarcacion;  
--GO  
--CREATE FUNCTION dbo.fnExisteSegundaMarcacion(
--@UsuarioId int,
--@fin time(5),
--@dia date,
--@margenFin int
--)  
--RETURNS int   
--AS   
---- Returns the stock level for the product.  
--BEGIN  
--    DECLARE @ret int;  
--select top 1
--	@ret = count(*) 
--	from 
--	dbo.Marcacion 
--	M where 1=1 
--	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
--	and M.usuarioId = @UsuarioId
--	and 
--	M.hora between 
--	@fin
--	and 
--	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
	
--     IF (isnull(@ret,0) = 0)   
--        SET @ret = 0;  
--	--IF (@ret = 1)   
-- --       SET @ret = 0;  

--    RETURN @ret;  
--END; 


insert into
dbo.Usuario
(nombreusuario,[password],nombres,apellidos,documento ,idequipo  ,tarjeta    ,areaId,centroConstosId,tipoUsuarioId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd,estado,nacionalidadId,tipoDocumentoId)
values
('admin'      ,'123456' ,'luis'  ,'correa' ,'46464646','46464646','[0000000]',1     ,1              ,1            ,1         ,getdate(),null      ,null    ,1     ,1             ,1);


declare @Usuarios nvarchar(max) = '1,2,3,4';
declare @xIni int = 0;
declare @xFin int = 20;
declare @fechaIni datetime = '2010-01-04';
declare @UsuarioId int = 1;
create table #tablaTemp
(
 id int identity(1, 1),
 DiaIni date,
 DiaFin date
);

create table #tablaUsuarioTemp
(
 id int identity(1, 1),
 UsuarioId int
);

declare @SQL nvarchar(max)
set @SQL = 'select usuarioId from Usuario where usuarioId in('+@Usuarios+')';

insert into #tablaUsuarioTemp(UsuarioId)
execute sp_executeSQL @SQL;

while @xIni < @xFin
	begin 
	declare @fechaTemp datetime = dateadd(day,@xIni,@fechaIni);
	declare @count1 int = 0
	declare @count2 int = 0
	declare @madrugada int = 0;
	select 
	top 1 @madrugada = madrugada
	from
	dbo.Horario H
	inner join dbo.HorarioContrato HC on H.horarioId = HC.horarioId
	inner join dbo.Contrato C on HC.contratoId = C.contratoId
	where 1=1
	and C.usuarioId = @UsuarioId

	select 
	@count2 = count(*) 
	from 
	dbo.HorarioIncidencia HI
	inner join HorarioContrato HC on HI.horarioId = HC.horarioId
	inner join Contrato C on HC.contratoId = C.contratoId
	where 1=1
	and C.usuarioId = @UsuarioId

	select
	@count1 = count(*)
	from
	dbo.Incidencia I
	inner join dbo.HorarioIncidencia HI on I.incidenciaId = HI.incidenciaId
	inner join dbo.HorarioContrato HC on HI.horarioId = HC.horarioId
	inner join dbo.Contrato C on C.contratoId = HC.contratoId
	where 1=1
	and dbo.fnExistePrimerMarcacion(C.usuarioId,I.inicio,HC.dia, I.margenInicio) > 0
	and dbo.fnExisteSegundaMarcacion(C.usuarioId,I.fin, HC.dia, I.margenFin) > 0
	--and C.usuarioId = @UsuarioId;
	

	select
	dbo.fnGetExistenMarcaciones(C.usuarioId,I.inicio,I.fin, HC.dia, I.margenInicio, I.margenFin) existe,
	dbo.fnPrimerMarcacion(C.usuarioId,I.inicio,I.fin, HC.dia, I.margenInicio, I.margenFin) PrimerMarcacion,
	dbo.fnSegundaMarcacion(C.usuarioId,I.inicio,I.fin, HC.dia, I.margenInicio, I.margenFin) SegundaMarcacion,
	I.*
	from
	dbo.Incidencia I
	inner join dbo.HorarioIncidencia HI on I.incidenciaId = HI.incidenciaId
	inner join dbo.HorarioContrato HC on HI.horarioId = HC.horarioId
	inner join dbo.Contrato C on C.contratoId = HC.contratoId
	where 1=1
	and @count1 = @count2
	and dbo.fnExistePrimerMarcacion(C.usuarioId,I.inicio,HC.dia, I.margenInicio) > 0
	and dbo.fnExisteSegundaMarcacion(C.usuarioId,I.fin, HC.dia, I.margenFin) > 0
	--and C.usuarioId = @UsuarioId;
	order by I.inicio asc

	if(@madrugada = 1)
		begin 
		insert 
		into 
		#tablaTemp(DiaIni, DiaFin)
		values(@fechaTemp,dateadd(day,1,@fechaTemp));
		set @xIni = @xIni + 2;	
		end
	else
	begin 
		insert 
		into 
		#tablaTemp(DiaIni, DiaFin)
		values(@fechaTemp,@fechaTemp);
		set @xIni = @xIni + 1;	
		end
	end

select 
*
from
#tablaTemp;
drop table #tablaUsuarioTemp;
drop table #tablaTemp;