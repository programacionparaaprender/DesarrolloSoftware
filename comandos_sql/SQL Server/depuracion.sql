--alter procedure sp_mostrar_libros
--@idBook int
--as

--select * from dbo.Books book where book.Id = isnull(@idBook, book.Id)

update  dbo.Books
set Name = 'Prueba' where Id in (5, 6, 7, 8)

delete from dbo.Books where Id in (5, 6, 7, 8)

exec sp_mostrar_libros NULL