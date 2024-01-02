Set Schema "BASEDEDATOS";

ALTER FUNCTION "fn_funcion_2"(IN im_var1 INT)
RETURNS result NVARCHAR(100)
LANGUAGE SQLSCRIPT  
SQL SECURITY INVOKER AS
BEGIN

	SELECT CASE WHEN 
	(
	select COUNT(*)  
	from
	RIN21
	where 1=1
	and "RefObjType"=-1
	and "DocEntry" = :im_var1
	limit 1
	)= 0 
	THEN '' ELSE 
	
	(
		select "ExtDocNum"  --'H CASE WHEN (SELECT COUNT(*) FROM :COMP) > 0 THEN 'HOLA 2' ELSE 'HOLA' END INTO result -- MAX("ExtDocNum") 
		from
		RIN21
		where 1=1
		and "RefObjType"=-1
		and "DocEntry" = :im_var1
		limit 1
	)
	END INTO  result FROM DUMMY;
END;
--SELECT "BASEDEDATOS"."fn_llamada" (247) FROM DUMMY;
--SELECT "BASEDEDATOS"."fn_llamada_2" (247) FROM DUMMY;