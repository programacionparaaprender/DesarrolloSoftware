create procedure dbo.spInsertarActualizarProyectos
@id int,
@nombre nvarchar(80)
as
merge dbo.proyectos H
using( 
select id as id, 
@nombre as nombre 
from dbo.users 
where 1=1 and id = @id
)  HT on HT.id = H.user_id
when matched then
update set 
nombre = @nombre,
updated_at = getdate()
when not matched then
insert(user_id,nombre,created_at)
values(HT.id, @nombre, getdate());