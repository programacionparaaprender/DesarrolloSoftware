use TEST;
CREATE TRIGGER insert_Products
on Products 
for insert as
begin
declare @ProductID as int
declare @Price as money
set @ProductID = (select ProductID from inserted)
set @Price = (select Price from inserted)
update Products 
set Price = Price + @Price
where ProductID like @ProductID
end