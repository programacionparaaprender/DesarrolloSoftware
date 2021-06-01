Create procedure "BASEDEDATOS"."sp_mostrarFacturas" ()
as
begin
select 
*
from 
"BASEDEDATOS"."OINV";
end;