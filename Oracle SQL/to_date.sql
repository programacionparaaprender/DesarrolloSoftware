
--https://elbauldelprogramador.com/plsql-declaracion-de-variables/
--https://elbauldelprogramador.com/plsql-procedimientos-y-funciones/
--creo una variable de tipo varchar

alter session set nls_date_format = 'DD-MON-RR HH24:MI:SS';
select TO_DATE('25-12-2010 18:03:45', 'DD-MM-YYYY HH24:MI:SS') from dual;
select TO_DATE('25-DEC-2010') from dual;

declare l_mensaje number(6,0);
begin
SELECT nvl( max(employee_id),0)+1 into l_mensaje from employees where 1=1;
end;
SELECT * from employees where 1=1;
--and employee_id = 200;
--and last_name = 'Correa'
--and department_id in (50, 80)
--order by commission_pct asc, last_name desc;


--use test;

--oracle
--describe dbo.Products;

--substr oracle
--substring sql server

-- sql server
--exec sp_columns Products;

-- where idlibro is null en oracle



--select 
--ProductID as "Id del producto", 
--ProductName as "Nombre del producto"
--from dbo.Products;

--select 3 * 4 from dual;
--select 'Hola mundo' from libros;
--select 'Hola mundo' || 'Hola mundo' from libros;
--select ('Usuario' || USER || ', el día de hoy es: ' || SYSDATE) as 'Encabezado' FROM DUAL;
--select 'I''m Hola mundo' from libros;

--select 
--libros.nombre as "Nombre de libro",
--generos.nombre as "Nombre de genero",
--autores.nombre as "Nombre de Autor"
--from libros, generos, autores, libroautores
--where libros.idgenero = generos.id and
--libros.id = libroautores.idlibro and 
--libroautores.idautor = autores.id;

--go