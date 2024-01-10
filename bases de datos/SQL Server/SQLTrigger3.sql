CREATE TRIGGER insert_Autores
on autores
for insert as
begin
declare @Nombre as varchar(255)
declare @Apellido as varchar(255)
set @ProductID = (select ProductID from inserted)
set @Price = (select Price from inserted)
update Products 
set Price = Price + @Price
where ProductID like @ProductID
end