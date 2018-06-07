use editorialweb;

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

