
--drop database Ordenanza;
--create database Ordenanza;

use Ordenanza;


create table [dbo].[Direciones]
(
	direccionesId int identity(1, 1),
	ubicacion nvarchar(max),
	latitud varchar(500),
	longitud varchar(500),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKdireccionesId PRIMARY KEY (direccionesId)
);

go

create table dbo.Empresa
(
	empresaId int identity(1, 1),
	nombre nvarchar(max),
	documento varchar(100),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKempresaId PRIMARY KEY (empresaId)
);

go

create table dbo.TipoEmpleado
(
	tipoEmpleadoId int identity(1, 1),
	nombre varchar(100),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	empresaId int,
	CONSTRAINT PKtipoEmpleadoId PRIMARY KEY (tipoEmpleadoId),
	CONSTRAINT FKTipoEmpleadoempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

go

create table dbo.Menu
(
	menuId int identity(1, 1),
	nombre varchar(100),
	link varchar(100),
	menuPadreId int null,
	orden int,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	empresaId int,
	CONSTRAINT PKmenuId PRIMARY KEY (menuId),
	CONSTRAINT FKMenuempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);


create table dbo.Sede
(
	sedeId int identity(1, 1),
	nombre varchar(100),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKsedeId PRIMARY KEY (sedeId)
);

create table dbo.SedeEmpresa
(
	sedeEmpresaId int identity(1, 1),
	empresaId int,
	sedeId int,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKsedeEmpresaId PRIMARY KEY (sedeEmpresaId),
	CONSTRAINT FKSedeEmpresasedeeId FOREIGN KEY (sedeId) REFERENCES Sede(sedeId),
	CONSTRAINT FKSedeEmpresaempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table dbo.Area 
(
	areaId int identity(1, 1),
	nombre nvarchar(max),
	areaPadreId int null,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	empresaId int,
	CONSTRAINT PKareaId PRIMARY KEY (areaId),
	--CONSTRAINT FKAreaareaPadreId FOREIGN KEY (areaPadreId) REFERENCES Area(areaId),
	CONSTRAINT FKAreaempresa FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table dbo.Marca
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
	sedeId int,
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
	CONSTRAINT FKSedesedeId FOREIGN KEY (sedeId) REFERENCES Sede(sedeId),
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
	empresaId int,
	CONSTRAINT PKcentroConstosId PRIMARY KEY (centroConstosId),
	CONSTRAINT FKCentroCostosempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table TipoUsuario
(
	tipoUsuarioId int identity(1, 1),
	empresaId int,
	nombre varchar(20),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKtipoUsuarioId PRIMARY KEY (tipoUsuarioId),
	CONSTRAINT FKTipoUsuarioempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table Nacionalidad
(
	nacionalidadId int identity(1, 1),
	nombre varchar(30),
	estado int default 1,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	empresaId int,
	CONSTRAINT PKnacionalidadId PRIMARY KEY (nacionalidadId),
	CONSTRAINT FKNacionalidadempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table TipoDocumento
(
	tipoDocumentoId int identity(1, 1),
	nombre varchar(30),
	estado int default 1,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	empresaId int,
	CONSTRAINT PKtipoDocumentoId PRIMARY KEY (tipoDocumentoId),
	CONSTRAINT FKTipoDocumentoempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table Usuario
(
	usuarioId int identity(1, 1),
	nombreusuario nvarchar(max),
	[password] varchar(30),
	nombres varchar(50),
	apellidos varchar(50),
	documento varchar(20),
	idequipo varchar(30),
	tarjeta varchar(50),
	centroConstosId int null,
	tipoUsuarioId int ,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	nacionalidadId int,
	tipoDocumentoId int,
	tipoEmpleadoId int,
	empresaId int ,
	CONSTRAINT PKusuarioId PRIMARY KEY (usuarioId),
	CONSTRAINT FKUsuarioempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId),
	CONSTRAINT FKUsuariotipoDocumentoId FOREIGN KEY (tipoDocumentoId) REFERENCES TipoDocumento(tipoDocumentoId),
	CONSTRAINT FKUsuariotipoEmpleadoId FOREIGN KEY (tipoEmpleadoId) REFERENCES TipoEmpleado(tipoEmpleadoId),
	CONSTRAINT FKUsuarionacionalidadId FOREIGN KEY (nacionalidadId) REFERENCES Nacionalidad(nacionalidadId),
	CONSTRAINT FKUsuariotipoUsuarioId FOREIGN KEY (tipoUsuarioId) REFERENCES TipoUsuario(tipoUsuarioId),
	--CONSTRAINT FKCentroCostoscentroConstosId FOREIGN KEY (centroConstosId) REFERENCES CentroCostos(centroConstosId)
);

create table SedeUsuario
(
	sedeUsuarioId int identity(1, 1),
	sedeId int,
	usuarioId int,
	estado int default 1,
	CONSTRAINT PKsedeUsuarioId PRIMARY KEY (sedeUsuarioId),
	CONSTRAINT FKSedeUsuariosedeId FOREIGN KEY (sedeId) REFERENCES Sede(sedeId),
	CONSTRAINT FKUsuariousuarioId FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId)
);

create table [dbo].[AreaUsuario]
(
	areaUsuarioId int identity(1, 1),
	usuarioId int,
	areaId int, 
	fechaInicio date,
	fechaFin date,
	estado int default 1,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	CONSTRAINT PKareaUsuarioId PRIMARY KEY (areaUsuarioId),
	CONSTRAINT FKAreaareaId FOREIGN KEY (areaId) REFERENCES Area(areaId),
	CONSTRAINT FKAreaUsuariousuarioId FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId)
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
	CONSTRAINT FKMarcacionusuarioId FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId)
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
	empresaId int,
	CONSTRAINT PKhorarioId PRIMARY KEY (horarioId),
	CONSTRAINT FKHorarioempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table TipoActividad
(
	tipoActividadId int identity(1, 1),
	nombre varchar(30),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	empresaId int,
	CONSTRAINT PKtipoAccionId PRIMARY KEY (tipoActividadId),
	CONSTRAINT FKTipoActividadempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table Actividad
(
	actividadId int identity(1, 1),
	nombre varchar(20),
	color varchar(50),
	tipoActividadId int not null,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	empresaId int,
	CONSTRAINT PKaccionId PRIMARY KEY (actividadId),
	CONSTRAINT FKAcciontipoActividadId FOREIGN KEY (tipoActividadId) REFERENCES TipoActividad(tipoActividadId),
	CONSTRAINT FKActividadempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table HorarioActividad
(
	horarioActividadId int identity(1, 1),
	inicio time(5),
	fin time(5),
	margenInicio int,
	margenFin int,
	horarioId int,
	actividadId int,
	estado int default 1,
	CONSTRAINT PKhorarioActividadId PRIMARY KEY (horarioActividadId),
	CONSTRAINT FKHorarioActividadhorarioId FOREIGN KEY (horarioId) REFERENCES Horario(horarioId),
	CONSTRAINT FKHorarioActividadactividadId FOREIGN KEY (actividadId) REFERENCES Actividad(actividadId)
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

create table TipoUsuarioMenu
(
	tipoUsuarioMenuId int identity(1, 1),
	tipoUsuarioId int,
	menuId int,
	estado int default 1,
	CONSTRAINT PKtipoUsuarioMenuId PRIMARY KEY (tipoUsuarioMenuId),
	CONSTRAINT FKTipoUsuarioMenutipoUsuarioId FOREIGN KEY (tipoUsuarioId) REFERENCES TipoUsuario(tipoUsuarioId),
	CONSTRAINT FKTipoUsuarioMenumenuId FOREIGN KEY (menuId) REFERENCES Menu(menuId)
);

go

CREATE FUNCTION dbo.fnGetExistenMarcaciones(
@UsuarioId int,
@inicio time(5),
@fin time(5),
@dia date,
@margenInicio int,
@margenFin int
)  
RETURNS int   
AS   
BEGIN  
    DECLARE @ret int;  
select 
	@ret = count(*) 
	from 
	dbo.Marcacion 
	M where 1=1 
	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
	and M.usuarioId = @UsuarioId
	and (
	M.hora between 
	@inicio 
	and 
	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
	or 
	M.hora between 
	@fin
	and 
	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
	) 
     IF (isnull(@ret,0) = 0)   
        SET @ret = 0;  
    RETURN @ret;  
END; 

go

CREATE FUNCTION dbo.fnPrimerMarcacion(
@UsuarioId int,
@inicio time(5),
@fin time(5),
@dia date,
@margenInicio int,
@margenFin int
)  
RETURNS time(5)   
AS   
BEGIN  
    DECLARE @ret time(5);  
select top 1
	@ret = M.hora 
	from 
	dbo.Marcacion 
	M where 1=1 
	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
	and M.usuarioId = @UsuarioId
	and (
	M.hora between 
	@inicio 
	and 
	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
	or 
	M.hora between 
	@fin
	and 
	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
	)
	order by M.hora asc
     IF (@ret = null)   
        SET @ret = '00:00';  
    RETURN @ret;  
END; 

go

CREATE FUNCTION dbo.fnSegundaMarcacion(
@UsuarioId int,
@inicio time(5),
@fin time(5),
@dia date,
@margenInicio int,
@margenFin int
)  
RETURNS time(5)   
AS   
BEGIN  
    DECLARE @ret time(5);  
select top 1
	@ret = M.hora 
	from 
	dbo.Marcacion 
	M where 1=1 
	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
	and M.usuarioId = @UsuarioId
	and (
	M.hora between 
	@inicio 
	and 
	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
	or 
	M.hora between 
	@fin
	and 
	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
	)
	order by M.hora desc
     IF (@ret = null)   
        SET @ret = '00:00';  
    RETURN @ret;  
END; 

go

-- Objects: StoreProcedure fnExistePrimerMarcacion 28/03/2020 18:16

CREATE FUNCTION dbo.fnExistePrimerMarcacion(
@UsuarioId int,
@inicio time(5),
@dia date,
@margenInicio int
)  
RETURNS int   
AS   

BEGIN  
    DECLARE @ret int;  
select top 1
	@ret = count(*)
	from 
	dbo.Marcacion 
	M where 1=1 
	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
	and M.usuarioId = @UsuarioId
	and 
	M.hora between 
	@inicio 
	and 
	convert(time,dateadd(minute, @margenInicio, convert(datetime,@inicio))) 
     IF (isnull(@ret,0) = 0)   
        SET @ret = 0;
	
	IF (@ret = 1)   
        SET @ret = 0;

    RETURN @ret;  
END; 

go

-- Objects: StoreProcedure fnExisteSegundaMarcacion 28/03/2020 18:16

CREATE FUNCTION dbo.fnExisteSegundaMarcacion(
@UsuarioId int,
@fin time(5),
@dia date,
@margenFin int
)  
RETURNS int   
AS     
BEGIN  
    DECLARE @ret int;  
select top 1
	@ret = count(*) 
	from 
	dbo.Marcacion 
	M where 1=1 
	and convert(varchar,M.dia,112) = convert(varchar,@dia,112) 
	and M.usuarioId = @UsuarioId
	and 
	M.hora between 
	@fin
	and 
	convert(time,dateadd(minute, @margenFin, convert(datetime,@fin))) 
	
     IF (isnull(@ret,0) = 0)   
        SET @ret = 0;  
	IF (@ret = 1)   
        SET @ret = 0;  

    RETURN @ret;  
END; 

go

-- Objects: StoreProcedure spObtenerUsuariosPorArea 3/05/2020 05:49 pm

create procedure spObtenerUsuariosPorArea    
--declare
@empresaId int = 1,    
@areaId int =1,    
@centroCostoId int=0,    
@tipoEmpleadoId int =0   
as    
    
BEGIN TRANSACTION    
BEGIN TRY    
    
    
select    
0 'Check',     
U.usuarioId usuarioId_Ihd,    
apellidos + ', ' + nombres nombres,    
U.documento,    
isnull(CC.nombre,'No pertenece') CentroCosto,    
TU.nombre TipoUsuario,    
N.nombre Nacionalidad,    
TD.nombre TipoDocumento,    
isnull(TE.nombre,'No pertenece') TipoEmpleado,    
A.nombre Area    
--E.nombre Empresa    
from     
Usuario U    
inner join AreaUsuario AU on U.usuarioId = AU.usuarioId and AU.estado = 1    
inner join Area A on AU.areaId = A.areaId and A.estado = 1    
inner join Empresa E on U.empresaId = E.empresaId and E.estado = 1    
left join TipoUsuario TU on U.tipoUsuarioId = TU.tipoUsuarioId    
left join Nacionalidad N on U.nacionalidadId = N.nacionalidadId    
left join TipoDocumento TD on U.tipoDocumentoId = TD.tipoDocumentoId    
left join CentroCostos CC on U.centroConstosId = CC.centroConstosId and CC.estado = 1   
left join TipoEmpleado TE on TE.tipoEmpleadoId = U.tipoEmpleadoId   
where 1=1    
and U.estado = 1    
and U.empresaId = @empresaId    
and     
(A.areaId =     
case when @areaId = 0 then -1 else @areaId end    
or isnull(U.centroConstosId,0) =     
case when @centroCostoId = 0 then 0 else @centroCostoId end    
or U.tipoEmpleadoId =     
case when @tipoEmpleadoId = 0 then 0 else @tipoEmpleadoId end    
);    
    
    
    COMMIT TRANSACTION    
END TRY    
BEGIN CATCH    
    SELECT ERROR_NUMBER() AS errNumber    
       , ERROR_SEVERITY() AS errSeverity     
       , ERROR_STATE() AS errState    
       , ERROR_PROCEDURE() AS errProcedure    
       , ERROR_LINE() AS errLine    
       , ERROR_MESSAGE() AS errMessage    
    IF @@TRANCOUNT > 0    
        ROLLBACK TRANSACTION    
END CATCH    
    
--exec spObtenerUsuariosPorArea 1,0,0,0    
    
go

-- Objects: StoreProcedure spObtenerUsuariosPorArea 28/03/2020 07:35

create procedure spObtenerAreasPorEmpresa
@empresaId int
as

select 
areaId areaId,
nombre,
isnull(areaPadreId,0) areaPadreId
from Area A
where 1=1
and A.empresaId = @empresaId
and A.estado = 1

go


-- Objects: StoreProcedure spObtenerMenuPorPermisos 29/03/2020 18:04 

create procedure spObtenerMenuPorPermisos
--declare
@tipoUsuarioId int
as
select
menuId,
nombre,
link,
isnull(menuPadreId,0) menuPadreId,
orden,
usuarioSys,
fechaSys,
usuarioUpd,
fechaUpd,
estado
from
Menu M
where 1=1
and exists(select * from dbo.TipoUsuarioMenu TM
where 1=1 
and TM.estado = 1
and TM.menuId = M.menuId and TM.tipoUsuarioId = @tipoUsuarioId)
and M.estado = 1;

go

-- Objects: StoreProcedure spObtenerEmpresasCombo 29/03/2020 18:04 

create procedure spObtenerEmpresasCombo
@empresaId int
as
select
empresaId value,
nombre text
from dbo.Empresa
where 1=1
and estado = 1
and empresaId = case when @empresaId = 0 then empresaId else @empresaId end

go

-- Objects: StoreProcedure spObtenerEmpresas 29/03/2020 18:04 

create procedure spObtenerEmpresas
@empresaId int
as
select
empresaId value,
nombre text,
empresaId,
nombre,
documento,
usuarioSys,
fechaSys,
usuarioUpd,
fechaUpd,
estado
from dbo.Empresa
where 1=1
and estado = 1
and empresaId = case when @empresaId = 0 then empresaId else @empresaId end

go

-- Objects: StoreProcedure spObtenerMenuPadre 29/03/2020 18:04 

create procedure spObtenerMenuPadre
as
BEGIN TRANSACTION
BEGIN TRY
select
menuId Ihd,
menuId menuId_Ihd,
nombre,
link,
isnull(menuPadreId,0) menuPadreId_Ihd,
orden
from dbo.Menu
where 1=1
and isnull(menuPadreId,0) = 0
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber
       , ERROR_SEVERITY() AS errSeverity 
       , ERROR_STATE() AS errState
       , ERROR_PROCEDURE() AS errProcedure
       , ERROR_LINE() AS errLine
       , ERROR_MESSAGE() AS errMessage
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH

go

-- Objects: StoreProcedure spValidarAreaTieneEmpleados 11/04/2020 05:47 pm 

create procedure spValidarAreaTieneEmpleados  
--declare
@area_id int = 1  
as  
declare @valor int = 0;  

WITH AREAS    
AS      
(      
 SELECT a1.areaId,a1.Nombre FROM Area  a1 where a1.areaId=@area_id      
 union all      
 select a2.areaId,a2.Nombre from Area A2      
 inner join AREAS on a2.areaPadreId=AREAS.areaId   and a2.areaId<>1   
)  
select @valor = 1 from AREAS a 
inner join dbo.AreaUsuario ua
on a.areaId=ua.areaId 
where ua.estado<>0

select @valor;




go

-- Objects: StoreProcedure spObtenerTipoUsuarioMenu 11/04/2020 05:47 pm 

create procedure spObtenerTipoUsuarioMenu
@menuId int
as
BEGIN TRANSACTION
BEGIN TRY
select
tipoUsuarioId,
nombre
from dbo.TipoUsuario TU
where 1=1
and exists(select * from TipoUsuarioMenu TUM 
where 1=1
and TU.estado = 1
and TU.tipoUsuarioId = TUM.tipoUsuarioId
and TUM.menuId = @menuId)
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber
       , ERROR_SEVERITY() AS errSeverity 
       , ERROR_STATE() AS errState
       , ERROR_PROCEDURE() AS errProcedure
       , ERROR_LINE() AS errLine
       , ERROR_MESSAGE() AS errMessage
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH

go

-- Objects: StoreProcedure spObtenerMenuHijos 11/04/2020 05:47 pm 

create procedure spObtenerMenuHijos
@menuId int
as
BEGIN TRANSACTION
BEGIN TRY
select
menuId Ihd,
menuId menuId_Ihd,
nombre,
link,
isnull(menuPadreId,0) menuPadreId_Ihd,
orden
from dbo.Menu
where 1=1
and menuPadreId = @menuId
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber
       , ERROR_SEVERITY() AS errSeverity 
       , ERROR_STATE() AS errState
       , ERROR_PROCEDURE() AS errProcedure
       , ERROR_LINE() AS errLine
       , ERROR_MESSAGE() AS errMessage
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH

go

-- Objects: StoreProcedure spInsertaTipoUsuario 29/03/2020 18:04 

create procedure spInsertaTipoUsuario
@empresaId int,
@nombre varchar(20),
@usuarioSys int
as
BEGIN TRANSACTION
BEGIN TRY
	insert into
	dbo.TipoUsuario
	(empresaId ,nombre ,usuarioSys ,fechaSys ,usuarioUpd,fechaUpd,estado)
	values
	(@empresaId,@nombre,@usuarioSys,getdate(),null      ,null    ,1)
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber
       , ERROR_SEVERITY() AS errSeverity 
       , ERROR_STATE() AS errState
       , ERROR_PROCEDURE() AS errProcedure
       , ERROR_LINE() AS errLine
       , ERROR_MESSAGE() AS errMessage
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH

go

-- Objects: StoreProcedure spObtenerUsuarioLogin 29/03/2020 18:04 

create procedure spObtenerUsuarioLogin
@Username varchar(30),
@Password varchar(30)
as
select 
usuarioId Ihd,
usuarioId usuarioId_Ihd,
nombreusuario,
password,
nombres,
apellidos,
U.documento,
idequipo,
tarjeta,
centroConstosId,
tipoUsuarioId,
nacionalidadId,
tipoDocumentoId,
tipoEmpleadoId,
E.empresaId,
E.nombre Empresa
from
dbo.Usuario U
inner join dbo.Empresa E on U.empresaId = E.empresaId and E.estado = 1
where 1=1
and U.nombreusuario = @Username
and U.estado = 1
and U.password = @Password;

go

-- Objects: StoreProcedure spInsertarAreas 29/03/2020 18:04 

create procedure spInsertarAreas
@AreaId int,
@AreaPadreId int,
@Nombre varchar(30),
@empresaId int,
@usuarioSys int
as

BEGIN TRANSACTION

BEGIN TRY
	if(@AreaId = 0)
		begin
		if(@AreaPadreId = 0)
			begin
			insert dbo.Area
			(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd,estado,empresaId)
			values
			(@nombre,@usuarioSys,getdate(),null,null,1,@empresaId)
			end
		else
			begin
			insert dbo.Area
			(nombre,areaPadreId,usuarioSys,fechaSys,usuarioUpd,fechaUpd,estado,empresaId)
			values
			(@nombre,@areaPadreId,@usuarioSys,getdate(),null,null,1,@empresaId)
			end
		end
	else
		begin
		update dbo.Area
		set nombre = @Nombre,
		usuarioUpd = @usuarioSys,
		fechaUpd = getdate()
		where areaId = @AreaId  
		end
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber
       , ERROR_SEVERITY() AS errSeverity 
       , ERROR_STATE() AS errState
       , ERROR_PROCEDURE() AS errProcedure
       , ERROR_LINE() AS errLine
       , ERROR_MESSAGE() AS errMessage
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH



go

-- Objects: StoreProcedure dbo.spEliminarAreas 11/04/2020 02:05 pm 
create procedure dbo.spEliminarAreas
@AreaId int,
@usuarioSys int
as
if(not exists(
select * from dbo.AreaUsuario where estado = 1 and areaId = @AreaId
))
	begin
	update dbo.Area
	set estado = 0,
	usuarioUpd = @usuarioSys,
	fechaUpd = getdate()
	where 1=1 and areaId = @AreaId
	end
go


-- Objects: StoreProcedure spInsertarActividad 11/04/2020 12:41 

create procedure spInsertarActividad
@empresaId int,
@actividadId int,
@tipoActividadId int,
@color varchar(50),
@nombre varchar(20),
@usuarioSys int
as

BEGIN TRANSACTION

BEGIN TRY
	if(@actividadId = 0)
		begin
			insert dbo.Actividad
			(nombre ,color,tipoActividadId,usuarioSys,fechaSys,estado,empresaId)
			values
			(@nombre,@color,@tipoActividadId,@usuarioSys,getdate() ,1   ,@empresaId)

		end
	else
		begin
		update dbo.Actividad
		set nombre = @Nombre,
		color = @color,
		tipoActividadId = @tipoActividadId,
		usuarioUpd = @usuarioSys,
		fechaUpd = getdate()
		where actividadId = @actividadId  
		end
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber
       , ERROR_SEVERITY() AS errSeverity 
       , ERROR_STATE() AS errState
       , ERROR_PROCEDURE() AS errProcedure
       , ERROR_LINE() AS errLine
       , ERROR_MESSAGE() AS errMessage
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH

go

-- Objects: StoreProcedure spInsertaUsuarioExcel 3/05/2020 05:44 pm 

create procedure spInsertaUsuarioExcel  
--declare
@Nombres  varchar(50)='Alberto',  
@Apellidos varchar(50)='Yancel',  
@Documento varchar(20)='47474747',  
@TipoDocumento varchar(50)='DNI',  
@CentroCosto varchar(50) = 'Pago',  
@TipoUsuario varchar(50) = 'Empleado',  
@Nacionalidad varchar(50) = 'Peruana',  
@TipoEmpleado varchar(50) = 'Empleado',  
@Area nvarchar(max) = 'Area1',  
@FechaInicio varchar(10) = '2020-01-01',  
@FechaFin varchar(10) = '2020-12-31',  
@empresaId int = 1 
as  
BEGIN TRANSACTION  
BEGIN TRY    

if(not  
exists(  
select  
*  
from  
Usuario U  
where 1=1  
and U.Documento = @documento  
)  
)  
begin  
declare @tipoDocumentoId int,  
@centroCostoId int,  
@tipoUsuarioId int,  
@tipoEmpleadoId int,  
@areaId int,  
@nacionalidadId int,  
@usuarioId int  
  
select top 1  
@TipoDocumentoId = tipoDocumentoId  
from dbo.TipoDocumento  
where 1=1  
and nombre = @TipoDocumento  
and empresaId = @empresaId  
  
select top 1  
@centroCostoId = centroConstosId  
from dbo.CentroCostos  
where 1=1  
and nombre = @CentroCosto  
and empresaId = @empresaId  
  
select top 1  
@tipoUsuarioId from  
dbo.TipoUsuario  
where 1=1  
and nombre = @TipoUsuario  
and empresaId = @empresaId  
  
select top 1  
@nacionalidadId = nacionalidadId from  
dbo.Nacionalidad  
where 1=1  
and nombre = @Nacionalidad  
and empresaId = @empresaId  
  
select top 1  
@tipoEmpleadoId = tipoEmpleadoId from  
TipoEmpleado where 1=1  
and nombre = @TipoEmpleado  
and empresaId = @empresaId  
  
select top 1  
@areaId = areaId from dbo.Area  
where 1=1  
and empresaId = @empresaId  
and nombre = @Area;  
  
insert into dbo.Usuario  
(nombreusuario,password,nombres,apellidos,documento   ,idequipo,tarjeta,  
centroConstosId,tipoUsuarioId,usuarioSys,fechaSys,estado,nacionalidadId,tipoDocumentoId,tipoEmpleadoId,empresaId)  
values  
(@Documento   ,'123456',@Nombres,@Apellidos,@Documento,@Documento,''   ,  
@centroCostoId,@tipoUsuarioId,1          ,getdate(),1   ,@nacionalidadId,@tipoDocumentoId, @tipoEmpleadoId, @empresaId)  
set @usuarioId = @@IDENTITY  
insert into dbo.AreaUsuario  
(usuarioId,areaId,fechaInicio,fechaFin,estado,usuarioSys,fechaSys)  
values  
(@usuarioId,@areaId,@FechaInicio,@FechaFin,1,1, getdate())  
  
end  
  
  
    COMMIT TRANSACTION  
END TRY  
BEGIN CATCH  
    SELECT ERROR_NUMBER() AS errNumber  
       , ERROR_SEVERITY() AS errSeverity   
       , ERROR_STATE() AS errState  
       , ERROR_PROCEDURE() AS errProcedure  
       , ERROR_LINE() AS errLine  
       , ERROR_MESSAGE() AS errMessage  
    IF @@TRANCOUNT > 0  
        ROLLBACK TRANSACTION  
END CATCH   

go

-- Objects: StoreProcedure spInsertaTipoEmpleado 9/05/2020
create procedure spInsertaTipoEmpladoDefecto
@empresaId int
as
declare @tipoEmpleadoId int;
insert into
dbo.TipoEmpleado
(nombre, estado,usuarioSys,fechaSys ,empresaId)
values
('Ejecutivo', 1,1         ,getdate(),@empresaId);

insert into
dbo.TipoEmpleado
(nombre, estado,usuarioSys,fechaSys ,empresaId)
values
('Empleado', 1, 1         ,getdate(),@empresaId);
set @tipoEmpleadoId = @@IDENTITY;

insert into
dbo.TipoEmpleado
(nombre, estado,usuarioSys,fechaSys ,empresaId)
values
('Obrero',    1,         1,getdate(),@empresaId);

go

-- Objects: StoreProcedure spInsertaActividad 9/05/2020 05:13 pm

create procedure spInsertaActividad
@empresaId int
as
declare @horarioId int
declare @actividadId int
declare @tipoActividad int

insert into 
dbo.Horario(nombre,madrugada,color,usuarioSys,fechaSys,empresaId)
values('HorarioTrabajo', 0, 'background-color:black',1,getdate(),@empresaId);
set @horarioId = @@IDENTITY

insert into 
dbo.TipoActividad
(nombre   ,usuarioSys,fechaSys,empresaId)
values
('Trabajo',1         ,getdate(),@empresaId);
set @tipoActividad = @@IDENTITY;


insert into 
dbo.Actividad
(nombre          ,color                  ,tipoActividadId,usuarioSys,fechaSys,empresaId)
values
('Trabajo mañana','background-color:blue',@tipoActividad,1,getdate(),@empresaId);
set @actividadId = @@IDENTITY

insert into 
dbo.HorarioActividad
(horarioId,actividadId  ,inicio ,    fin, margenInicio, margenFin)
values
(@horarioId,@actividadId,'08:30','13:00',           30,30);

insert into 
dbo.Actividad
(nombre         ,color                       ,tipoActividadId,usuarioSys,fechaSys ,empresaId)
values
('Trabajo tarde','background-color:orangered',@tipoActividad,         1,getdate(),@empresaId);
set @actividadId = @@IDENTITY

insert into 
dbo.HorarioActividad
(horarioId,actividadId,inicio ,    fin, margenInicio, margenFin)
values
(@horarioId,@actividadId,'14:00','18:30',           30,30);

insert into 
dbo.TipoActividad
(nombre,usuarioSys,fechaSys,empresaId)
values
('Descanso refrigerio',1,getdate(),@empresaId);
set @tipoActividad = @@IDENTITY;

insert into 
dbo.Actividad
(nombre     ,color                 ,tipoActividadId,usuarioSys,fechaSys ,empresaId)
values
('Rerigerio','background-color:red',@tipoActividad,1         ,getdate(),@empresaId);
set @actividadId = @@IDENTITY

insert into 
dbo.HorarioActividad
(horarioId,actividadId,inicio ,    fin, margenInicio, margenFin)
values
(@horarioId,@actividadId,'13:00','14:00',           30,30);

insert into 
dbo.TipoActividad
(nombre,usuarioSys,fechaSys,empresaId)
values
('Horas extras',1,getdate(),@empresaId);
set @tipoActividad = @@IDENTITY;

insert into 
dbo.Actividad
(nombre         ,color                       ,tipoActividadId,usuarioSys,fechaSys ,empresaId)
values
('Horas extras','background-color:orangered',@tipoActividad,         1,getdate(),@empresaId);
set @actividadId = @@IDENTITY


insert into 
dbo.TipoActividad
(nombre,usuarioSys,fechaSys,empresaId)
values
('Compensación',1,getdate(),@empresaId);
set @tipoActividad = @@IDENTITY;

insert into 
dbo.Actividad
(nombre         ,color                       ,tipoActividadId,usuarioSys,fechaSys ,empresaId)
values
('Compensación','background-color:orange',@tipoActividad,         1,getdate(),@empresaId);
set @actividadId = @@IDENTITY



go

-- Objects: StoreProcedure spInsertarMenu 25/04/2020 12:41 

create procedure spInsertarMenu
@empresaId int
as
declare @id int
declare @AdminId int
declare @AreaId int
declare @nombreempresa nvarchar(max)
declare @usuarioId int
declare @centroCostosId int
declare @tipoEmpleadoId int
declare @nacionalidadId int
declare @tipoDocumentoId int

insert into
dbo.Menu
(nombre,link,menuPadreId, orden,usuarioSys,fechaSys  , empresaId)
values
('Home',''  ,null       , 1    , 1        , getdate(), @empresaId);
set @id = @@identity;

insert into
dbo.Menu
(nombre      ,link,menuPadreId,orden,usuarioSys,fechaSys  , empresaId)
values
('HelloWorld','/' ,@id          , 1   , 1        , getdate(), @empresaId);


insert into
dbo.Menu
(nombre         ,link,menuPadreId,orden,usuarioSys,fechaSys  , empresaId)
values
('Modulos',''  ,null       , 2   , 1        , getdate(), @empresaId);
set @id = @@identity

insert into
dbo.Menu
(nombre     ,link        ,menuPadreId,orden,usuarioSys,fechaSys   , empresaId)
values
('PDF','/pdf', @id         , 1   , 1        , getdate(), @empresaId);


insert into
dbo.Menu
(nombre     ,link        ,menuPadreId,orden,usuarioSys,fechaSys   , empresaId)
values
('Vue2GoogleMaps','/maps', @id         , 1   , 1        , getdate(), @empresaId);

insert into
dbo.Menu
(nombre     ,link        ,menuPadreId,orden,usuarioSys,fechaSys   , empresaId)
values
('Empleados','/empleados', @id         , 1   , 1        , getdate(), @empresaId);

insert into
dbo.Menu
(nombre       ,link        ,menuPadreId,orden,usuarioSys,fechaSys  , empresaId)
values
('Actividades','/actividades'    ,@id         , 1   , 2        , getdate(), @empresaId);

insert into
dbo.Menu
(nombre     ,link        ,menuPadreId,orden,usuarioSys,fechaSys  , empresaId)
values
('Areas'    ,'/areas'    ,@id         , 1   , 2        , getdate(), @empresaId);

insert into
dbo.Menu
(nombre     ,link        ,menuPadreId,orden,usuarioSys,fechaSys  , empresaId)
values
('Invoice'    ,'/factura'    ,@id         , 1   , 2        , getdate(), @empresaId);

insert into
dbo.Menu
(nombre,link,menuPadreId, orden,usuarioSys,fechaSys   , empresaId)
values
('Importadores',''  ,null       , 1    , 1        , getdate(), @empresaId);
set @id = @@identity 

insert into
dbo.Menu
(nombre     ,link        ,menuPadreId,orden,usuarioSys,fechaSys  , empresaId)
values
('ImportarEmpleados'    ,'/importarempleados'    ,@id         , 1   , 2        , getdate(), @empresaId);

insert into
dbo.Menu
(nombre,link,menuPadreId, orden,usuarioSys,fechaSys   , empresaId)
values
('Admin',''  ,null       , 1    , 1        , getdate(), @empresaId);
set @id = @@identity 

insert into
dbo.Menu
(nombre     ,link        ,menuPadreId,orden,usuarioSys,fechaSys  , empresaId)
values
('Menus','/menu', @id         , 1   , 1        , getdate(), @empresaId);

insert into 
dbo.TipoUsuario
(nombre         ,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('administrador',1         ,getdate(),null      ,null, @empresaId);
set @AdminId = @@identity

insert into 
dbo.TipoUsuario
(nombre         ,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Empleado',1         ,getdate(),null      ,null, @empresaId);

declare @tabla1 table(id int identity(1,1), menuId int);
declare @xIni int = 1;
declare @xFin int
insert into @tabla1(menuId)
select menuId from dbo.Menu where 1=1 and empresaId = @empresaId;
select @xFin = count(menuId) from dbo.Menu where 1=1 and empresaId = @empresaId;
while @xIni<=@xFin
	begin
	insert into 
	dbo.TipoUsuarioMenu
	(tipoUsuarioId,menuId,estado)
	select 
	@AdminId,   menuId     ,1 
	from @tabla1 where @xIni = id;
	set @xIni = @xIni + 1
	end

exec spInsertaTipoEmpladoDefecto @empresaId;


insert into
dbo.Area
(nombre,areaPadreId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area1',null      ,1         ,getdate(),null      ,null    ,@empresaId);
set @AreaId = @@IDENTITY

insert into
dbo.Area
(nombre,areaPadreId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area2',@AreaId         ,1         ,getdate(),null      ,null    ,@empresaId);
set @AreaId = @@IDENTITY

insert into
dbo.Area
(nombre,areaPadreId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area3',@AreaId         ,1         ,getdate(),null      ,null    ,@empresaId);
set @AreaId = @@IDENTITY

insert into
dbo.Area
(nombre,areaPadreId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area4',@AreaId         ,1         ,getdate(),null      ,null    ,@empresaId);

insert into
dbo.Area
(nombre,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area5',1         ,getdate(),null      ,null    ,@empresaId);


insert into
dbo.CentroCostos
(nombre,usuarioSys,fechaSys,empresaId)
values
('Pago',1,getdate(),@empresaId);
set @centroCostosId = @@IDENTITY;

insert into 
dbo.Nacionalidad
(nombre, usuarioSys,fechaSys,empresaId)
values('Peruana',1,getdate(),@empresaId);
set @nacionalidadId = @@IDENTITY;

insert into 
dbo.TipoDocumento
(nombre, usuarioSys,fechaSys,empresaId)
values('DNI',1,getdate(),@empresaId);
set @tipoDocumentoId = @@IDENTITY;

select top 1 @nombreempresa = nombre from dbo.Empresa where empresaId = @empresaId

if(@nombreempresa = 'ProgramacionParaAprender')
begin
insert into
dbo.Usuario
(nombreusuario         ,[password],nombres,apellidos,
documento ,idequipo  ,tarjeta    ,centroConstosId,tipoUsuarioId,usuarioSys,fechaSys ,estado,nacionalidadId,tipoDocumentoId, tipoEmpleadoId, empresaId)
values
('admin','123456' ,'luis'  ,'correa' ,
'46464646','46464646','[0000000]',@centroCostosId,@AdminId     ,1         ,getdate(),1     ,@nacionalidadId,@tipoDocumentoId , @tipoEmpleadoId,@empresaId);
set @usuarioId = @@IDENTITY
end
else
begin
insert into
dbo.Usuario
(nombreusuario         ,[password],nombres,apellidos,
documento ,idequipo  ,tarjeta    ,centroConstosId,tipoUsuarioId,usuarioSys,fechaSys ,estado,nacionalidadId,tipoDocumentoId, tipoEmpleadoId, empresaId)
values
('admin'+LOWER (@nombreempresa),'123456' ,'luis'  ,'correa' ,
'46464646','46464646','[0000000]',@centroCostosId,@AdminId     ,1         ,getdate(),1     ,@nacionalidadId,@tipoDocumentoId,@tipoEmpleadoId,@empresaId);
set @usuarioId = @@IDENTITY

end

insert into 
dbo.AreaUsuario
(usuarioId , areaId, fechaInicio,fechaFin  ,estado,usuarioSys,fechaSys)
values
(@usuarioId,@AreaId,  getdate(), getdate() , 1    ,1,getdate())

exec spInsertaActividad @empresaId;

go

-- Objects: StoreProcedure spObtenerActividadesEmpresa 12/04/2020 10:53 am 

create procedure spObtenerActividadesEmpresa
@empresaId int
as
select 
actividadId Ihd,
actividadId actividadId_Ihd,
nombre,
color
from dbo.Actividad
where 1=1
and empresaId = @empresaId
and estado = 1;
go

-- Objects: StoreProcedure spInsertarMarcasDispositivosMarcaciones 9/05/2020 07:37 pm

create procedure spInsertarMarcasDispositivosMarcaciones
@sedeId int
as
declare @dispositivo_id int


insert
into dbo.Dispositivo
(nombre       ,direccionIp  ,marcaId,pushActivo,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado, sedeId)
values
('192.168.253','192.168.253',1      , 1        ,         1, getdate(), null     , null   ,     1, @sedeId)
set @dispositivo_id = @@IDENTITY


--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('08:30','2010-01-04','2010-01-04', @dispositivo_id,@usuarioId, 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('08:30','2010-01-04','2010-01-04', @dispositivo_id,@usuarioId, 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('13:00','2010-01-04','2010-01-04', @dispositivo_id,@usuarioId, 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('14:00','2010-01-04','2010-01-04', @dispositivo_id,@usuarioId, 1        , getdate(), null     , null   , 1)

--insert 
--into dbo.Marcacion
--(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
--values
--('18:30','2010-01-04','2010-01-04', @dispositivo_id,@usuarioId, 1        , getdate(), null     , null   , 1)


go

insert 
into dbo.Marca
(nombre    ,usuarioSys, fechaSys ,usuarioUpd,fechaUpd,estado)
values
('GRANDING', 1        , getdate(),null      ,null    ,1)

declare @sedeId int

insert into
dbo.Sede
(nombre           , estado,usuarioSys,fechaSys)
values
('Cercado de lima',      1, 1        , getdate());
set @sedeId = @@IDENTITY



insert into 
dbo.Empresa
(nombre                    , documento  , estado,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('ProgramacionParaAprender', '123123123', 1     , 1        , getdate(), null     ,null);


exec spInsertarMenu 1;

exec spInsertarMarcasDispositivosMarcaciones @sedeId

insert into 
dbo.Empresa
(nombre                    , documento  , estado,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('CY', '234123123', 1     , 1        , getdate(), null     ,null);

go


insert into 
dbo.SedeEmpresa
(empresaId,sedeId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd,estado)
values
(1        ,1     ,1         ,getdate(),null      ,null    ,1)

insert into 
dbo.SedeEmpresa
(empresaId,sedeId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd,estado)
values
(2        ,1     ,1         ,getdate(),null      ,null    ,1)


insert into
dbo.Contrato
(fechaInicio,fechaFin,usuarioId,diasVacaciones,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values
('2010-01-02','2011-01-01',1,30,1,getdate(),null,null);

insert into 
dbo.HorarioContrato
(horarioId,contratoId,dia          ,usuarioSys,fechaSys  , usuarioUpd,fechaUpd,estado)
values
(1        , 1        , '2010-01-04',1         , getdate(), null      , null   , 1);


go

insert into
Direciones
(ubicacion,latitud,longitud,usuarioSys,fechaSys,estado)
values
('Unidad Morelos, 97001 Mérida, Yuc., México','20.943467601071568','-89.60274137534248',1,getdate(),1)

insert into
Direciones
(ubicacion,latitud,longitud,usuarioSys,fechaSys,estado)
values
('Sta Rosa, 97279 Mérida, Yuc., México','20.938297181414647','-89.61501516379462',1,getdate(),1)

insert into
Direciones
(ubicacion,latitud,longitud,usuarioSys,fechaSys,estado)
values
('San José, 97189 Mérida, Yuc., México','20.938838280208756','-89.607462063220869',1,getdate(),1)

insert into
Direciones
(ubicacion,latitud,longitud,usuarioSys,fechaSys,estado)
values
('Unidad Morelos, 97001 Mérida, Yuc., México','20.944309280394823','-89.60407175101386',1,getdate(),1)







--declare @Usuarios nvarchar(max) = '1,2,3,4';
--declare @xIni int = 0;
--declare @xFin int = 20;
--declare @fechaIni datetime = '2010-01-04';
--declare @UsuarioId int = 1;
--create table #tablaTemp
--(
-- id int identity(1, 1),
-- DiaIni date,
-- DiaFin date
--);

--create table #tablaUsuarioTemp
--(
-- id int identity(1, 1),
-- UsuarioId int
--);

--declare @SQL nvarchar(max)
--set @SQL = 'select usuarioId from Usuario where usuarioId in('+@Usuarios+')';

--insert into #tablaUsuarioTemp(UsuarioId)
--execute sp_executeSQL @SQL;

--while @xIni < @xFin
--	begin 
--	declare @fechaTemp datetime = dateadd(day,@xIni,@fechaIni);
--	declare @count1 int = 0
--	declare @count2 int = 0
--	declare @madrugada int = 0;
--	select 
--	top 1 @madrugada = madrugada
--	from
--	dbo.Horario H
--	inner join dbo.HorarioContrato HC on H.horarioId = HC.horarioId
--	inner join dbo.Contrato C on HC.contratoId = C.contratoId
--	where 1=1
--	and C.usuarioId = @UsuarioId

--	select 
--	@count2 = count(*) 
--	from 
--	dbo.HorarioIncidencia HI
--	inner join HorarioContrato HC on HI.horarioId = HC.horarioId
--	inner join Contrato C on HC.contratoId = C.contratoId
--	where 1=1
--	and C.usuarioId = @UsuarioId

--	select
--	@count1 = count(*)
--	from
--	dbo.Incidencia I
--	inner join dbo.HorarioIncidencia HI on I.incidenciaId = HI.incidenciaId
--	inner join dbo.HorarioContrato HC on HI.horarioId = HC.horarioId
--	inner join dbo.Contrato C on C.contratoId = HC.contratoId
--	where 1=1
--	and dbo.fnExistePrimerMarcacion(C.usuarioId,I.inicio,HC.dia, I.margenInicio) > 0
--	and dbo.fnExisteSegundaMarcacion(C.usuarioId,I.fin, HC.dia, I.margenFin) > 0
--	and C.usuarioId = @UsuarioId;
	

--	select
--	dbo.fnGetExistenMarcaciones(C.usuarioId,I.inicio,I.fin, HC.dia, I.margenInicio, I.margenFin) existe,
--	dbo.fnPrimerMarcacion(C.usuarioId,I.inicio,I.fin, HC.dia, I.margenInicio, I.margenFin) PrimerMarcacion,
--	dbo.fnSegundaMarcacion(C.usuarioId,I.inicio,I.fin, HC.dia, I.margenInicio, I.margenFin) SegundaMarcacion,
--	I.*
--	from
--	dbo.Incidencia I
--	inner join dbo.HorarioIncidencia HI on I.incidenciaId = HI.incidenciaId
--	inner join dbo.HorarioContrato HC on HI.horarioId = HC.horarioId
--	inner join dbo.Contrato C on C.contratoId = HC.contratoId
--	where 1=1
--	and @count1 = @count2
--	and dbo.fnExistePrimerMarcacion(C.usuarioId,I.inicio,HC.dia, I.margenInicio) > 0
--	and dbo.fnExisteSegundaMarcacion(C.usuarioId,I.fin, HC.dia, I.margenFin) > 0
--	and C.usuarioId = @UsuarioId;
--	order by I.inicio asc

--	if(@madrugada = 1)
--		begin 
--		insert 
--		into 
--		#tablaTemp(DiaIni, DiaFin)
--		values(@fechaTemp,dateadd(day,1,@fechaTemp));
--		set @xIni = @xIni + 2;	
--		end
--	else
--	begin 
--		insert 
--		into 
--		#tablaTemp(DiaIni, DiaFin)
--		values(@fechaTemp,@fechaTemp);
--		set @xIni = @xIni + 1;	
--		end
--	end

--select 
--*
--from
--#tablaTemp;
--drop table #tablaUsuarioTemp;
--drop table #tablaTemp;




