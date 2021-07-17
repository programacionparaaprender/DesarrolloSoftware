Set Schema "BASEDEDATOS";


Create procedure "sp_mostrarFacturas" ()
as
begin
select 
*
from 
OINV;

end;