alter procedure spRecursividad
@area_id int = 1 
as  
declare @valor int = 0  
 
select @valor = 1 from dbo.AREA A
	inner join dbo.AreaUsuario AU on A.areaId = AU.areaId and AU.estado = 1
	where 1=1  
	and A.areaId = @area_id  

declare @tabla3 table(id int identity(1,1), areaId int)
 
declare @tabla table(id int identity(1,1), areaId int)
	insert into @tabla(areaId)
	select areaId from dbo.AREA A
	where 1=1  
	and A.areaPadreId = @area_id
	and A.estado = 1
insert into @tabla3(areaId)
select areaId from @tabla

declare @count int = 0
select @count = count(*) from @tabla
while(
	@valor <> 1
	and
	@count > 0
)
begin	
	set @count = 0;
	insert into @tabla3(areaId)
	select areaId from @tabla
	select @valor = 1 from @tabla A  
	inner join dbo.AreaUsuario AU on A.areaId = AU.areaId and AU.estado = 1  
	where 1=1  
	select @count = count(*) from dbo.AREA A
	inner join @tabla T on A.areaPadreId = T.areaId 
	where 1=1  
	and A.estado = 1 
	if(
		@count > 0
	)
	begin
		set @count = 0;
		declare @tabla2 table(id int identity(1,1), areaId int)
		insert into @tabla2(areaId)
		select A.areaId from dbo.AREA A
		inner join @tabla T on isnull(A.areaPadreId,0) = T.areaId 
		where 1=1  
		and A.estado = 1  
		delete from @tabla
		--select areaId from @tabla
		insert into @tabla(areaId)
		select areaId from @tabla2
		select @count = count(*) from @tabla
	end
end
select * from @tabla3
select @valor;