use TEST;

declare @table table(
id int identity,
nroItem int,
total decimal 
)
insert @table select ProductID,Price from dbo.Products

declare @valor int= (select count(*) from @table)
declare @contador int = 1
while(@valor>=@contador)
begin 
declare @new_item int =(select nroItem from @table)
declare @total decimal(18,2)=(select sum(total) from @table)
declare @porcen decimal(18,2)=((select total from @table where NroItem=@contador)/@total)*100
update dbo.Products
set Price=@porcen
where
ProductID=@new_item
set @contador+=1
end