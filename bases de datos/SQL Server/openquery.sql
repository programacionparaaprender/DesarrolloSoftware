--configurar los linked servers

select
*
from
openquery([179.32.200.030],'
select
top 10
*
from
DB.dbo.tabla');