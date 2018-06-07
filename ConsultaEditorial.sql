use editorialweb;

exec sp_columns autores;

select 
CONVERT (date, SYSDATETIME())  
    ,CONVERT (date, SYSDATETIMEOFFSET())  
    ,CONVERT (date, SYSUTCDATETIME())  
    ,CONVERT (date, CURRENT_TIMESTAMP)  
    ,CONVERT (date, GETDATE())  
    ,CONVERT (date, GETUTCDATE())
from dual;

--pendiente estudiar
--to_char

select 
CONVERT(VARCHAR(10),9.85)
from dual;


select 
sign(9.8), 
sign(-32.85), 
sign(0), 
sign(5)
from dual;

select 
power(7, 2), 
power(10, 3)
from dual;

select log10(2.7), log(2.7, 10)
from dual;

select floor(9.8), floor(-32.85), floor(0), floor(5)
from dual;

select exp(1)
from dual;

--ceil en oracle
--CEILING en sql server

select CEILING(9.8), CEILING(-32.85), CEILING(0), CEILING(5)
from dual;

-- acos, asen, cos, sen, atan, tan
select 
top(1)
acos(-1), acos(0), acos(1)
from representantes;

select 
top(1)
abs(-52), abs(0), abs(52)
from representantes;

select top(1) replace('99999999', '9', '86') from representantes;

select top(1) replace('downtown', 'downtown', 'up') from representantes;

--replace en oracle tambíen
-- palabra, letras a sustituir, letras a colocar
select top(1) replace('downtown', 'down', 'up') from representantes;

--lpad
select TOP(1) left('cadena', 10) from representantes;

--rpad en oracle
select TOP(1) right('cadena', 10) from representantes;

select 
upper(representantes.nombre + ' ' + representantes.apellido) as 'Nombre y Apellido'
from representantes;

select 
lower(representantes.nombre + ' ' + representantes.apellido) as 'Nombre y Apellido'
from representantes;

select 
representantes.nombre + ' ' + representantes.apellido as 'Nombre y Apellido'
from representantes;

select 
CONCAT(representantes.nombre, CONCAT(' ', representantes.apellido)) as 'Nombre y Apellido'
from representantes
where 
CHARINDEX('Ch', CONCAT(representantes.nombre, CONCAT(' ', representantes.apellido))) = 1;

-- top que salga la primera solamente
SELECT TOP(1) 
CHARINDEX('is', 'This is a string'),
CHARINDEX('is', 'This is a string', 4) 
FROM representantes;  

-- oracle length
-- sql server len

select
representantes.nombre,
len(representantes.nombre) as "Cantidad de digitos"
from representantes;

select 
count(representantes.nombre)
from representantes;

-- top que salga la primera solamente
SELECT TOP(1) 
'is'  as 'Palabra',
CHARINDEX('is',
SUBSTRING('This is a string', CHARINDEX('is', 'This is a string'), len('This is a string'))) as 'Donde esta',
SUBSTRING('This is a string', CHARINDEX('is', 'This is a string'), len('This is a string')) as 'Oración'
FROM representantes;

-- top que salga la primera solamente
SELECT TOP(1) CHARINDEX('is', 'This is a string') FROM representantes;  

--instr en oracle
-- charindex en sql server
--- letra, palabra retorna posición de donde aparece por primera vez
select CHARINDEX('l', representantes.nombre), representantes.nombre from representantes;

select 
CONCAT(representantes.nombre, CONCAT(' ', representantes.apellido)) as 'Nombre y Apellido'
from representantes
where 
SUBSTRING(CONCAT(representantes.nombre, CONCAT(' ', representantes.apellido)), 1, 15)
 = 'Christian Yanez'
order by representantes.nombre asc;

select 
CONCAT(representantes.nombre, CONCAT(' ', representantes.apellido)) as 'Nombre y Apellido'
from representantes
where 
CONCAT(representantes.nombre, CONCAT(' ', representantes.apellido)) = 'Christian Yanez'
order by representantes.nombre asc;

-- cadena, inicio, longitud de la cadena
--select SUBSTRING(10000-8, 3, 2) from dual;
--select SUBSTRING(SYSDATE, 3, 2) from dual;
select SUBSTRING('Cadena muy larga de ejemplo', 10, 7) from representantes;
select SUBSTRING('Cadena muy larga de ejemplo', 10, 27) from representantes;

select 
CONCAT(representantes.nombre, CONCAT(' ', representantes.apellido)) as 'Nombre y Apellido'
from representantes
order by representantes.nombre asc;

select 
* from libros 
where 
libros.idnivel in (2, 12)
order by libros.nombre desc;

select 
* from libros, libroautores, autores
where 
libros.id = libroautores.idlibro and
libroautores.idautor = autores.id
order by 
libros.nombre asc;

select 
* from libros, libroautores, autores
where 
libros.id = libroautores.idlibro and
libroautores.idautor = autores.id
order by 
libros.nombre desc;

select 
* from libros, libroautores, autores
where 
libros.id = libroautores.idlibro and
libroautores.idautor = autores.id;

select 
* from representantes
where representantes.nombre like 'z%s';

select 
* from representantes
where representantes.nombre like '%u%';

select 
* from libros 
where libros.idnivel between 2 and 12;

select 
* from libros 
where libros.idnivel in (2, 12);

select 
* from libros 
where libros.precio != 500;

select 
(libros.nombre + ' ' + libros.descripcion) as "Nombre de libro y Descripción",
generos.nombre as "Nombre de genero",
autores.nombre as "Nombre de Autor"
from libros, generos, autores, libroautores
where libros.idgenero = generos.id and
libros.id = libroautores.idlibro and 
libroautores.idautor = autores.id;

select 
libros.nombre as "Nombre de libro", 
descripcion, 
autores.nombre as "Nombre de autor" 
from libros,libroautores,autores 
where libros.id = libroautores.idlibro and libroautores.idautor = autores.id;

select * from libroautores;
select distinct idlibro from libroautores;
select distinct id, idlibro from libroautores;

select 'Hola mundo' + 'Hola mundo' from libros;
select 'I''m Hola mundo' from libros;

select 
libros.nombre as "Nombre de libro",
generos.nombre as "Nombre de genero",
autores.nombre as "Nombre de Autor"
from libros, generos, autores, libroautores
where libros.idgenero = generos.id and
libros.id = libroautores.idlibro and 
libroautores.idautor = autores.id;

