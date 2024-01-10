Set Schema "BASEDEDATOS";

ALTER FUNCTION "fn_funcion"(in im_var1 INT)
RETURNS result nvarchar(100)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER AS
BEGIN
DECLARE count_temp int;

select count(*) into count_temp
from
INV21
where 1=1
and "RefObjType"=-1
and "DocEntry" = :im_var1
limit 1;

if :count_temp > 0
then
select "ExtDocNum" into result
from
INV21
where 1=1
and "RefObjType"=-1
and "DocEntry" = :im_var1
limit 1;
else
result= '';
end if;

END;