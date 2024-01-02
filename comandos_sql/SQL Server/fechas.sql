
declare 
@year varchar(20)
,@moth varchar(20)
,@day varchar(20)

set @day = datepart( d, getdate())
set @moth = datepart( m, getdate())
set @year = datepart( yyyy, getdate())

select 
(select dbo.FN_AGREGACEROS(@day))
+(select dbo.FN_AGREGACEROS(@moth))
+(select dbo.FN_AGREGACEROS(@year))

select convert(varchar,getdate(),112)

