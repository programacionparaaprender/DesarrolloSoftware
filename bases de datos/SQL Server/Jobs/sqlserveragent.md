
##


### habilitar sql server agent
>- Ir a SQL Server Configuration y levantarlo si esta detenido, eso seria
>- Select serverproperty('Edition')
>- Select IS_SRVROLEMEMBER('Sysadmin')

### crear un job
>- https://www.respuestasit.com.mx/2020/05/crear-un-job-tarea-automatica-en-sql.html

### script
use pruebas
go

create table EjemploJob
(id int primary key identity,
descripcion varchar(max),
run_date datetime
)