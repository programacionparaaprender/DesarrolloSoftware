
--drop database Ordenanza;
--create database Ordenanza;

use Ordenanza;

create table Menu
(
	menuId int identity(1, 1),
	nombre varchar(100),
	link varchar(100),
	menuPadreId int null,
	simbolo varchar(1),
	orden int,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKmenuId PRIMARY KEY (menuId)
);

create table TipoEmpleado
(
	tipoEmpleadoId int identity(1, 1),
	nombre varchar(100),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKtipoEmpleadoId PRIMARY KEY (tipoEmpleadoId)

);

create table Empresa
(
	empresaId int identity(1, 1),
	nombre varchar(100),
	documento varchar(100),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKempresaId PRIMARY KEY (empresaId)
);

create table Sede
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

create table SedeEmpresa
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
	CONSTRAINT FKSedeempresaId FOREIGN KEY (empresaId) REFERENCES Empresa(empresaId)
);

create table Area 
(
	areaId int identity(1, 1),
	nombre varchar(30),
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
	permisos nvarchar(max),
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

create table AreaUsuario
(
	areaUsuarioId int identity(1, 1),
	usuarioId int,
	areaId int, 
	fechaInicio date,
	fechaFin date,
	estado int default 1,
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

create table TipoHorasExtras
(
	tipoHorasExtrasId int identity(1, 1),
	nombre varchar(30),
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKtipoHorasExtrasId PRIMARY KEY (tipoHorasExtrasId)
);

create table HorasExtras
(
	horasExtrasId int identity(1, 1),
	incidenciaId int,
	minutos int,
	horarioContratoId int,
	nivelAprobacion int,
	tipoHorasExtrasId int,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT PKhorasExtrasId PRIMARY KEY (horasExtrasId),
	CONSTRAINT FKTipoHorasExtrastipoHorasExtrasId FOREIGN KEY (tipoHorasExtrasId) REFERENCES TipoHorasExtras(tipoHorasExtrasId),
	CONSTRAINT FKHorasExtrasincidenciaId FOREIGN KEY (incidenciaId) REFERENCES Incidencia(incidenciaId),
	CONSTRAINT FKHorasExtrashorarioContratoId FOREIGN KEY (horarioContratoId) REFERENCES HorarioContrato(horarioContratoId)
);

create table Compensaciones
(
	compensacionesId int identity(1, 1),
	incidenciaId int,
	horarioContratoId int,
	nivelAprobacion int,
	usuarioSys int not null,
	fechaSys datetime not null,
	usuarioUpd int null,
	fechaUpd datetime null,
	estado int default 1,
	CONSTRAINT compensacionesId PRIMARY KEY (compensacionesId),
	CONSTRAINT FKCompensacionesincidenciaId FOREIGN KEY (incidenciaId) REFERENCES Incidencia(incidenciaId),
	CONSTRAINT FKCompensacioneshorarioContratoId FOREIGN KEY (horarioContratoId) REFERENCES HorarioContrato(horarioContratoId)
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

-- Objects: StoreProcedure spObtenerUsuariosPorArea 28/03/2020 18:16

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

-- Objects: StoreProcedure spObtenerUsuariosPorArea 28/03/2020 18:16

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

-- Objects: StoreProcedure spObtenerUsuariosPorArea 28/03/2020 18:16

create procedure spObtenerUsuariosPorArea
@empresaId int,
@areaId int,
@centroCostoId int,
@tipoEmpleadoId int
as
select
U.usuarioId usuarioId_Ihd,
apellidos + ', ' + nombres nombres,
U.documento,
isnull(CC.nombre,'No pertenece') CentroCosto,
TU.nombre TipoUsuario,
N.nombre Nacionalidad,
TD.nombre TipoDocumento,
tipoEmpleadoId,
A.nombre Area,
E.nombre Empresa
from 
Usuario U
inner join AreaUsuario AU on U.usuarioId = AU.usuarioId and AU.estado = 1
inner join Area A on AU.areaId = A.areaId and A.estado = 1
inner join Empresa E on U.empresaId = E.empresaId and E.estado = 1
inner join TipoUsuario TU on U.tipoUsuarioId = TU.tipoUsuarioId
inner join Nacionalidad N on U.nacionalidadId = N.nacionalidadId
inner join TipoDocumento TD on U.tipoDocumentoId = TD.tipoDocumentoId
left join CentroCostos CC on U.centroConstosId = CC.centroConstosId and CC.estado = 1
where 1=1
and U.estado = 1
and U.empresaId = @empresaId
and A.areaId = 
case when @areaId = 0 then A.areaId else @areaId end
and isnull(U.centroConstosId,0) = 
case when @centroCostoId = 0 then isnull(U.centroConstosId, 0) else @centroCostoId end
and U.tipoEmpleadoId = 
case when @tipoEmpleadoId = 0 then U.tipoEmpleadoId else @tipoEmpleadoId end;

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
@permisos nvarchar(max) = 'abcd'
as
select
menuId,
nombre,
link,
isnull(menuPadreId,0) menuPadreId,
simbolo,
orden,
usuarioSys,
fechaSys,
usuarioUpd,
fechaUpd,
estado
from
Menu M
where 1=1
and @permisos like '%'+M.simbolo+'%'
and M.estado = 1;

go

create procedure spObtenerEmpresasCombo
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

insert into
dbo.Menu
(nombre,link,menuPadreId, simbolo, orden,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('Home',''  ,null       , 'a'    , 1    , 1        , getdate(), null     ,null);

insert into
dbo.Menu
(nombre      ,link,menuPadreId,simbolo,orden,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('HelloWorld','/' ,1          , 'b'   , 1   , 1        , getdate(), null     ,null);


insert into
dbo.Menu
(nombre         ,link,menuPadreId,simbolo,orden,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('Mantenimiento',''  ,null       , 'c', 2, 1        , getdate(), null     ,null);

insert into
dbo.Menu
(nombre     ,link        ,menuPadreId ,simbolo,orden,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('Empleados','/empleados', 3          , 'd'   , 1   , 1        , getdate(), null     ,null);


insert into 
dbo.Empresa
(nombre                    , documento  , estado,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('ProgramacionParaAprender', '123123123', 1     , 1        , getdate(), null     ,null);

insert into 
dbo.Empresa
(nombre                    , documento  , estado,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('CY', '234123123', 1     , 1        , getdate(), null     ,null);


insert into
dbo.Sede
(nombre           , estado,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd)
values
('Cercado de lima',      1, 1        , getdate(), null     ,null);

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
dbo.CentroCostos
(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values
('Pago',1,getdate(),null,null);

insert into
dbo.Area
(nombre,areaPadreId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area1',null      ,1         ,getdate(),null      ,null    ,1);

insert into
dbo.Area
(nombre,areaPadreId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area2',1         ,1         ,getdate(),null      ,null    ,1);


insert into
dbo.Area
(nombre,areaPadreId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd, empresaId)
values
('Area3',2         ,1         ,getdate(),null      ,null    ,1);



insert into 
dbo.TipoUsuario
(nombre         ,usuarioSys,fechaSys ,usuarioUpd,fechaUpd,permisos)
values
('Administrador',1         ,getdate(),null      ,null    ,'abcd');


insert into 
dbo.Nacionalidad
(nombre)
values('Peruana');

insert into 
dbo.TipoDocumento
(nombre)
values('DNI');



insert into
dbo.TipoEmpleado
(nombre, estado,usuarioSys,fechaSys ,usuarioUpd,fechaUpd)
values
('Ejecutivo', 1,1         ,getdate(),null      ,null);

insert into
dbo.TipoEmpleado
(nombre, estado,usuarioSys,fechaSys ,usuarioUpd,fechaUpd)
values
('Empleado', 1, 1         ,getdate(),null      ,null);


insert into
dbo.TipoEmpleado
(nombre, estado,usuarioSys,fechaSys ,usuarioUpd,fechaUpd)
values
('Obrero',    1,         1,getdate(),null      ,null);


insert into
dbo.Usuario
(nombreusuario,[password],nombres,apellidos,documento ,idequipo  ,tarjeta    ,centroConstosId,tipoUsuarioId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd,estado,nacionalidadId,tipoDocumentoId, tipoEmpleadoId, empresaId)
values
('admin'      ,'123456' ,'luis'  ,'correa' ,'46464646','46464646','[0000000]',1              ,1            ,1         ,getdate(),null      ,null    ,1     ,1             ,1              , 1             ,1);


insert into 
dbo.AreaUsuario
(usuarioId, areaId, fechaInicio,fechaFin  ,estado)
values
(1        ,       1,  getdate(), getdate(), 1)






insert into 
dbo.Horario(nombre,madrugada,color,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values('HorarioTrabajo', 0, 'background-color:black',1,getdate(),null,null);

insert into 
dbo.TipoIncidencia
(nombre   ,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values
('Trabajo',1         ,getdate(),NULL     ,NULL);

insert into 
dbo.TipoIncidencia
(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values
('Descanso refrigerio',1,getdate(),NULL,NULL);

insert into 
dbo.TipoIncidencia
(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values
('Horas extras',1,getdate(),NULL,NULL);

insert into 
dbo.TipoIncidencia
(nombre,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values
('Compensación',1,getdate(),NULL,NULL);

insert into 
dbo.Incidencia
(nombre          ,color,tipoIncidenciaId,usuarioSys,fechaSys,usuarioUpd,fechaUpd)
values
('Trabajo mañana','background-color:blue',1,1,getdate(),null,null);

insert into 
dbo.Incidencia
(nombre     ,color                 ,tipoIncidenciaId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd)
values
('Rerigerio','background-color:red',2               ,1         ,getdate(),null      ,null);


insert into 
dbo.Incidencia
(nombre         ,color                       ,tipoIncidenciaId,usuarioSys,fechaSys ,usuarioUpd,fechaUpd)
values
('Trabajo tarde','background-color:orangered',               1,         1,getdate(),null      ,null);

insert into 
dbo.HorarioIncidencia
(horarioId,incidenciaId,inicio ,    fin, margenInicio, margenFin)
values
(1        ,1           ,'08:30','13:00',           30,30);

insert into 
dbo.HorarioIncidencia
(horarioId,incidenciaId,inicio ,    fin, margenInicio, margenFin)
values
(1        ,           2,'13:00','14:00',           30,30);

insert into 
dbo.HorarioIncidencia
(horarioId,incidenciaId,inicio ,    fin, margenInicio, margenFin)
values
(1        ,3           ,'14:00','18:30',           30,30);


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


insert 
into dbo.Marca
(nombre    ,usuarioSys, fechaSys ,usuarioUpd,fechaUpd,estado)
values
('GRANDING', 1        , getdate(),null      ,null    ,1)

insert
into dbo.Dispositivo
(nombre       ,direccionIp  ,marcaId,pushActivo,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado, sedeId)
values
('192.168.253','192.168.253',1      , 1        ,         1, getdate(), null     , null   ,     1, 1)

insert 
into dbo.Marcacion
(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
values
('08:30','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

insert 
into dbo.Marcacion
(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
values
('08:30','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

insert 
into dbo.Marcacion
(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
values
('13:00','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

insert 
into dbo.Marcacion
(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
values
('14:00','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)

insert 
into dbo.Marcacion
(hora   ,dia         ,fecha       ,dispositivoId,usuarioId,usuarioSys,fechaSys  ,usuarioUpd,fechaUpd,estado)
values
('18:30','2010-01-04','2010-01-04', 1           , 1       , 1        , getdate(), null     , null   , 1)






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




