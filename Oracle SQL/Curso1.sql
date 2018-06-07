use test;

--oracle
--describe dbo.Products;

-- sql server
exec sp_columns Products;

select 
ProductID as "Id del producto", 
ProductName as "Nombre del producto"
from dbo.Products;

select 3 * 4 from dual;
select 'Hola mundo' from libros;
select 'Hola mundo' || 'Hola mundo' from libros;
select ('Usuario' || USER || ', el día de hoy es: ' || SYSDATE) as 'Encabezado' FROM DUAL;
select 'I''m Hola mundo' from libros;

select 
libros.nombre as "Nombre de libro",
generos.nombre as "Nombre de genero",
autores.nombre as "Nombre de Autor"
from libros, generos, autores, libroautores
where libros.idgenero = generos.id and
libros.id = libroautores.idlibro and 
libroautores.idautor = autores.id;

go