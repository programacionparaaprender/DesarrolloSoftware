create procedure spMostrarUsuarios
@usuario int
as
select
*
from
dbo.users U
where 1=1
and 
@usuario =
case when @usuario <> 0 then
U.id else 0 end


--exec spMostrarUsuarios 0