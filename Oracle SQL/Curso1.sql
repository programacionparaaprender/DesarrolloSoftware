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

go