use editorialweb;

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